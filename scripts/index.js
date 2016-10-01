//init
if(localStorage.getItem('id_token')) {
  var id = localStorage.getItem('id_token')
  axios.defaults.headers.common['Authorization'] = 'Bearer ' + id
  axios.defaults.baseURL = 'http://localhost:8000/api'
}

// tag
import './../templates/list.tag'
import './../templates/detail.tag'
import './../templates/marks.tag'
import './../templates/search.tag'
import './../templates/create.tag'
import './../templates/login.tag'

// js
import './routes.js'
import './../node_modules/bootstrap/dist/js/bootstrap.min.js'

// css
import './../styles/index.scss'
import './../node_modules/bootstrap/dist/css/bootstrap.min.css'

