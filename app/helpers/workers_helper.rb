module WorkersHelper
  def worker_address(worker) 
    contact_information = worker.contact_information
    address = 
      "
        #{contact_information.line_1}, 
        #{contact_information.line_2}, 
        #{contact_information.pincode}, 
        #{contact_information.city}
        #{contact_information.state}
      "
    address
  end

end
