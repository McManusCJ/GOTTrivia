/**
 * PerfilController
 *
 * @description :: Server-side logic for managing perfils
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

const waterfall = require('async/waterfall');

function todos(req,res){
  var a =  User.find()
	// .then((amijito) => {
	// 	var dormir = amijito;
	// 	var c = Match.find({
	// 		or :[
	// 			{player1: 'session_id',
  //        status: true,
	// 			 seen: false,
	// 		 },
	// 		 {
	// 			 player2: 'session_id',
	// 			 status: false,
	// 		 }
	// 		]
	// 	})
	//
	// })
  .then((amijito) => {
		var b = Categ.find().exec((err,all) =>
			{
				res.status(200).view('perfil',{
						  title:"perfil",
							perfils: amijito,
							categs: all,
							layout:"layout"
				});
			})
		})
  .catch((err) =>{
    res.status(500).send("algo ocurrio");
  })
}
function buscar(req,res){
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
	.exec((err,noti)=>{
		 res.status(200).render('notifications',{
			 	  title:"notifications",
					notifications: noti,
					//layout: "layout"
			});
	})
}

module.exports = {
	todos,
	buscar,
};
