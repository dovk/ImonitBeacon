module.exports = {
    copyIndexContent: {
        src: ['{{SRC}}/index.html', '{{SRC}}/manifest.json', '{{SRC}}/service-worker.js'],
        dest: '{{WWW}}'
    },
    copyFonts: {
        src: ['{{SRC}}/assets/fonts/**/*'],
        dest: '{{WWW}}/assets/fonts'
    },
    copyPolyfills: {
        src: [`{{ROOT}}/node_modules/ionic-angular/polyfills/${process.env.IONIC_POLYFILL_FILE_NAME}`],
        dest: '{{BUILD}}'
    },
    copySwToolbox: {
        src: ['{{ROOT}}/node_modules/sw-toolbox/sw-toolbox.js'],
        dest: '{{BUILD}}'
    },
    copy3rdParty: {
        src: ['{{SRC}}/assets/3rdParty/**/*'],
        dest: '{{WWW}}'
    },
    copyCSS: {
        src: ['{{SRC}}/assets/data/css/**/*'],
        dest: '{{WWW}}/assets/data/css'
    },
    copyData: {
        src: ['{{SRC}}/assets/data/config.xml', '{{SRC}}/assets/data/const.ts', '{{SRC}}/assets/data/envParms.ts'],
        dest: '{{WWW}}/assets/data'
    },
    copyImg: {
        src: ['{{SRC}}/assets/img/**/*'],
        dest: '{{WWW}}/assets/img'
    }
}
