config          = require '../config'
gulp            = require 'gulp'
aglio           = require 'gulp-aglio'
plumber         = require 'gulp-plumber'
notify          = require 'gulp-notify'
browserSync     = require 'browser-sync'

gulp.task 'aglio', ->
    gulp.src config.path.src.md
        .pipe plumber
            errorHandler: notify.onError '<%= error.message %>'
        .pipe aglio
            template: 'default'
        .pipe gulp.dest config.path.dest.html
        .pipe browserSync.reload
            stream: true
