module ApplicationHelper
  def get_values_from_options_for_selection(options)
    options.map { |option_value_pair| option_value_pair[1] }
  end
end
