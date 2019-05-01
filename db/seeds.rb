# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Doctor.destroy_all
Patient.destroy_all
Symptom.destroy_all
DoctorPatient.destroy_all



doc1 = Doctor.create(name: "Robin Kim", email: "drkim@symptomatic.com", password: "111")
doc2 = Doctor.create(name: "Ashley Zaki", email: "drzaki@symptomatic.com", password: "111")
doc3 = Doctor.create(name: "Joseph Spinelli", email: "drspinelli@symptomatic.com", password: "111")
doc4 = Doctor.create(name: "Vlad Deryuzhenko", email: "drvlad@symptomatic.com", password: "111")
doc5 = Doctor.create(name: "Anuj Sharma", email: "drsharma@symptomatic.com", password: "111")

pat1 = Patient.create(name: "John Travolta", email: "johnyt@hotmail.com", password: "111", age: "1960/04/24", weight: 200, sex: "Male", height: "6.0", picture: "https://a57.foxnews.com/media2.foxnews.com/BrightCove/694940094001/2019/01/08/931/524/694940094001_5987127392001_5987123072001-vs.jpg?ve=1&tl=1")
pat2 = Patient.create(name: "Maya Angelou", email: "maya@hotmail.com", password: "111", age: "1960/04/24", weight: 120, sex: "Female", height: "5.0", picture: "https://www.gannett-cdn.com/-mm-/715ca9c0e763b8130298f4265b5bcaf4898a79e5/c=0-146-1370-1177/local/-/media/USATODAY/GenericImages/2014/05/28//1401284180000-XXX-ANGELOU-MOM-BOOKS-2370.jpg?width=534&height=401&fit=crop")
pat3 = Patient.create(name: "Brad Pitt", email: "brad@hotmail.com", password: "111", age: "1960/04/24", weight: 170, sex: "Male", height: "5.11", picture: "https://www.biography.com/.image/t_share/MTQ1MTQxMDg1NTc0ODAwODY1/brad-pitt---fight-club.jpg")
pat4 = Patient.create(name: "Tom Holland", email: "tom@hotmail.com", password: "111", age: "1960/04/24", weight: 140, sex: "Male", height: "5.9", picture: "https://pmcvariety.files.wordpress.com/2017/05/tom-holland-uncharted.jpg?w=1000")
pat5 = Patient.create(name: "Chris Prat", email: "chris@hotmail.com", password: "111", age: "1960/04/24", weight: 200, sex: "Male", height: "6.0", picture: "https://thenypost.files.wordpress.com/2018/12/chris-pratt-guide.jpg?quality=90&strip=all")
pat6 = Patient.create(name: "Henry Golding", email: "henry@hotmail.com", password: "111", age: "1989/10/03", weight: 230, sex: "Male", height: "6.1", picture: "https://www.straitstimes.com/sites/default/files/styles/article_pictrure_780x520_/public/articles/2017/03/30/ST_20170330_LIFGOLD_3040036.jpg?itok=36Lm-lRb&timestamp=1490811454")
pat7 = Patient.create(name: "Ryan Reynolds", email: "ryan@hotmail.com", password: "111", age: "1957/01/04", weight: 220, sex: "Male", height: "6.2", picture: "https://media.brstatic.com/2017/05/12141819/ryan-reynolds-networth.jpg")
pat8 = Patient.create(name: "Jeniffer Aniston", email: "jeniffer@hotmail.com", password: "111", age: "1960/04/24", weight: 130, sex: "Female", height: "5.7", picture: "https://www.cheatsheet.com/wp-content/uploads/2019/02/Jennifer-Aniston-1.jpg")
pat9 = Patient.create(name: "Billy Bob Thornton", email: "billy@hotmail.com", password: "111", age: "1960/08/22", weight: 150, sex: "Male", height: "5.9", picture: "https://cdn.aarp.net/content/dam/aarp/entertainment/television/2018/06/1140-billy-bob-thornton-golden-globe.imgcache.rev0de8215996b31eb52a1428a37db14fcd.jpg")
pat9 = Patient.create(name: "Joseph Spinelli", email: "joe@hotmail.com", password: "111", age: "1998/08/22", weight: 150, sex: "Male", height: "5.9", picture: "https://i.imgur.com/sWwnXiC.jpg")
pat9 = Patient.create(name: "Mandy Pilof", email: "mandy@hotmail.com", password: "111", age: "1993/08/22", weight: 135, sex: "Female", height: "5.9", picture: "https://i.imgur.com/lz8fsFK.jpg")
pat9 = Patient.create(name: "Benjamin Adai", email: "ben@hotmail.com", password: "111", age: "1995/08/22", weight: 180, sex: "Male", height: "5.7", picture: "https://i.imgur.com/Lo7g7Xz.jpg")

symp1 = Symptom.create(info: "Burning sensation in the nether regions", duration: "1/31/19", severity: 5, patient_id: pat1.id)
symp2 = Symptom.create(info: "Migraine", duration: "2/28/19", severity: 7, patient_id: pat4.id)
symp3 = Symptom.create(info: "Crackling cough", duration: "6/20/18", severity: 6, patient_id: pat2.id)
symp4 = Symptom.create(info: "Fever", duration: "5/15/17", severity: 6, patient_id: pat3.id)
symp5 = Symptom.create(info: "Blood in stool", duration: "9/11/18", severity: 3, patient_id: pat5.id)
symp6 = Symptom.create(info: "Tingling sensation in extremities", duration: "1/15/17", severity: 6, patient_id: pat6.id)
symp7 = Symptom.create(info: "Swollen ankle", duration: "6/1/16", severity: 7, patient_id: pat7.id)
symp8 = Symptom.create(info: "Cold", duration: "7/22/18", severity: 4, patient_id: pat8.id)







DoctorPatient.create(doctor_id: doc1.id, patient_id: pat1.id)
DoctorPatient.create(doctor_id: doc1.id, patient_id: pat2.id)
DoctorPatient.create(doctor_id: doc2.id, patient_id: pat3.id)
DoctorPatient.create(doctor_id: doc2.id, patient_id: pat4.id)
DoctorPatient.create(doctor_id: doc3.id, patient_id: pat5.id)
DoctorPatient.create(doctor_id: doc4.id, patient_id: pat6.id)
DoctorPatient.create(doctor_id: doc5.id, patient_id: pat7.id)
DoctorPatient.create(doctor_id: doc5.id, patient_id: pat8.id)
