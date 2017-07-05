/**
 * QuestionController
 *
 * @description :: Server-side logic for managing questions
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */
function newQuestion(req,res){
	Question.create({
		question: req.body.question,
		media: req.body.media,
		answer1: req.body.an1,
		answer2: req.body.an2,
		answer3: req.body.an3,
		answer4: req.body.an4,
		correctAnswer: req.body.correct,
		category: req.body.category,
	}).then(()=>{
		res.status(200).view('ready');
	})
	.catch((err)=>{
		res.status(500).send('ocurrio algo');
	})
}
module.exports = {
	newQuestion,
};
