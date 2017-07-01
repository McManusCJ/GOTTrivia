/**
 * Game.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

//const bcrypt = require('bcrypt');
module.exports = {

  attributes: {
  	question:{
  		type: 'varchar',
  		required: true,
  	},
  	media:{
  		type: 'varchar',
  		required: true,
  	},
  	answer1:{
  		type: 'varchar',
  		required: true,
  	},
  	answer2:{
  		type: 'varchar',
  		required: true,
  	},
  	answer3:{
  		type: 'varchar',
  		required: true,
  	},
  	answer4:{
  		type: 'varchar',
  		required: true,
  	},
  	correctAnswer:{
  		type: 'varchar',
  		required: true,
  	},
  	category:{
  		type: 'varchar',
  		required: true,
  	},
  }
};
