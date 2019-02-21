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



doc1 = Doctor.create(name: "Robin Kim", email: "drkim@symptomatic.com", password: "YoungBean")
doc2 = Doctor.create(name: "Ashley Zaki", email: "drzaki@symptomatic.com", password: "SoCurry")
doc3 = Doctor.create(name: "Joseph Spinelli", email: "drspinelli@symptomatic.com", password: "CheeksClapped")
doc4 = Doctor.create(name: "Vlad Deryuzhenko", email: "drderyuzhenko@symptomatic.com", password: "OhMy")
doc5 = Doctor.create(name: "Anuj Sharma", email: "drsharma@symptomatic.com", password: "PingPongChamp")

pat1 = Patient.create(name: "John Travolta", email: "johnyt@hotmail.com", password: "111", age: 65, weight: 200, sex: "Male", height: "6.0")
pat2 = Patient.create(name: "Maya Angelou", email: "maya@hotmail.com", password: "111", age: 100, weight: 120, sex: "Female", height: "5.0")
pat3 = Patient.create(name: "Brad Pitt", email: "brad@hotmail.com", password: "111", age: 50, weight: 170, sex: "Male", height: "5.11")
pat4 = Patient.create(name: "Tom Holland", email: "tom@hotmail.com", password: "111", age: 22, weight: 140, sex: "Male", height: "5.9")
pat5 = Patient.create(name: "Chris Pratt", email: "chris@hotmail.com", password: "111", age: 35, weight: 200, sex: "Male", height: "6.0")
pat6 = Patient.create(name: "Jerry Chang", email: "jerry@hotmail.com", password: "111", age: 30, weight: 230, sex: "Male", height: "6.1")
pat7 = Patient.create(name: "Ryan Reynolds", email: "ryan@hotmail.com", password: "111", age: 40, weight: 220, sex: "Male", height: "6.2")
pat8 = Patient.create(name: "Jeniffer Aniston", email: "jeniffer@hotmail.com", password: "111", age: 48, weight: 130, sex: "Female", height: "5.7")


symp1 = Symptom.create(info: "Burning sensation in the nether regions", duration: "1 week", severity: 5, patient_id: pat1.id)
symp2 = Symptom.create(info: "Migraine", duration: "2 days", severity: 7, patient_id: pat4.id)
symp3 = Symptom.create(info: "Crackling cough", duration: "2 week", severity: 6, patient_id: pat2.id)
symp4 = Symptom.create(info: "Fever", duration: "1 day", severity: 6, patient_id: pat3.id)
symp5 = Symptom.create(info: "Blood in stool", duration: "1 month", severity: 3, patient_id: pat5.id)
symp6 = Symptom.create(info: "Tingling sensation in extremities", duration: "1 week", severity: 6, patient_id: pat6.id)
symp7 = Symptom.create(info: "Swollen ankle", duration: "5 days", severity: 7, patient_id: pat7.id)
symp8 = Symptom.create(info: "Cold", duration: "1 week", severity: 4, patient_id: pat8.id)







DoctorPatient.create(doctor_id: doc1.id, patient_id: pat1.id)
DoctorPatient.create(doctor_id: doc1.id, patient_id: pat2.id)
DoctorPatient.create(doctor_id: doc2.id, patient_id: pat3.id)
DoctorPatient.create(doctor_id: doc2.id, patient_id: pat4.id)
DoctorPatient.create(doctor_id: doc3.id, patient_id: pat5.id)
DoctorPatient.create(doctor_id: doc4.id, patient_id: pat6.id)
DoctorPatient.create(doctor_id: doc5.id, patient_id: pat7.id)
DoctorPatient.create(doctor_id: doc5.id, patient_id: pat8.id)
