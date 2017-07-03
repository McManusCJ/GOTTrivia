/**
 * GameController
 *
 * @description :: Server-side logic for managing games
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */
const async = require('async');

function initGameVsPLayer(req,res){
  Question.find({
    category:req.body.catego,  //
  }).then((ids)=>{
    var random = new Array();
    var finalQuestions = new Array();
    var cont=0;
    while(cont<10)    //genera y escoge 10 preguntas aleatoriamente
    {
      var randomNumber = Math.floor(Math.random()*ids.length);
      if(random.indexOf(randomNumber)===-1)
      {
          random.push(randomNumber);
          finalQuestions.push(ids[randomNumber]);
          cont++;
      }
      if(cont==10)
        res.view('readQuestions',{
          questions:finalQuestions,
        });
    }
  }).catch((error)=>{
    return res.serverError("Error en generacion de preguntas"+error);
  });
}

module.exports = {
  initGameVsPLayer,
};
