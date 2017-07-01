/**
 * CategController
 *
 * @description :: Server-side logic for managing categs
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */
const waterfall = require('async/waterfall');

function escoger (req,res){
	Categ.create({
		categoria: req.body.categoria,
		retador: req.body.retador,
		retado:req.body.retado,
	}).exec((err,categ)=>{
		console.log('hola');
 		if(err){
 			return res.status(500).send('Error');
 		}
 		return res.send('Espera tu respuesta :)');
	});
}

module.exports = {
	escoger,
};
