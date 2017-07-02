/**
 * PerfilController
 *
 * @description :: Server-side logic for managing perfils
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */
// function todos(req,res){
//  	return User.find()
//  	.then((etodos) => {
//  		res.status(200).render('todos',{
//  			title: "usuario",
//  			users: etodos,
//  			layout: "layout"
//  		});
//  	})
//  	.catch((err) =>{
//  		res.ok(etodos).send("algo ocurrio");
//  	})
//  }
const waterfall = require('async/waterfall');

function meter(req,res){
	Perfil.create({
		nombre: req.body.nombre,
	}).exec((err,perfil)=>{
		console.log('hola');
 		if(err){
 			return res.status(500).send('Error');
 		}
 		return res.send('Espera tu respuesta :)');
	});
}

function todos(req,res){
	return Perfil.find()
	.exec((err,all) => {
		if(err){
		  return res.status(500).send("algo ocurrio");}
		else {
		 	return res.status(200).render('perfil',{
			  title: "usuario",
			  perfils: all,
			  // layout: "layout"
			});
		}
	});
}
module.exports = {
	meter,
	todos,
};
