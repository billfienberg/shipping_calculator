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

# Create TransitTimes
TransitTime.create(carrier_id:1, origin_id:1, destination_id:2,number_of_days:2)
TransitTime.create(carrier_id:1, origin_id:1, destination_id:3,number_of_days:1)
TransitTime.create(carrier_id:1, origin_id:1, destination_id:4,number_of_days:3)
TransitTime.create(carrier_id:2, origin_id:1, destination_id:1,number_of_days:3)
TransitTime.create(carrier_id:2, origin_id:1, destination_id:3,number_of_days:1)
TransitTime.create(carrier_id:2, origin_id:1, destination_id:4,number_of_days:2)
TransitTime.create(carrier_id:3, origin_id:1, destination_id:1,number_of_days:2)
TransitTime.create(carrier_id:3, origin_id:1, destination_id:2,number_of_days:2)
TransitTime.create(carrier_id:3, origin_id:1, destination_id:4,number_of_days:3)
TransitTime.create(carrier_id:4, origin_id:1, destination_id:1,number_of_days:4)
TransitTime.create(carrier_id:4, origin_id:1, destination_id:2,number_of_days:3)
TransitTime.create(carrier_id:4, origin_id:1, destination_id:3,number_of_days:2)

# Create Holidays
Holiday.create(name:"New Years Day", date:DateTime.parse("1/2014"))
Holiday.create(name:"Memorial Day", date:DateTime.parse("26/5/2014"))
Holiday.create(name:"4th of July", date:DateTime.parse("4/7/2014"))
Holiday.create(name:"Labor Day", date:DateTime.parse("1/9/2014"))
Holiday.create(name:"Thanksgiving", date:DateTime.parse("27/11/2014"))
Holiday.create(name:"Black Friday", date:DateTime.parse("28/11/2014"))
Holiday.create(name:"Christmas Day", date:DateTime.parse("25/12/2014"))
Holiday.create(name:"New Years Eve", date:DateTime.parse("31/12/2014"))
Holiday.create(name:"New Years Day", date:DateTime.parse("1/1/2015"))
Holiday.create(name:"Memorial Day", date:DateTime.parse("25/5/2015"))
Holiday.create(name:"4th of July", date:DateTime.parse("4/7/2015"))
Holiday.create(name:"Labor Day", date:DateTime.parse("7/9/2015"))
Holiday.create(name:"Thanksgiving", date:DateTime.parse("26/11/2015"))
Holiday.create(name:"Black Friday", date:DateTime.parse("27/11/2015"))
Holiday.create(name:"Christmas Day", date:DateTime.parse("25/12/2015"))
Holiday.create(name:"New Years Eve", date:DateTime.parse("31/12/2015"))

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
CarrierDestination.create(destination_id:1, carrier_id:1)
CarrierDestination.create(destination_id:1, carrier_id:2)
CarrierDestination.create(destination_id:1, carrier_id:3)
CarrierDestination.create(destination_id:2, carrier_id:1)
CarrierDestination.create(destination_id:2, carrier_id:3)
CarrierDestination.create(destination_id:3, carrier_id:2)
CarrierDestination.create(destination_id:3, carrier_id:3)
CarrierDestination.create(destination_id:4, carrier_id:1)
CarrierDestination.create(destination_id:4, carrier_id:2)
CarrierDestination.create(destination_id:4, carrier_id:3)

# Createnumber_of_days
Day.create(carrier_id:1, destination_id:4, sn:false, m:true, t:false, w:true, r:false, f:false, sa:false)
Day.create(carrier_id:1, destination_id:5, sn:false, m:false, t:true, w:true, r:false, f:true, sa:false)
Day.create(carrier_id:1, destination_id:6, sn:false, m:false, t:false, w:true, r:false, f:false, sa:false)
Day.create(carrier_id:1, destination_id:7, sn:false, m:true, t:false, w:false, r:true, f:false, sa:false)
Day.create(carrier_id:1, destination_id:8, sn:false, m:false, t:false, w:false, r:true, f:true, sa:false)
Day.create(carrier_id:2, destination_id:4, sn:false, m:false, t:true, w:false, r:true, f:false, sa:false)
Day.create(carrier_id:2, destination_id:5, sn:false, m:true, t:false, w:true, r:false, f:true, sa:false)
Day.create(carrier_id:2, destination_id:6, sn:false, m:false, t:true, w:false, r:false, f:true, sa:false)
Day.create(carrier_id:2, destination_id:7, sn:false, m:false, t:true, w:false, r:false, f:true, sa:false)
Day.create(carrier_id:2, destination_id:8, sn:false, m:true, t:false, w:true, r:false, f:false, sa:false)
Day.create(carrier_id:3, destination_id:4, sn:false, m:true, t:true, w:false, r:true, f:false, sa:false)
Day.create(carrier_id:3, destination_id:5, sn:false, m:true, t:false, w:false, r:false, f:true, sa:false)
Day.create(carrier_id:3, destination_id:6, sn:false, m:false, t:true, w:true, r:false, f:false, sa:false)
Day.create(carrier_id:3, destination_id:7, sn:false, m:true, t:false, w:true, r:false, f:true, sa:false)
Day.create(carrier_id:3, destination_id:8, sn:false, m:false, t:true, w:false, r:true, f:false, sa:false)

# Create DestinationHolidays
DestinationHoliday.create(destination_id:1,holiday_id:1)
DestinationHoliday.create(destination_id:1,holiday_id:2)
DestinationHoliday.create(destination_id:1,holiday_id:4)
DestinationHoliday.create(destination_id:1,holiday_id:6)
DestinationHoliday.create(destination_id:2,holiday_id:2)
DestinationHoliday.create(destination_id:2,holiday_id:3)
DestinationHoliday.create(destination_id:2,holiday_id:5)
DestinationHoliday.create(destination_id:2,holiday_id:7)
DestinationHoliday.create(destination_id:3,holiday_id:4)
DestinationHoliday.create(destination_id:3,holiday_id:6)
DestinationHoliday.create(destination_id:3,holiday_id:8)
DestinationHoliday.create(destination_id:3,holiday_id:10)
DestinationHoliday.create(destination_id:4,holiday_id:2)
DestinationHoliday.create(destination_id:4,holiday_id:3)
DestinationHoliday.create(destination_id:4,holiday_id:5)
DestinationHoliday.create(destination_id:4,holiday_id:9)
