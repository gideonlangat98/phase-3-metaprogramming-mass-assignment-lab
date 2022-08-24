class Person
  # your code here
  attr_accessor :name, :birthday, :hair_color, :eye_color, :height
  attr_accessor :weight, :handed, :complexion, :t_shirt_size
  attr_accessor :wrist_size, :glove_size, :pant_length, :pant_width

  def initialize(attributes)
    attributes.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
  end
end

spencer_attributes = { name: "Spencer", hair_color: "N/A"}
spencer = Person.new(spencer_attributes)
spencer.name
spencer.hair_color
