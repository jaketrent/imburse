require('dotenv').config()

const logger = require('koa-logger')
const koa = require('koa')
const mount = require('koa-mount')
const route = require('koa-route')

const db = require('./db')
const render = require('./common/render')
const static = require('./static')
const stories = require('./stories')

const app = koa()
app.name = 'imburse'

app.use(logger())
app.use(mount('/static', static))
app.use(mount('/api/stories', stories))
app.use(route.get('/', home))

function* home() {
  this.body = yield render('home.jade')
}

db.connect((_, db) => {
  app.context.db = db
  app.listen(3000)
})
