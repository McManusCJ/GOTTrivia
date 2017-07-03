/**
 * GameController
 *
 * @description :: Server-side logic for managing games
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */
const async = require('async');

/*function initGameVsPLayer(req,res){

  let categoria=req.body.categ;
  async.waterfall([

    function(callback){    //obtiene las preguntas de una categoria
      console.log(categoria);
      callback(null, Question.find({
          category:categoria,  //checar que coincida con lo de Fernanda
        },(err,data)=>{if(!err) {console.log(data); return data;}}));
        /*.exec((err,questionsCategory)=>{  //aqui no pasa. Intenta con then
          if(err)
            callback(err);
          else{
            console.log(questionsCategory);
            return questionsCategory;
          }

            //callback(null, questionsCategory);
        })
      );'
    },

    function(questionsCategory,callback){   //cuantas preguntas hay de la categoria
      console.log("segunda");
      var ids = new Array();
      for(var question of questionsCategory){
        console.log(question);
        ids.push(question.id);
      }

        //length++;   //validar que haya minimo 10 preguntas (en el controlador de Fernanda)
      callback(null,ids);
    },
    function(ids,callback){    //genera 10 numeros aleatorios
      console.log("tercera");
      var random = new Array();
      var cont = 0;
      while(cont<10)
      {
        var randomNumber = Math.floor(Math.random()*ids.length);
        //console.log(ids.length);
        if(random.indexOf(randomNumber) === -1){
          random.push(randomNumber);
          cont++;
        }
      }
      callback(null,random, ids);
    },
    function(random, ids, callback){
        var finalQuestionsIds = new Array();
        for(cont=0; cont<10; cont++)
        {
          finalQuestionsIds.push({id:ids[random[cont]]});
        }
        callback(null,finalQuestionsIds);
    }],
    (err,finalIds)=>{
        if(err)
          res.serverError();
        else {
          Question.find({or:finalIds})
          .exec((err,data)=>{
            if(err)
              return res.serverError("readQuestions");
            else
              res.view("readQuestions",{
                questions:data,
              });
          });
          console.log("todo bien");
        }
    }
  );
}*/
function initGameVsPLayer(req,res){
  Question.find({
    category:req.body.categ,  //checar que coincida con lo de Fernanda
  }).then((ids)=>{    //genera aleatorios
    //console.log(ids);
    var random = new Array();
    var finalQuestions = new Array();
    var cont=0;
    while(cont<10)
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
