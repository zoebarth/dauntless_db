json.array! @armors do |armor|
  json.id armor.id
  json.name armor.name 
  json.type armor.armor_type
  json.cell_slot armor.cell_slot_type
  json.base_armor armor.base_armor  
  json.elemental_resistance armor.elemental_resistance
  json.elemental_resistance_amount armor.elemental_resistance_amount
  json.elemental_weakness armor.elemental_weakness
  json.elemental_weakness_amount armor.elemental_weakness_amount
  json.perk armor.perk
  json.perk_amount armor.perk_amount
end