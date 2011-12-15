module ApplicationHelper
  def format_pet_type(type)
    case type
    when "Cat::Cat"
      "Cat"
    when "Dog::Dog"
      "Dog"
    end
  end
end
