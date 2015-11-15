gulp        = require 'gulp'
requireDir  = require 'require-dir'
runSequence = require 'run-sequence'

requireDir './gulp/tasks',
    recurse: true

gulp.task 'default', ->
    runSequence 'clean', 'sprite', ['style', 'template', 'browser-sync', 'watch']
