/**
 * PerfilController
 *
 * @description :: Server-side logic for managing perfils
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

const waterfall = require('async/waterfall');

function todos(req,res){
  var a =  User.find()
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

module.exports = {
	todos,
};
