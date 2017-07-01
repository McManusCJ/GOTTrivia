/**
 * GameController
 *
 * @description :: Server-side logic for managing games
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

 function readQuestions(req, res){
	return Game.find()
		.then((foundQuestion) => {
			res.status(200).render('readQuestions',{
				question: 'foundQuestion'
			});
			
		})
		.catch((err) =>{
			res.status(500).send("Something was wrong");
		});
 } 
 
module.exports = {
	readQuestions,
};

