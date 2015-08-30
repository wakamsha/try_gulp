$DEST   = './public/'
$SRC    = './app/'

path =
    $SRC:  $SRC
    $DEST: $DEST
    src:
        md      : ["#{$SRC}/md/**/*.md"]
        mdIndex : "#{$SRC}/md/index.md"
    dest:
        html: $DEST

module.exports =
    path: path
