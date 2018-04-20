var myApp = {
  // some code that wouldn't necessarily go inside a viewmodel here
  // also split the movies into genres using vue
  movieGenres(data, ratings) {
    //filter the dataset and create an array of genres => one object for each genre
    ratings.forEach((rating, index) => {
       myApp.vm.ratings.push({
         name : rating,
         movies : data.filter(movie => movie.comments_rating === rating)
       })
     });
  },

  vm : new Vue({
    delimiters : ["${","}"],

    el : "#app",

    data : {
      message : "helcome to Vue! and my Netflix ripoff",

      ratings : []
    },

    methods : {
      // nothin here yet
    }
  })
}

myApp.movieGenres(appData.movies, [5]);
