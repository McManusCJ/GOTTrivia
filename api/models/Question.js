/**
 * Question.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {

  attributes: {
  	question:{
  		type: 'string',
  		required: true,
  	},
  	media:{
  		type: 'string',
  	},
  	answer1:{
  		type: 'string',
  		required: true,
  	},
  	answer2:{
  		type: 'string',
  		required: true,
  	},
  	answer3:{
  		type: 'string',
  		required: true,
  	},
  	answer4:{
  		type: 'string',
  		required: true,
  	},
  	correctAnswer:{
  		type: 'string',
  		required: true,
  	},
  	category:{
  		type: 'string',
  		required: true,
  	},
  }
};
