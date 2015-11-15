config      = require '../config'
gulp        = require 'gulp'
sass        = require 'gulp-sass'
bourbon     = require 'node-bourbon'
plumber     = require 'gulp-plumber'
notify      = require 'gulp-notify'
browserSync = require 'browser-sync'

bourbon.with './styles/app'

gulp.task 'style', ->
    gulp.src config.path.src.styles
        .pipe plumber
            errorHandler: notify.onError('<%= error.message %>')
        .pipe sass
            includePaths: bourbon.includePaths
        .pipe gulp.dest config.path.dest.css
        .pipe browserSync.reload
            stream: true
