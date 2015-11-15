config      = require '../config'
gulp        = require 'gulp'
jade        = require 'gulp-jade'
plumber     = require 'gulp-plumber'
notify      = require 'gulp-notify'
browserSync = require 'browser-sync'

gulp.task 'template', ->
    gulp.src config.path.src.templates
        .pipe plumber
            errorHandler: notify.onError('<%= error.message %>')
        .pipe jade
            pretty: true
        .pipe gulp.dest config.path.dest.html
        .pipe browserSync.reload
            stream: true
