var HDWalletProvider = require("truffle-hdwallet-provider");
var mnemonic = "umbrella hospital alley rent elephant tilt link river inch doll joke above";

module.exports = {
     // See <http://truffleframework.com/docs/advanced/configuration>
     // to customize your Truffle configuration!
     networks: {
          ganache: {
               host: "localhost",
               port: 8545,
               network_id: "*" // Match any network id
          },
          ropsten: {
               provider: function() {
                    return new HDWalletProvider(mnemonic, 'https://ropsten.infura.io/v3/27e974853e00447fa5db3b3a1c9d5045')
               },
               network_id: '3',
               gas: 4500000,
               gasPrice: 10000000000,
          }
     }
};
