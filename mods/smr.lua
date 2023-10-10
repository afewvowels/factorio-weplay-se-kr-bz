-- Modify SMR reactors to accept input and to also have a bigger capacity



local function modifySMRGenerator(name)
    local buffer_capacity, flow_limit

    buffer_capacity = string.match(data.raw["accumulator"][name].energy_source.buffer_capacity, "(%d+)")
    buffer_capacity = buffer_capacity * 10
    data.raw["accumulator"][name].energy_source.buffer_capacity = buffer_capacity .. "GJ"


    flow_limit = string.match(data.raw["accumulator"][name].energy_source.output_flow_limit, "(%d+)")
    flow_limit = flow_limit * 100
    data.raw["accumulator"][name].energy_source.output_flow_limit = flow_limit .. "MW"
    data.raw["accumulator"][name].energy_source.input_flow_limit = flow_limit .. "MW"
end

modifySMRGenerator("smr-generator-1")
modifySMRGenerator("smr-generator-2")
modifySMRGenerator("smr-generator-3")

data.raw["item-with-tags"]["smr-generator-1"].stack_size = 200
data.raw["item-with-tags"]["smr-generator-2"].stack_size = 200
data.raw["item-with-tags"]["smr-generator-3"].stack_size = 200