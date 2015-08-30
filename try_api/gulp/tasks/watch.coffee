config  = require '../config'
gulp    = require 'gulp'
watch   = require 'gulp-watch'

gulp.task 'watch', ->
    watch config.path.src.md, ->
        gulp.start ['aglio']
