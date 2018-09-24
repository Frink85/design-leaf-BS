var gulp = require('gulp'),
    compass = require('gulp-compass'),
    minifyCSS = require('gulp-minify-css');
    concatCSS = require('gulp-concat-css'),
    concat = require('gulp-concat'),
    uglify = require('gulp-uglify'),
    plumber = require('gulp-plumber'),
    consolidate = require('gulp-consolidate');

// SASS et minification
gulp.task('css', function() {
    gulp.src('./sass/*.scss')
        .pipe(plumber())
        .pipe(compass({
            config_file: './compass.rb',
            sass: './sass/',
            css: './css/'
        }))
        .pipe(minifyCSS())
        .pipe(gulp.dest('./css'));
});

// Watch sur le JS et le CSS
gulp.task('watch', function () {
    var onChange = function (event) {
        console.log('File '+event.path+' has been '+event.type);
    };
    gulp.watch('./sass/*.scss', ['css'])
        .on('change', onChange);
});
