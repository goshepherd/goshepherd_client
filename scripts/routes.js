let routes = {
  login() {
    riot
  },
  home() {
    let q = riot.route.query()
    riot.mount('div#main', 'list', {
      fw: q.fw
    })
  },
  post(id) {
    riot.mount('div#main', 'detail', {
      postId: id,
    })
  },
  create() {
    riot.mount('div#main', 'create')
  },
  edit(id) {
    riot.mount('div#main', 'create', {
      postId: id,
    })
  },
  marks() {
    riot.mount('div#main', 'marks')
  }
}

riot.route.base('/')
{
  let route = riot.route.create()

  route('post/*', routes.post)
  route('create', routes.create)
  route('post/*/edit', routes.edit)
  route('marks', routes.marks)
  route('..', routes.home)
}

riot.route.start(true)

riot.mount('search')
riot.mount('login')