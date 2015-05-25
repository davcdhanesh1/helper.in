module ApplicationHelper
  def generate_option_value_pairs(value_arr)
    value_arr.map do | value |
      [value.gsub("_", " ").capitalize, value]
    end
  end
end
