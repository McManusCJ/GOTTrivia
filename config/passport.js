const passport = require('passport');
const LocalStrategy = require('passport-local').Strategy;
const bcrypt = require('bcryptjs');

passport.serializeUser(function(user, done) {
    done(null, user.id);
});

passport.deserializeUser(function(id, done) {
    User.findOne({ id: id } , function (err, user) {
        done(err, user);
    });
});

passport.use(new LocalStrategy(/*{
    usernameField: 'name',
    passwordField: 'password'
  },*/
  function(name, password, done) {
    console.log("entra a function de use");
    User.findOne({ name: name }, function (err, user) {
      if (err) {
        return done(err);
      }
      if (!user) {
        return done(null, false, {
          message: 'Incorrect name.'
        });
      }
      bcrypt.compare(password, user.password, function (err, res) {
          if (!res)
            return done(null, false, {
              message: 'Invalid Password'
          });
          return done(null,
            {
              name: user.name,
              createdAt: user.createdAt,
              id: user.id
            },
            {
              message: 'Logged In Successfully'
            }
          );
        });
    });
  }
));
