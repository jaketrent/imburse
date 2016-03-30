const path = require('path')

module.exports = {
  entry: path.join(__dirname, '..', '..', 'client', 'index.js'),
  output: {
    path: path.join(__dirname, '..', '..', 'dist'),
    filename: 'index.js',
    publicPath: '/static/'
  },
  module: {
    loaders: [{
      test: /\.js$/,
      loaders: ['babel'],
      excludes: /node_modules/
    }]
  }
}
