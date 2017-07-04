/**
 * UserLoginController
 *
 * @description :: Server-side logic for managing userlogins
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

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
	newUser
};
