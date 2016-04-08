const db = require('./db')

exports.list = function* list() {
  const stories = yield db.find(this.app.context.db)
  this.body = stories
}
