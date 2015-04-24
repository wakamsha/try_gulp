gulp = require 'gulp'
sass = require 'gulp-sass'
bourbon = require 'node-bourbon'
jade = require 'gulp-jade'

bourbon.with './src/scss/application'

gulp.task 'scss', ->
  gulp.src './src/scss/**/*.scss'
    .pipe sass
      includePaths: bourbon.includePaths
    .pipe gulp.dest './dest/assets/css'

gulp.task 'jade', ->
  gulp.src ['./src/jade/**/*.jade', '!./src/jade/**/_*.jade']
    .pipe jade
      pretty: true
    .pipe gulp.dest './dest/'
