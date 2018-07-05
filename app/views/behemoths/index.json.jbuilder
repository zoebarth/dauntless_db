json.array! @behemoths do |b|
  json.name b.name
  json.locations b.locations
  json.reagents b.reagents
  json.damage_type_ids b.damage_type_ids
  json.weakness_type_ids b.weakness_type_ids
  json.logo b.logo
  json.id b.id
end