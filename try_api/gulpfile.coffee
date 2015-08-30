gulp            = require 'gulp'
requireDir      = require 'require-dir'
runSequence     = require 'run-sequence'

requireDir './gulp/tasks',
    recurse: true

gulp.task 'default', ->
    runSequence 'clean', 'aglio', ['browser-sync', 'watch']

gulp.task 'doc',  ['default']
gulp.task 'mock', ['api-mock']
