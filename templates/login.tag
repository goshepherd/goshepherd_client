import Auth0Lock from 'auth0-lock';


<login>
  <button id="login" if="{ !isLogin }" onclick="{ auth }" class="btn btn-primary pull-xs-right">Log in</button>
  <div id="user" class="pull-xs-right dropdown" if="{ isLogin }">
    <a class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      <img id="avatar" src="/nouser.png" class="img-rounded">
    </a>
    <div class="dropdown-menu dropdown-menu-right">
      <h6 id="nickname" class="dropdown-header"></h6>
      <a class="dropdown-item" href="#">Created</a>
      <a class="dropdown-item" href="#">Starred</a>
      <div class="dropdown-divider"></div>
      <a id="logout" onclick="{ logout }" class="dropdown-item" href="#">Logout</a>
    </div>
  </div>

  <style scoped>
    #avatar {
      height: 25px;
    }
    #user {
      display: inline-block;
      padding-left: 10px;
    }
  </style>


  const lock   = new Auth0Lock('MvtbOhtLgPknvr5yePqikdiAeL5dAmi4', 'youkyll.auth0.com')
  let id_token = localStorage.getItem('id_token')
  this.isLogin = !!id_token

  lock.on('authenticated', (authResult) => {
      this.isLogin = true
      lock.getProfile(authResult.idToken, function(error, profile) {
        if (error) {
          return
        }
        localStorage.setItem('id_token', authResult.idToken)
        retrieve_profile()
      })
      this.update()
  })


  let retrieve_profile = () => {
    let id_token = localStorage.getItem('id_token')
    if (id_token) {
      lock.getProfile(id_token, (err, profile) => {
        if (err) {
          return alert('There was an error getting the profile: ' + err.message)
        }

        show_profile_info(profile)
      })
    }
  }

  let show_profile_info = (profile) => {
    var avatar = this.avatar
    avatar.src = profile.picture
    this.nickname.innerHTML = profile.nickname
    console.log(profile)
  }

  this.logout = (e) => {
    localStorage.removeItem('id_token')
    this.isLogin = false
  }

  this.auth = (e) => {
    lock.show()
  }

  if(this.isLogin) {
    retrieve_profile()
  }
</login>