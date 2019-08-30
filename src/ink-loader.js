const { exec } = require('child_process');
const { getOptions } = require('loader-utils');
const temp = require('temp');
const fs = require('fs');

module.exports = function(source) {
  const done = this.async();
  const { cmd = 'inklecate' } = getOptions(this);

  temp.track();

  temp.open('inktrans_', function(err, info) {
    if (!err) {
      fs.write(info.fd, source, function(err) {
        if (err) {
          console.log(err);
        }
      });
      fs.close(info.fd, function() {
        const tempFile = temp.path();
        exec(
          `${cmd} -c -o ${tempFile} ${info.path} && cat ${tempFile}`,
          function(err, stdout) {
            if (err) {
              console.log(err);
            }
            const result = `export default ${stdout.trim()}`;
            done(null, result);
          }
        );
      });
    }
  });
};
module.exports.raw = true;
