// 1  -> mongosh                                           // => use for connect shell.

//                 CREATING AND DELETING DATABASES  

// 2  -> show dbs                                          // => show all databases.                                                                                        
// 3  -> use <database name>                               // => this is create database  "NOTICE" => with out any collection your database is not show.
// 4  -> show collections                                  // => this is use for showing all collections.                           
// 5  -> db.createCollection("collection_Name")            // => this is use for create collection.                                                                          
// 6  -> db.collection_name.drop()                         // => this is use for delete collection.                                                              
// 7  -> db.dropDatabase()                                 // => this is use for delete database.  


//                 INSERT OPARATION                                                                                     
  
// 8  -> db.create_collection_name.insertOne({"Name":"Prince",age:19})     OR insert()         // => this is use for create collection and insert Any one field.

// 9  -> db.create_collection_name.insertMany({"Name":"Prince",age:19},
//                                            {"Name":"Prince",age:19},
//                                            {"Name":"Prince",age:19})                        // => this is use for create collection and insert multiple field.
   

//                  READ OPARATION                                                                                       
  
// 10 -> db.collection_name.find()                                                             // => this is use for read insert data and it is read multiple data.  

// 11 -> db.collection_name.findOne()                                                          // => give only 1 data of your collection.  
                                                                                             
// 12 -> db.collection_name.find().limit.(5)                                                   // => give only 2 data of your collection.   
                                                    
// 13 -> db.create_collection_name.insertMany([{"Name":"Prince",age:19}, 
//                                -> ERORR =>  {Name stdudent:Prince,age:19},
//                                             {"Name":"Prince",age:19}],
//                                             {ordered:false})                  // => In the Collection in 2(Seconde) line through Erorr but you add ""ordered:false"" at the Showing time your erorrable object skip and show third data.

// 14 ->  db.collection_name.find({"Name":"Prince"})                             // => this is find all document that start {"Name":"Prince"}
                                                                                 
// 15 ->  db.collection_name.findOne({"Name":"Prince"})                          // => this is find only 1(One) document that start {"Name":"Prince"}                                                                                    

//           IMPORT JSON FILE

// 16 ->  mongoimport --db Database_Name  -- collection collection_name  --file "enter your json file path"  --jsonArray
//        EX.  
//        mongoimport --db shop --collection sales --file "D:\Full Stack Devloaping\Backend Devloaping\Mongodb\JSON FILES\sales.json" --jsonArray 

//                                 => this command use for enter json file in the mongodb
                                                                                     
  
//       "NOTICE" => You can not import 16mb or smaller json file in this 


//         COMPARISON OPERATORS

// 17 -> 1 => $eq   (equal to)                                     // Syntax => db.collection_name.find(`field_name` : {$eq : `values`})
//       2 => $ne   (not eqaul to)                                 // Syntax => db.collection_name.find(`field_name` : {$ne : `values`})
//       3 => $gt   (greater than)                                 // Syntax => db.collection_name.find(`field_name` : {$gt : `values`})
//       4 => $gte  (greater than and equal to)                    // Syntax => db.collection_name.find(`field_name` : {$gte : `values`})
//       5 => $lt   (less than)                                    // Syntax => db.collection_name.find(`field_name` : {$lt : `values`})
//       6 => $lte  (less than and eqaul to)                       // Syntax => db.collection_name.find(`field_name` : {$lte : `values`})
//       7 => $in   (in)                                           // Syntax => db.collection_name.find(`field_name` : {$in : `[value,value,values....]`})
//       8 => $nin  (not in)                                       // Syntax => db.collection_name.find(`field_name` : {$nin : `[value,value,values....]`})


//        CURSOR  METHODES

// 18 -> 1 => count()         syntax =>  db.collection_name.find(`field_name` : {$gte : `values`}).count()
//       2 => limit()         syntax =>  db.collection_name.find(`field_name` : {$gte : `values`}).limit(4)
//       3 => skip()          syntax =>  db.collection_name.find(`field_name` : {$gte : `values`}).skip(1)
//       3 => sort()          syntax =>  db.collection_name.find(`field_name` : {$gte : `values`}).sort({price:-1 OR 1})  "NOTICE" => 1 sign assigning order and -1 sign designning order 


//        LOGICAL OPERATORS

// 19 ->  1 => $and    syntax => db.collection_Name.find({$and:[{`field_name` : {$gte : `values`}},{`field_name` : {$eq : `values`}}]})
//        2 => $or     syntax => db.collection_Name.find({$or:[{`field_name`:{$lt:`value`}},{`field name`:{$eq:values}}]})
//        3 => $not    syntax => db.collection_Name.find({`field_name` :{$not : {$lt:`value`}})
//        4 => $nor    syntax => db.collection_Name.find({$or:[{`field_name`:{$lt:`value`}},{`field name`:{$eq:values}}]})