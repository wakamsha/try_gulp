$DEST   = './public/'
$SRC    = './app/'

path =
    $SRC  : $SRC
    $DEST : $DEST
    src:
        sprite:
            normal: ["#{$SRC}images/sprite/*.png"]
            retina: ["#{$SRC}images/sprite/*@2x.png"]
        templates : ["#{$SRC}templates/**/*.jade", "!#{$SRC}templates/**/_*.jade"]
        styles: ["#{$SRC}styles/*.scss", "#{$SRC}styles/**/*.scss"]
    dest:
        html  : $DEST
        css   : "#{$DEST}assets/css"
        assets: "#{$DEST}assets"
        sprite:
            images:
                path: '../images'
                file: "#{$DEST}assets/images"
            template: "#{$SRC}styles/commons"

module.exports =
    path: path
