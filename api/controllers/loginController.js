/**
 * UserLoginController
 *
 * @description :: Server-side logic for managing userlogins
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */
const bcrypt = require("bcrypt");
 function login(req,res){
	 console.log("login")
	 User.findOne({name:req.body.name})
	 .then((data)=>{
			bcrypt.compare(req.body.password,data.password)
				.then((result)=>{
						if(result===false)
							return res.status(401).send("Contrasenia incorrecta");
						else if(result===true)
							return res.status(201).redirect("/main");
				})
				.catch((err)=>{
						return response.serverError("Error interno");
				});
	 }).catch((err)=>{
		 		return response.status(401).send("Usuario no existe");
	 });
	}

function newUser(req,res){
 	User.create({
 		name: req.body.name,
 		password: req.body.password,
 		birthday: req.body.birthday,
 		avatar: req.body.avatar,
 	}).then(() => {
		res.status(200).send('completed');
	}).catch((err) => {
		res.serverError('Error');
	});
}
module.exports = {
	login,
	newUser
};
