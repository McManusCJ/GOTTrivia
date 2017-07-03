/**
 * GameController
 *
 * @description :: Server-side logic for managing games
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

 function readQuestions(req, res){
  	return Game.find()
  		.exec((err,foundQuestions) => {
        if(err){
          return res.status(500).send("Something was wrong");
        }
        else
    			return res.status(200).render('readQuestions',{
    				questions:foundQuestions
    			});
   });
}

module.exports = {
	readQuestions,
};
