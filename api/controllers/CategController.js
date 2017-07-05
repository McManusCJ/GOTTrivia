/**
 * CategController
 *
 * @description :: Server-side logic for managing categs
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */
const waterfall = require('async/waterfall');

function escoger(req,res){
	return Categ.find()
	.exec((err,all) => {
		if(err){
		  return res.status(500).send("algo ocurrio");}
		else {
		 	return res.status(200).view('perfil',{
			  title: "perfil",
			  categs: all,
			  layout: "layout"
			});
		}
	});
}

module.exports = {
	escoger,
};
