json.array! @behemoths do |b|
  json.id b.id
  #json.reagents b.
  json.name b.name
  json.damage_type_ids b.damage_type_ids
  json.weakness_type_ids b.weakness_type_ids
  json.logo b.logo
  json.reagents b.reagents
  json.locations b.locations

end