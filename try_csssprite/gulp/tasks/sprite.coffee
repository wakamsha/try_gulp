config      = require '../config'
gulp        = require 'gulp'
spriteSmith = require 'gulp.spritesmith'

gulp.task 'sprite', ->
    spriteData = gulp.src config.path.src.sprite.normal
        .pipe spriteSmith
            imgName: 'sprite.png'                                           # スプライト画像
            cssName: '_sprite.scss'                                         # 生成される SCSS
            imgPath: "#{config.path.dest.sprite.images.path}/sprite.png"    # 生成される SCSS に記載されるスプライト画像パス
            # cssFormat: 'scss'                                             # フォーマット拡張子
            cssVarMap: (sprite) ->
                sprite.name = "sprite-#{sprite.name}"   # 生成される SCSS に変数の一覧を記述
                return
            retinaSrcFilter: config.path.src.sprite.retina
            retinaImgName: 'sprite@2x.png'
            retinaImgPath: "#{config.path.dest.sprite.images.path}/sprite@2x.png"
            algorithm: 'diagonal'
            algorithmOpts:
                sort: false

    spriteData.img
        .pipe gulp.dest config.path.dest.sprite.images.file # imgName で指定したスプライト画像の保存先
    spriteData.css
        .pipe gulp.dest config.path.dest.sprite.template    # cssName で指定した CSS ファイルの保存先
