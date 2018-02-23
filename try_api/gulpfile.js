const gulp = require('gulp');
const watch = require('gulp-watch');
const rimraf = require('rimraf');
const aglio = require('gulp-aglio');
const plumber = require('gulp-plumber');
const notify = require('gulp-notify');
const browserSync = require('browser-sync');
const runSequence = require('run-sequence');
// const ApiMock = require('api-mock');

gulp.task('clean', (cb) => rimraf('./public', cb));

gulp.task('aglio', () =>
    gulp.src('./app/md/**/*.md')
        .pipe(plumber({
            errorHandler: notify.onError('<%= error.message%>')
        }))
        .pipe(aglio({
            template: 'default'
        }))
        .pipe(gulp.dest('./public/'))
        .pipe(browserSync.reload({
            stream: true
        }))
);

gulp.task('browser-sync', () =>
    browserSync.init(null, {
        server: './public',
        reloadDelay: 1000
    })
);

// not working
gulp.task('api-mock', () => {
    const mockServer = new ApiMock({
        blueprintPath: './app/md/index.md',
        options: {
            port: 5557
        }
    });
    return mockServer.run();
});

gulp.task('watch', () =>
    watch('./app/md/**/*.md', () => gulp.start(['aglio']))
);

gulp.task('doc', () => runSequence('clean', 'aglio', ['browser-sync', 'watch']));

// not working
gulp.task('mock', ['api-mock']);
