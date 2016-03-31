const path = require('path')
const webpack = require('webpack')

module.exports = {
  entry: path.join(__dirname, '..', '..', 'client', 'index.js'),
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
    preLoaders: [{ 
      test: /\.tag$/,
      loader: 'riotjs',
      query: { type: 'none' },
      exclude: /node_modules/   
    }],
    loaders: [{
      test: /\.js$|\.tag$/,
      loaders: ['babel'],
      excludes: /node_modules/
    }]
  }
}
