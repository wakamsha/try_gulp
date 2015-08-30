config  = require '../config'
gulp    = require 'gulp'
rimraf  = require 'rimraf'

gulp.task 'clean', (cb)->
    rimraf config.path.$DEST, cb
