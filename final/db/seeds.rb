# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Deletes everything from the database so that you start fresh
puts "Deleting all records from the database..."
Newcost.delete_all
User.delete_all
Typeofcost.delete_all
Vendor.delete_all

# Create the newcosts
puts "Creating newcosts..."
cost1 = Newcost.create(user_id: vivabemcoop.id, typeofcost_id: type1.id, vendor_id: vendor1.id, date:"4/9/2015", value: "37.00", description: "April Electricity")
cost2 = Newcost.create(user_id: vivabemcoop.id, typeofcost_id: type2.id, vendor_id: vendor2.id, date:"4/1/2015", value: "1200.00", description: "Jose's Salary")
cost3 = Newcost.create(user_id: vivabemcoop.id, typeofcost_id: type3.id, vendor_id: vendor3.id, date:"4/9/2015", value: "100.00", description: "Warehouse painting")
cost4 = Newcost.create(user_id: vivabemcoop.id, typeofcost_id: type4.id, vendor_id: vendor4.id, date:"4/9/2015", value: "400.00", description: "April paper")
cost5 = Newcost.create(user_id: vivabemcoop.id, typeofcost_id: type5.id, vendor_id: vendor5.id, date:"4/9/2015", value: "41.00", description: "Toilet paper")

# Create the users
puts "Creating users..."
vivabemcoop = User.create(name: "Viva Bem Coop", datejoined: "4/1/2015", useremail: "email1@vivabem.com.br")
coopsaopaulo = User.create(name: "Coop Sao Paulo", datejoined: "4/2/2015", useremail: "coopsaopaulo@gmail.com")
ativarecycle = User.create(name: "Ativa recycle", datejoined: "4/3/2015", useremail: "ativa@ativa.com.br")
recycle4good = User.create(name: "Recycle4good", datejoined: "4/4/2015", useremail: "contact@recycle4good.com")
greenworld = User.create(name: "Green World", datejoined: "4/5/2015", useremail: "contacto@greenworld.com")

# Create the typeofcosts
puts "Creating typeofcosts..."
type1 = Typeofcost.create(name: "Electricity bill", vendor_id: vendor1.id)
type2 = Typeofcost.create(name: "Salary", vendor_id: vendor2.id)
type3 = Typeofcost.create(name: "Maintainance", vendor_id: vendor3.id)
type4 = Typeofcost.create(name: "Office supply", vendor_id: vendor4.id)
type5 = Typeofcost.create(name: "Minor expenses", vendor_id: vendor5.id)

# Create the vendors
puts "Creating vendors..."
vendor1 = Vendor.create(vendorname: "Electricity SA", vendorregistration: "12345-67", vendoremail: "NA")
vendor2 = Vendor.create(vendorname: "Jose Silva", vendorregistration: "89101-11", vendoremail: "jose@gmail.com")
vendor3 = Vendor.create(vendorname: "Paint SA", vendorregistration: "21314-15", vendoremail: "paint@paint.com.br")
vendor4 = Vendor.create(vendorname: "Dunder Mifflin", vendorregistration: "16171-81", vendoremail: "jim@dundermifflin.com")
vendor5 = Vendor.create(vendorname: "Supermarket SA", vendorregistration: "55667-78", vendoremail: "NA")

puts "There are now #{Newcost.count} studios, #{User.count} movies, #{Typeofcost.count} actors, and #{Vendor.count} roles in the database."