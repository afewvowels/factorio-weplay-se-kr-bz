data:extend({
  {
    type = "bool-setting",
    name = "standardizeStackSize",
    order = "a",
    setting_type = "startup",
    default_value = false,
    localised_name = "Standardize Stack Sizes?",
    localised_description = "Do you want to change default stack sizes? (Default: False)"
  },
  {
    type = "bool-setting",
    name = "singleStackSize",
    order = "b",
    setting_type = "startup",
    default_value = false,
    localised_name = "All stacks the same size?",
    localised_description = "Do you want all stacks to be the same size? (Default: False)"
  },
  {
      type = "int-setting",
      name = "universalStackSize",
      order = "c",
      setting_type = "startup",
      default_value = 200,
      minimum_value = 1,
      maximum_value = 500,
      localised_name = "New Universal Stack Size",
      localised_description = "Stack size to use if standardizing all stacks to the same value. Ranges from 1-500."
  },
  {
      type = "int-setting",
      name = "minStackSize",
      order = "d",
      setting_type = "startup",
      default_value = 10,
      minimum_value = 1,
      maximum_value = 100,
      localised_name = "New Small Stack Size",
      localised_description = "All items that stack below this value will be raised to this value and all items larger than this value will be standardized to the New Large Stack Size value. This min value ranges from 1-100. Note that if this min value is larger than the max value the default values of both settings will be used instead."
  },
  {
      type = "int-setting",
      name = "maxStackSize",
      order = "e",
      setting_type = "startup",
      default_value = 100,
      minimum_value = 50,
      maximum_value = 500,
      localised_name = "New Large Stack Size",
      localised_description = "All items that stack below this value will be raised to this value and all items larger than this value will be standardized to the New Large Stack Size value. This max value ranges from 50-500. Note that if this max value is smaller than the min value the default values of both settings will be used instead."
  }
})