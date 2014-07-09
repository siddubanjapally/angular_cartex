module.exports = (config) ->
  config.set

    basePath: 'src'
    frameworks: ['jasmine']

    files: [
      'bower_components/lodash/dist/lodash.compat.js',
      'coffee/**/*.coffee',
      'js/**/*.js',
      'spec/**/*_spec.coffee',
      'spec/**/*_spec.js'
    ]

    exclude: [

    ]

    # test results reporter to use
    # possible values: 'dots', 'progress', 'junit', 'growl', 'coverage'
    reporters: ['dots']

    port: 9876
    colors: true

    # possible values: config.LOG_DISABLE || config.LOG_ERROR || config.LOG_WARN || config.LOG_INFO || config.LOG_DEBUG
    logLevel: config.LOG_ERROR

    autoWatch: true

    # Start these browsers, currently available:
    # - Chrome
    # - ChromeCanary
    # - Firefox
    # - Opera (has to be installed with `npm install karma-opera-launcher`)
    # - Safari (only Mac; has to be installed with `npm install karma-safari-launcher`)
    # - PhantomJS
    # - IE (only Windows; has to be installed with `npm install karma-ie-launcher`)
    browsers: ['PhantomJS']

    # If browser does not capture in given timeout [ms], kill it
    captureTimeout: 60000

    # if true, it capture browsers, run tests and exit
    singleRun: false
