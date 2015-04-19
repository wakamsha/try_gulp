gulp        = require 'gulp'
sass        = require 'gulp-sass'
sourcemaps  = require 'gulp-sourcemaps'
bourbon     = require 'node-bourbon'

bourbon.with 'src/scss/application'

gulp.task 'scss', ->
  gulp.src './src/scss/**/*.scss'
    .pipe sourcemaps.init()
    .pipe sass
      includePaths: bourbon.includePaths
    .pipe sourcemaps.write()
    .pipe gulp.dest('./dest/assets/css')
