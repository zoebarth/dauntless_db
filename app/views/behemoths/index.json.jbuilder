json.array! @behemoths do |b|
  json.name b.name
  json.locations b.locations
  json.reagents b.reagents
  json.damage_types b.damage_types
  json.weakness_types b.weakness_types
  json.logo b.logo
  json.id b.id
end