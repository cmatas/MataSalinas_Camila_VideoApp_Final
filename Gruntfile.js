module.exports = function(grunt) {
  // 1. all config stuff goes here
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'), // reads the packages etc inside that file
      uglify: {
        // options: {
        //   nameCache: '.tmp/grunt-uglify-cache.json',
        // },
        my_target: {
          files: {
            'public/dist/main.min.js': ['public/js/main.js'],
            'public/dist/kidpage.min.js': ['public/js/kidpage.js'],
            'public/dist/movpage.min.js': ['public/js/movpage.js'],
            'public/dist/parentpage.min.js': ['public/js/parentpage.js'],
            'public/dist/social-sharing.min.js': ['public/js/social-sharing.js'],
            'public/dist/indexs.min.js': ['public/js/indexs.js'],
            'public/dist/vue-social-sharing.min.js': ['public/js/vue-social-sharing.js'],
            'public/dist/videopage.min.js': ['public/js/videopage.js']
          }
        }
      },

      watch: {
        sass: {
          files: ['sass/*.scss'],
          tasks: ['sass']
        }
      },

      sass: {
        dist: {
          options: {
            style: 'compressed'
          },

          files: {
            'public/css/style.css':'sass/master.scss'
          }
        }
      }
  });


  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-contrib-sass');
  grunt.loadNpmTasks('grunt-contrib-uglify-es');

  grunt.registerTask('default', ['sass', 'uglify']);
  grunt.registerTask('watchFiles', ['watch', 'sass']);
};
