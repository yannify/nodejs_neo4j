const neode = require("neode")
              .fromEnv()
              .withDirectory(__dirname+'/schemas');

module.exports = neode;