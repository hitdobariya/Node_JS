// use users


//   db.user.find({})


// db.user.find().count()


// db.book.find({country : "India"})


// db.book.aggregate([{
//     $match : {
//         country : "India"
//     }
// }])


// db.book.find({},{country:1,author:1,_id:0})


// db.book.find({}).project({country:1,author:1,_id:0})


// db.book.find({}).select({country:1,author:1})


// db.book.aggregate([{
//     $project:{country:1,author:1,_id:0}
// }])


// db.book.aggregate([
//     {$match:{year:{$gte:1000}}},
//     {$project:{country:1,author:1,year:1}},
//     {$sort:{year:1}}
// ])