# Part A
## 1
    db.EMPLOYEES.find({GENDER : 'Male'})   
## 2
    db.EMPLOYEES.find({CITY : 'London'})   
## 3
    db.EMPLOYEES.find({SALARY : {$gt : 3500}})
## 4
    db.EMPLOYEES.find({ JOININGDATE: { $lt: "01-JAN-15" } })
## 5
    db.EMPLOYEES.find({ EID: { $gte: 7 } })
## 6
    db.EMPLOYEES.find({ CITY: { $in: ["London", "New York"] } })
## 7
    db.EMPLOYEES.find({ CITY: { $nin: ["London", "New York"] } })
## 8
    db.EMPLOYEES.find({ CITY: "London" }, { EID: 1, _id: 0 })
## 9
    db.EMPLOYEES.find({ CITY: "New York" }, { ENAME: 1, _id: 0 }).limit(2)
## 10
    db.EMPLOYEES.find({ CITY: "London" }).skip(2).limit(2)
## 11
    db.EMPLOYEES.find({ GENDER: "Male", CITY: "Sydney" })
## 12
    db.EMPLOYEES.find({ CITY: { $in: ["London", "Sydney"] } }, { EID: 1, ENAME: 1, CITY: 1, SALARY: 1, _id: 0 })
## 13
    db.EMPLOYEES.find({ SALARY: { $gt: 7000 } }, { ENAME: 1, SALARY: 1, CITY: 1, _id: 0 })
## 14
    db.EMPLOYEES.find({ ENAME: { $regex: /^E/ } })
## 15
    db.EMPLOYEES.find({ ENAME: { $regex: /^[SM]/ } })
## 16
    db.EMPLOYEES.find({ ENAME: { $regex: /^[A-M]/ } })
## 17
    db.EMPLOYEES.find({ CITY: { $regex: /ney$/ } })
## 18
    db.EMPLOYEES.find({ CITY: { $regex: /[Nn]/ } })
## 19
    db.EMPLOYEES.find({ CITY: { $regex: /E/ } })
## 20
    db.EMPLOYEES.find({ CITY: { $regex: /^s.*a/ } })