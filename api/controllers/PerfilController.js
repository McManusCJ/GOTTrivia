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

function todos(req,res){
  var a =  Perfil.find()
	.then((amijito) => {
		var dormir = amijito;
		var c = Match.find({
			or :[
				{player1: 'session_id',
         status: true,
				 seen: false,
			 },
			 {
				 player2: 'session_id',
				 status: false,
			 }
			]
		})

	})
	//.teh((amijito,hope) => {
  .then((dormir,hope) => {
		var b = Categ.find().exec((err,all) =>
			{
				res.status(200).view('perfil',{
						  title:"perfil",
							perfils: dormir,
							categs: all,
							notis: hope,
							layout:"layout"
				});
			})
		})
  .catch((err) =>{
    res.status(500).send("algo ocurrio");
  })
}

// function todos(req,res){
// 	var a = Perfil.find()
// 	var b = Categ.find()
// 	.exec((err,all) => {
// 		if(err){
// 		  return res.status(500).send("algo ocurrio");}
// 		else {
// 		 	return res.status(200).view('perfil',{
// 			  title: "perfil",
// 			  perfils: all,
// 			  layout: "layout"
// 			});
// 		}
// 	});
// }

// function escoger(req,res){
// 	return Categ.find()
// 	.exec((err,all) => {
// 		if(err){
// 		  return res.status(500).send("algo ocurrio");}
// 		else {
// 		 	return res.status(200).view('perfil',{
// 			  // title: "perfil",
// 			  categs: all,
// 			  layout: "layout"
// 			});
// 		}
// 	});
// }
module.exports = {
	todos,
	// escoger,
};
