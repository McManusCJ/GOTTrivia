/**
 * User.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */
const bcrypt = require('bcryptjs');

module.exports = {

  attributes: {
    name:{
      type:'string',
      required:true,
    },
    password:{
      type:'string',
      required:true,
    },
    birthday:{
      type:'date',
      required:true,
    },
    avatar:{
      type:'integer',
      required:true,
    }
  },

  beforeCreate: (values,cb) => {
    return bcrypt.hash(values.password, 18, (err,hash)=>{
      if(err)
          return cb(err);
      values.password=hash;
      return cb(null,values);
   });
  }

};
