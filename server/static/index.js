const koa = require('koa')
const webpackDevMiddleware = require('koa-webpack-dev-middleware')
const webpack = require('webpack')

const config = require('./webpack.config')

const app = koa()
app.use(webpackDevMiddleware(webpack(config)))

module.exports = app
