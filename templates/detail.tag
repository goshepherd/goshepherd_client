<detail>
  <h1>{ post.Title }</h1>
  <hr>
  <i class="fa fa-folder-o"></i> { post.Folder }
  { post.Updated }
  <hr>
  <content default="{ post.Title }">{ post.Content }</content>
  <hr>
  <a href="/post/{ post.Id }/delete" class="btn btn-warning pull-right" role="button" onclick="{ del }">Delete</a>
  <a href="/post/{ post.Id }/edit" class="btn btn-primary pull-right" role="button">Edit</a>

  this.post = {
    Id: 1,
    Title: 'test',
    Folder: 'aaa',
    Content: 'content',
    Updated: '2015-01-01 12:00'
  }

  function del(e) {
    confirm('Are you sure you want to delete this?')
  }
</detail>
