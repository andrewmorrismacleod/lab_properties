require ('pry')
require_relative('models/Property')

Property.delete_all

property1 = Property.new({
  'address' => '37 Castle Terrace',
  'value' => '500000',
  'number_of_bedrooms' => '2',
  'year_built' => '1980'
  })

  property2 = Property.new({
    'address' => '1 Royal Mile',
    'value' => '5000000',
    'number_of_bedrooms' => '200',
    'year_built' => '1280'
    })


property1.save
property2.save

found_property = Property.find(2)
found_property_2 = Property.find_by_address("37 Castle Terrace")
# found_property_3 = Property.find_by_address("10 Downing Street")
#
# property1.number_of_bedrooms = '3'
# property1.update

# property1.delete

binding.pry
nil
