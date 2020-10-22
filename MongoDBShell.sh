[ Mongo ]

$mongoimport -d mydb -c mycollection --type CSV --file ./mydb.csv  --headerline 



[ Tables ]

use Database1 #uses & creates a new database

db.dropDatabase()

show dbs



[ Collections ]

db.createCollection("staff_info") #create collection

db.staff_info.insert({name:"jenny", age:23, status:"senior"}) #add data to collection

show collections

db.staff_info.drop() #delete a collection



[ Records ]

db.staff_info.find() #reading a row

db.staff_info.find({name:"jenny"})

db.staff_info.updateOne({name:"jenny"},{$set:{status:"junior"}}) #update

db.staff_info.remove({name:"jenny"})

