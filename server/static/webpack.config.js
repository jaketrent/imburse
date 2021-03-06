const path = require('path')
const webpack = require('webpack')

module.exports = {
  entry: [
    path.join(__dirname, '..', '..', 'client', 'index.js')
  ],
  output: {
    path: path.join(__dirname, '..', '..', 'dist'),
    filename: 'index.js',
    publicPath: '/static/'
  },
  plugins: [
    new webpack.ProvidePlugin({
      riot: 'riot'
    })
  ],
  module: {
    loaders: [{
      test: /\.css$/,
      loaders: ['style', 'css?modules&localIdentName=[local]---[hash:base64:5]'],
      excludes: /node_modules/
    }, {
      test: /\.js$/,
      loaders: ['babel'],
      excludes: /node_modules/
    }, {
      test: /\.tag$/,
      loaders: ['babel', 'riotjs'],
      exclude: /node_modules/
    }]
  }
}
