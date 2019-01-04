/**
 * https://cli.vuejs.org/config/#vue-config-js
 *
 */

// vue.config.js
module.exports = {
  // options...

  // https://cli.vuejs.org/config/#lintonsave
  lintOnSave: process.env.NODE_ENV !== "production",
  devServer: {
    overlay: {
      warnings: false,
      errors: true
    }
  },

  // https://cli.vuejs.org/config/#runtimecompiler
  runtimeCompiler: true,

  configureWebpack: {
    module: {
      rules: [
        /* config.module.rule('fonts') */
        {
          test: /\.(woff2?|eot|ttf|otf)(\?.*)?$/i,
          use: [
            /* config.module.rule('fonts').use('url-loader') */
            {
              loader: "url-loader",
              options: {
                limit: 1,
                fallback: {
                  loader: "file-loader",
                  options: {
                    name: "fonts/[name].[hash:8].[ext]"
                  }
                }
              }
            }
          ]
        }
      ]
    }
  },

  // https://cli.vuejs.org/config/#css-sourcemap
  css: {
    sourceMap: true
  }
};
