gulp            = require 'gulp'
iconfont        = require 'gulp-iconfont'
consolidate     = require 'gulp-consolidate'

rimraf          = require 'rimraf'
runSequence     = require 'run-sequence'

engine = 'lodash'

gulp.task 'iconfont', ->
    gulp.src ['src/svg/*.svg']
        .pipe iconfont
            fontName: 'myfont'
            fixedWidth: true
            appendUnicode: true
            startCodepoint: 0xF001
        .on 'glyphs', (glyphs, options) ->
            glyphOptions =
                glyphs: glyphs
                fontName: 'myfont'  # font-family
                fontPath: '../fonts/'
                className: 'egs'    # prefix of class name
                timestamp: Date.now()
            gulp.src ['./src/templates/myfont.css']
                .pipe consolidate engine, glyphOptions
                .pipe gulp.dest './public/assets/css/'
            gulp.src ['./src/templates/egs-font.html']
                .pipe consolidate engine, glyphOptions
                .pipe gulp.dest './public/'
        .pipe gulp.dest 'public/assets/fonts/'

gulp.task 'clean', (cb)->
    rimraf 'public/', cb

gulp.task 'demo', ->
    gulp.src './src/templates/sample.html'
        .pipe consolidate 'lodash', {
            message: 'hello, gulp'
        }
        .pipe gulp.dest './public'

gulp.task 'default', ->
    runSequence 'clean', 'iconfont'
