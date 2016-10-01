<marks>
  <h1>Folders</h1>
      <form class="form-inline bd-form" method="POST" action="/mark/new">
        <fieldset class="form-group">
          <input type="text" class="form-control" name="folder_name" placeholder="New Folder">
           <span class="form-group-btn">
             <button type="submit" class="btn btn-secondary" type="button"><i class="fa fa-pencil"></i></button>
           </span>
        </fieldset>
      </form>
      <br>

      <div each="{ folders }" class="list-group-item">
        <h4 class="list-group-item-heading">
          <a href="/posts?f_id={ Id }">{ Name }</a>
          <a href="/marks/{ Id }/delete" onclick="{ del }" class="btn btn-primary-outline pull-xs-right"><i class="fa fa-trash-o"></i></a>
          <span class="label label-default label-pill pull-xs-right">{ Count }</span>
        </h4>
      </div>
  <style scoped>
  </style>

  this.folders = [
    {
      Id: 1,
      Name: 'aaa',
      Count: 60
    },
    {
      Id: 2,
      Name: 'aaa',
      Count: 60
    },
  ]

  this.del = (e) => {
    confirm('Are you sure you want to delete this folder?')
  }
</marks>

