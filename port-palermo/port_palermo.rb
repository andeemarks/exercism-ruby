module Port
  # TODO: define the 'IDENTIFIER' constant
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    return city[0, 4].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    ship_id = ship_identifier.to_s
    cargo = ship_id[0, 3]

    return :A if cargo == "OIL" or cargo == "GAS" 
  
    return :B
  end
end
