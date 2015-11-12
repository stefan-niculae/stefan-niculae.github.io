var gulp = require('gulp')
var sass = require('gulp-sass')
var coffee = require('gulp-coffee')
var gutil = require('gulp-util')

gulp.task('sass', function() {
    gulp.src('style/**/*.scss')
        .pipe(sass().on('error', sass.logError))
        .pipe(gulp.dest('style/'));
})

gulp.task('coffee', function() {
    gulp.src('scripts/**/*.coffee')
        .pipe(coffee({bare: true}).on('error', gutil.log))
        .pipe(gulp.dest('scripts/'));
})

// Watch task
gulp.task('default', function() {
    gulp.watch('scripts/**/*.coffee', ['coffee']);
    gulp.watch('style/**/*.scss', ['sass']);
})

