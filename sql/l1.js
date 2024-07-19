// mongosh

// show dbs

// use students

// db.data1.insertOne({
//     name: "John Doe",
//     age: 25,
//     grades: [90, 85, 95]
// })

// db.data1.insertMany(
//     [
//         { "name": "JaneSmith", "age": 22, "grades": [88, 92, 90] },
//         { "name": "BobJohnson", "age": 23, "grades": [85, 95, 88], "gender": "male" },
//         { "name": "AliceWilson", "age": 21, "grades": [92, 87, 94] },
//         { "name": "DavidBrown", "age": 24, "grades": [90, 89, 91], "gender": "male" }
//     ])

// db.data1.find({ "grades": { $gt: 94 } })

// db.data1.find({"gender" : "male"})

// db.data1.aggregate([
//     { $match: { grades: { $gt: 94 } } },
//     { $group: { _id: null, averageGrade: { $avg: "$grades" } } }
// ])
