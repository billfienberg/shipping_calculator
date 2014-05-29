# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create Carriers
Carrier.create(name:"UPS")
Carrier.create(name:"FedEx")
Carrier.create(name:"Con-Way")
Carrier.create(name:"YRC")
Carrier.create(name:"Estes")
Carrier.create(name:"Knight")
Carrier.create(name:"Swift")

# Create Origins
Origin.create(name:"Simonton Windows", address:"2019 E Monte Vista Ave", city:"Vacaville", state:"CA", zip:95688)
Origin.create(name:"Simonton Windows", address:"1 Cochrane Dr", city:"Pennsboro", state:"WV", zip:26415)
Origin.create(name:"Simonton Windows", address:"13263 Illinois 133", city:"Paris", state:"IL", zip:61944)

# Create Destinations
Destination.create(name:"The Home Depot", address:"1675 Wilshire Blvd", city:"Los Angeles", state:"CA", zip:90017)
Destination.create(name:"The Home Depot", address:"303 Lake Merced Blvd", city:"Daly City", state:"CA", zip:94015)
Destination.create(name:"The Home Depot", address:"9300 SE 82nd Ave", city:"Happy Valley", state:"OR", zip:97086)
Destination.create(name:"The Home Depot", address:"2701 Utah Ave S", city:"Seattle", state:"WA", zip:98134)
Destination.create(name:"The Home Depot", address:"1220 N Renaissance Blvd NE", city:"Albuquerque", state:"NM", zip:87107)
Destination.create(name:"The Home Depot", address:"3609 E Thomas Rd", city:"Phoenix", state:"AZ", zip:85018)
Destination.create(name:"The Home Depot", address:"7881 W Tropical Pkwy", city:"Las Vegas", state:"NV", zip:89149)
Destination.create(name:"The Home Depot", address:"2955 Northtowne Ln", city:"Reno", state:"NV", zip:89512)
Destination.create(name:"The Home Depot", address:"328 W 2100 S Expy", city:"Salt Lake City", state:"UT", zip:84115)

# Create CarrierLocations (Approved Carriers)
CarrierDestination.create(destination_id:4, carrier_id:1)
CarrierDestination.create(destination_id:4, carrier_id:2)
CarrierDestination.create(destination_id:4, carrier_id:3)
CarrierDestination.create(destination_id:5, carrier_id:1)
CarrierDestination.create(destination_id:5, carrier_id:3)
CarrierDestination.create(destination_id:6, carrier_id:2)
CarrierDestination.create(destination_id:6, carrier_id:3)
CarrierDestination.create(destination_id:7, carrier_id:1)
CarrierDestination.create(destination_id:7, carrier_id:2)
CarrierDestination.create(destination_id:7, carrier_id:3)