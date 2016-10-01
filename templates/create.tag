import './../templates/live-editor.tag'

<create>
  <h1>new post</h1>
  <form onsubmit="{ add }">
    <div class="row">
      <div class="col-xs-6">
        <div class="error" if={ error }>
          { error.message }
        </div>
        <input name="title" type="text" value="{ post.Title }" class="form-control form-title" placeholder="title">
        <br>
      </div>
      <div class="col-xs-6">
        <select name="folder_id" class="form-control">
          <option value="">choose folder</option>
          <option each="{ folders }" value="{ Id }" selected="{ Id == post.Id }">{ name }</option>
        </select>
      </div>
     </div>
      <live-editor default="{ post.Content }"></live-editor>


    <button type="submit" class="btn btn-primary pull-right">submit</button>
    <input if="{ post.Id }" type="hidden" name="post_id" value="{ post.Id }">
  </form>

  if(this.opts.postId) {
    this.post = {
      Id: 1,
      Title: 'テスト',
      Content: '# test - a - a'
    }
  }

  this.folders = [
    {
      Id: 1,
      name: 'テスト'
    },
    {
      Id: 2,
      name: '日報'
    }
  ]

  this.add = (e) => {

    riot.route('/')
    return false
  }

</create>
