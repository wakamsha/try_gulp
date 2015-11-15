config  = require '../config'
gulp    = require 'gulp'
watch   = require 'gulp-watch'

gulp.task 'watch', ->
    watch config.path.src.templates, ->
        gulp.start ['template']
    watch config.path.src.styles, ->
        gulp.start ['style']
