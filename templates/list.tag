<list>
  <div class="row">
    <div class="col-xs-12">
      <div class="col-xs-2">
        <h3>Folders</h3>
          <div class="list-group">
            <a href="/?folder_id=1" class="list-group-item">
              aaa
            </a>
          </div>
      </div>
      <div class="col-xs-10">
        <h2>テスト</h2>
        <div each="{ posts }" class="list-group-item list-group-item-action">
          <h4 class="list-group-item-heading"><a href="/post/{ Id }">{ Title }</a></h4>
          <p class="list-group-item-text">{ Content }</p>
          <p class="list-group-item-text"><small class="text-muted">Updated by yuki08180102 { Updated }</small></p>
        </div>
      </div>
      </div>
  </div>

  axios.get('/posts').then((res) => {
    this.posts = res.data
    this.update()
  })

</list>

