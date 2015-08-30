config      = require '../config'
gulp        = require 'gulp'
browserSync = require 'browser-sync'

gulp.task 'browser-sync', ->
    browserSync.init null,
        server: config.path.$DEST
        reloadDelay: 1000
