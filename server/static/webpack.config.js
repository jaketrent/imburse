const path = require('path')
const webpack = require('webpack')

module.exports = {
  entry: [
    path.join(__dirname, '..', '..', 'client', 'index.ts')
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
      test: /\.ts$$/,
      loaders: ['ts'],
      excludes: /node_modules/
    }, {
      test: /\.tag$/,
      loader: 'riotjs',
      query: { type: 'typescript' },
      exclude: /node_modules/
    }]
  }
}
