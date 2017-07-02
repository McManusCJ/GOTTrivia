/**
 * UserLoginController
 *
 * @description :: Server-side logic for managing userlogins
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */
const passport = require('passport');

function login(req,res){
		passport.authenticate('local',(err,user,info) => {
			if((err) || (!user)) {
				return res.send({
					message:info.message,
					user:user
				});
			}
			req.logIn(user,(err) => {
				if(err)
					res.send(err);
				return res.send({
					message:info.message,
					user:user
				});
			});
		})(req,res);
}

function index(req,res){
	 return res.status(200).render('index');
 }

function newUser(req,res){
 	User.create({
 		name: req.body.name,
 		password: req.body.password,
 		birthday: req.body.birthday,
 		avatar: req.body.avatar,
 	}).then(() => {
		res.status(200).render('completed');
	}).catch((err) => {
		res.status(500).send('Error');
	})
};
module.exports = {
	newUser,
	index,
	login
};
