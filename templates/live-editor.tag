const marked = require('marked')

<live-editor>
      <div class="col-xs-6">
        <textarea name="content" class="form-control" placeholder="write words..." style="resize:none" oninput="{ preview }">{ post.Content || content.default }</textarea>
      </div>
      <div class="col-xs-6">
        <div class="card">
            <p class="card-block" name="previewmarkdown"></p>
        </div>
      </div>

  <style scoped>
    div.col-xs-6 {
      padding: 0;
      margin: 0;
    }

    textarea {
      height: 30em;
    }

    div.card {
      height: 30em;
    }
  </style>

  this.on('mount', () => {
    this.content.default = 'test'
    this.previewmarkdown.innerHTML = marked(this.content.value)
  })

  this.preview = (e) => {
    this.previewmarkdown.innerHTML = marked(e.target.value)
  }
</live-editor>

