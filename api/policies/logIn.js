/**
 * logIn
 *
 * @module      :: Policy
 * @description :: TODO: You might write a short summary of how this policy works and what it represents here.
 * @help        :: http://sailsjs.org/#!/documentation/concepts/Policies
 */
const passport = require('passport');

module.exports = function logIn(req, res, next) {
  passport.authenticate('local',(err,user,info) => {
    if((err) || (!user)) {
      return res.view('userError',{
        message:info.message,
      });
    }
    req.logIn(user,(err) => {
      if(err)
        return res.serverError(info.message);
      else
        return res.next();
    });
  });//(req,res);

};
