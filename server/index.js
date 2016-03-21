const logger = require('koa-logger')
const koa = require('koa')
const route = require('koa-route')

const render = require('./common/render')

const app = koa()
app.name = 'imburse'

app.use(logger())
app.use(route.get('/', home))

function* home() {
  this.body = yield render('home.jade')
}

app.listen(3000)
