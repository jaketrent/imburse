const massive = require('massive')

exports.find = function find(db) {
  return function (done) {
    db.stories.find({}, (err, stories) => {
      if (err) console.error('Error querying stories', err)
      done(err, stories)
    })
  }
}
