const express = require('express');
const router = express.Router();
const instance = require('../database/db');

//
//  putperson / getperson is just out of laziness as I explore the neode orm api and neo4j
//
//



// http://localhost:9001/api/putperson
router.get('/putperson', async (req, res, next) => {
 
  try {

    const adam = await instance.create('Person', {name: 'Adam', age: 29, email: 'adam@gmail.com'});
    const mary = await instance.create('Person', {name: 'Mary', age: 27, email: 'mary@gmail.com'});
    const bo = await instance.create('Skill', {name: 'Bo Staff'});  

    await adam.relateTo(bo, 'has', {name: 'foo', startedUsing: new Date(2014, 11, 24, 10, 33, 30, 0), since: 2014});


    const name = await adam.get('name');

    res.status(200).json(adam.toJson());
  } catch (error) {
    console.log(error);
    res.status(500).send(error); 
  }
});

http://localhost:9001/api/getperson
router.get('/getperson', async (req, res, next) => {
 
  try {


    res.status(200).json(result);
  } catch (error) {
    console.log(error);
    res.status(500).send(error);
  }
});

module.exports = router;
