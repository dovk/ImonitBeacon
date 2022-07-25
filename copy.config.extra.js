var fs = require('fs-extra');
fs.copySync('src/index.html','www/index.html', (err) => {});
fs.copySync('src/manifest.json','www/manifest.json', (err) => {});
fs.copySync('src/service-worker.js','www/service-worker.js', (err) => {});
fs.copySync('src/assets/fonts', 'www/assets/fonts', (err) => {});
fs.copySync('node_modules/ionic-angular/polyfills/polyfills.js','www/build/polyfills.js', (err) => {});
fs.copySync('node_modules/sw-toolbox/sw-toolbox.js','www/build/sw-toolbox.js', (err) => {});
fs.copySync('src/assets/3rdParty', 'www/assets/3rdParty', (err) => {});
fs.copySync('src/assets/data/css', 'www/assets/data/css', (err) => {});
fs.copySync('src/assets/img', 'www/assets/img', (err) => {});
fs.copySync('src/assets/data/config.xml','www/assets/data/config.xml', (err) => {});
fs.copySync('src/assets/data/const.ts','www/assets/data/const.ts', (err) => {});
fs.copySync('src/assets/data/envParms.ts','www/assets/data/envParms.ts', (err) => {});
