const koa = require('koa')
const route = require('koa-route')

const ctrls = require('./controllers')

const app = koa()
app.use(route.get('/', ctrls.list))

module.exports = app
