const path = require('path');

module.exports = {
  chainWebpack: config => {
    // GraphQL Loader
    config.module
      .rule('ink')
      .test(/.*\.ink$/)
      .use('ink-loader')
      .loader(path.resolve('src/ink-loader.js'))
      .options({
        cmd:
          'mono /home/jeremie/Applications/inklecate_windows_and_linux/inklecate.exe'
      })
      .end();
  }
};
