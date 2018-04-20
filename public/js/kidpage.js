var myApp = {
  // some code that wouldn't necessarily go inside a viewmodel here
  // also split the movies into genres using vue
  movieGenres(data, genres) {
    //filter the dataset and create an array of genres => one object for each genre
    genres.forEach((genre, index) => {
       myApp.vm.genres.push({
         name : genre,
         movies : data.filter(movie => movie.genre_name === genre)
       })
     });
  },

  vm : new Vue({
    delimiters : ["${","}"],

    el : "#app",

    data : {
      message : "Welcome children",

      genres : []
    },

    methods : {
      // nothin here yet
    }
  })
}

// myApp.movieGenres(appData.movies, ["Family","Action", "Comedy", "Adventure", "Musical"]);
myApp.movieGenres(appData.movies, ["Family"]);
