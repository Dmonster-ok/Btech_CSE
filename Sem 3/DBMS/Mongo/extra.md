# Part A
## 1
    db.Student.find()
## 2
    Extra> db.Student.find({FailedinSub : 'DS'})
## 3
    db.Student.find({$and : [{FailedinSub : 'DS'},{Branch : 'ME'}]})
## 4
    db.Student.updateMany({Rno: 104},{$push : {FailedinSub: 'DS'}})
## 5
    db.Student.updateMany({Rno: 101},{$pull : {FailedinSub: 'DS'}})


# Part B
## 1 
    db.Employee.find({'Address.City' : 'Morbi'})
## 2
    
