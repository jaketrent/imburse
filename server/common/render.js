const views = require('co-views')

module.exports = views(__dirname + '/../views', {
  map: { jade: 'jade' }
})
