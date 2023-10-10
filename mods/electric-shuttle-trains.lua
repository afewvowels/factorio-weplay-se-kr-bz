-- Modifications to Electric Shuttle Trains mod to increase electric shuttle fuel capacity beyond 2MW

data.raw["electric-energy-interface"]["electric-shuttle-hidden-receiver-over-stopped-locomotive"].energy_source.buffer_capacity = "10MW"
data.raw["electric-energy-interface"]["electric-shuttle-hidden-receiver-over-stopped-locomotive"].energy_source.input_flow_limit = "10MW"
data.raw["item"]["electric-shuttle-hidden-fuel"].fuel_value = "200MJ"