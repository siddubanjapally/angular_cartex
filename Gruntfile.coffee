module.exports = (grunt) ->
  (require 'load-grunt-tasks')(grunt)
  grunt.registerTask 'serve', ['connect:server']
  grunt.registerTask 'build', ['bower', 'concurrent:build']
  grunt.registerTask 'default', ['concurrent:build', 'concurrent:mini']
  grunt.registerTask 'all', ['bower', 'default']
  grunt.registerTask 'mini', ['concurrent:mini']
  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')

    coffee:
      options:
        sourceMap: true
        join: true
      combined:
        files:
          'build/js/<%= pkg.name %>.js':
            ['src/coffee/app.coffee', 'src/coffee/**/!(app).coffee', 'src/coffee/**/!(.#*)']
    jade:
      compile:
        expand: true
        cwd: 'src/jade'
        src: ['**/*.jade']
        dest: 'build/html/'
        ext: '.html'

    bower:
      install:
        options:
          targetDir: 'build/lib'
          cleanTargetDir: true

    cssmin:
      combine:
        files:
          'build/css/lib.min.css': ['build/lib/**/*.css']

    uglify:
      options:
        mangle: false
        sourcemap: true
        verbose: true
      libs:
        files:
          'build/js/lib.min.js': [
            'build/lib/jquery/jquery.js'
            'build/lib/angular/angular.js'
            'build/lib/angular-route/angular-route.js'
            'build/lib/bootstrap/bootstrap.js'
            'build/lib/Faker/Faker.js'
            'build/lib/lodash/lodash.compat.js'
            'src/lib/*.js'
          ]

    connect:
      server:
        options:
          port: 8000
          keepalive: true
          base: ['build/html', 'build/js', 'build/css', 'src/html', 'src/js', 'src/css']

    watch:
      coffee:
        files: ['src/coffee/**/*.coffee']
        tasks: ['coffee']
      jade:
        files: ['src/jade/**/*.jade']
        tasks: ['jade']
      html_css_js:
        files: ['src/js/**/*.js', 'src/html/**/*.html', 'src/css/**/*.css']
        tasks: []
      options:
        spawn: true
        livereload: true

    concurrent:
      build: ['newer:cssmin', 'newer:uglify', 'newer:jade', 'newer:coffee']
      mini: ['serve', 'watch']
      options:
        logConcurrentOutput: true
