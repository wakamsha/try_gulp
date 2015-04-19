gulp        = require 'gulp'
sass        = require 'gulp-sass'
sourcemaps  = require 'gulp-sourcemaps'
bourbon     = require 'node-bourbon'
watch       = require 'gulp-watch'
plumber     = require 'gulp-plumber'
notify      = require 'gulp-notify'
browserSync = require 'browser-sync'

bourbon.with './src/scss/application'

gulp.task 'sass', ->
  gulp.src './src/scss/**/*.scss'
    # .pipe plumber((error)->
    #   @emit('end')
    # )
    .pipe plumber
      errorHandler: notify.onError('<%= error.message %>')
    .pipe sourcemaps.init()
    .pipe sass
      includePaths: bourbon.includePaths
    .pipe sourcemaps.write()
    .pipe gulp.dest './dest/assets/css'
    .pipe browserSync.reload
      stream: true

gulp.task 'watch', ->
  gulp.watch ['./src/scss/**/*.scss'], ['sass']
  watch ['./src/scss/**'], ->
    gulp.start ['sass']

gulp.task 'browser-sync', ->
  browserSync.init null,
    server: './dest'
    reloadDelay: 2000

gulp.task 'default', ['sass', 'browser-sync', 'watch']
