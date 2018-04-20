// handle the routing requests => the requests gets passed in via the route
const connect = require('../utils/sqlConnect');

exports.get_all_movies = (req, res) => {
  console.log('hit get all movies');

  connect.getConnection((err, connection) =>{
    if(err) {
      return console.log(err.message);
    }

    let query = `SELECT DISTINCT * FROM tbl_content m, tbl_comments g WHERE m.con_id = g.comments_movie`;
    // let query = `SELECT * FROM tbl_content m, tbl_genre g, tbl_con_genre mg WHERE m.con_id = mg.con_id AND g.genre_id = mg.genre_id`;

    connect.query(query, (err, rows) => {
      connection.release(); //let somebodu else use this connection

      if(err){
        return console.log(err.message);
      }

      console.log(rows);
      res.render('home', {
            defaultMovie : rows[Math.floor(Math.random() * rows.length)],
            data : JSON.stringify(rows),
            mainpage : true,
            videopage : false,
            kids : false,
            parents : false
          });
    })
  })
};

exports.get_all_parents = (req, res) => {
  console.log('hit get all movies');

  connect.getConnection((err, connection) =>{
    if(err) {
      return console.log(err.message);
    }

    let query = `SELECT * FROM tbl_content m, tbl_genre g, tbl_con_genre mg WHERE m.con_id = mg.con_id AND g.genre_id = mg.genre_id`;

    connect.query(query, (err, rows) => {
      connection.release(); //let somebodu else use this connection

      if(err){
        return console.log(err.message);
      }

      console.log(rows);
      res.render('parents', {
            defaultMovie : rows[Math.floor(Math.random() * rows.length)],
            data : JSON.stringify(rows),
            mainpage : false,
            videopage : false,
            kids : false,
            parents : true
          });
    })
  })
};

exports.get_many_movies = ((req, res) => {
  console.log('hit get one route');

  connect.getConnection((err, connection) => {
    if(err) {
      return console.log(err.message);
    }

    // let query = `SELECT * FROM tbl_comments WHERE comments_movie ="${req.params.id}"`;
    let query = `SELECT * FROM tbl_content m, tbl_genre g, tbl_con_genre mg WHERE m.con_id = mg.con_id AND g.genre_id = mg.genre_id AND m.con_type = "${req.params.id}"`;

    connect.query(query, (err, rows) => {
      connection.release(); //let somebodu else use this connection

      if(err){
        return console.log(err.message);
      }

      console.log(rows);
        res.render('allmovies', {
          movie : req.params.id,
          trailer : req.params.vidsrc,
          data : JSON.stringify(rows),
          mainpage : false,
          videopage : false,
          kids : false,
          parents : false,
          movies : true
        });
      })
    })
});

exports.get_one_movie = ((req, res) => {
  console.log('hit get one route');

  connect.getConnection((err, connection) => {
    if(err) {
      return console.log(err.message);
    }

    let query = `SELECT * FROM tbl_comments WHERE comments_movie ="${req.params.id}"`;

    connect.query(query, (err, rows) => {
      connection.release(); //let somebodu else use this connection

      if(err){
        return console.log(err.message);
      }

      console.log(rows);
        res.render('movie', {
          movie : req.params.id,
          trailer : req.params.vidsrc,
          data : JSON.stringify(rows),
          mainpage : false,
          videopage : true,
          kids : false,
          parents : false
        });
      })
    })
});

exports.get_api_movie = (req, res) => {
  console.log('hit the api');

  connect.getConnection((err, connection) => {
    if(err) {
      return console.log(err.message);
    }

    query = `INSERT INTO tbl_comments (comments_id, comments_auth, comments_copy, comments_date, comments_movie, comments_rating) VALUES (NULL, NULL, "${req.body.comment}", CURRENT_TIMESTAMP, "${req.body.id}", "${req.body.stars}");`;

    connect.query(query, (err, rows) => {
      connection.release(); //let somebodu else use this connection

      if(err){
        return console.log(err.message);
      }

      res.json(rows);
    })
  })
};

exports.get_all_kids = (req, res) => {
  console.log('hit get all movies');

  connect.getConnection((err, connection) =>{
    if(err) {
      return console.log(err.message);
    }

    let query = `SELECT * FROM tbl_content m, tbl_genre g, tbl_con_genre mg WHERE m.con_id = mg.con_id AND g.genre_id = mg.genre_id AND genre_name = 'Family'`;

    connect.query(query, (err, rows) => {
      connection.release(); //let somebodu else use this connection

      if(err){
        return console.log(err.message);
      }

      console.log(rows);
      res.render('main_kids', {
            defaultMovie : rows[Math.floor(Math.random() * rows.length)],
            data : JSON.stringify(rows),
            mainpage : false,
            videopage : false,
            kids : true,
            parents : false
          });
    })
  })
};
