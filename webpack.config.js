const webpack = require('webpack');
const htmlWebpackPlugin = require('html-webpack-plugin');

module.exports = {
  entry: {
      javascript: './scripts/index.js'
    },
  output: {
      path: 'public',
      filename: 'bundle.js'
  },
  plugins: [
    new webpack.ProvidePlugin({
      riot: 'riot',
      jQuery: 'jquery',
      $: 'jquery',
      'window.Tether': 'tether',
      '_': 'lodash',
      axios: 'axios'
    }),
    new htmlWebpackPlugin({
      filename: 'index.html',
      template: './templates/main.jade'
    }),
  ],
  resolve: {
    extensions: ['', '.js', '.tag', '.css', '.scss', '.jade']
  },
  module: {
    preLoaders: [
      { test: /\.tag$/, include: /templates/, loader: 'riotjs', query: {type:'babel'} }
    ],
    loaders: [
      { test: /\.js$|.tag$/, exclude: /node_modules/, loader: 'babel' },
      { test: /\.scss$|\.css$/, loaders: ['style', 'css', 'postcss', 'sass'] },
      { test: /\.jade$/, loader: 'pug'},
      { test: /bootstrap\/dist\/js\//, loader: 'imports?jQuery=jquery' }
    ]
  },

  devServer: {
    contentBase: 'public',
    historyApiFallback: true,
  },
};
