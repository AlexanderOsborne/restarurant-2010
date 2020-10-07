class Restaurant
attr_reader :name, :dishes, :opening, :closing

  def initialize(opening, name, dishes = [])
    @opening = opening
    @name = name
    @dishes = dishes
    @closing = closing
  end

  def opening_time
    @opening
  end

  def closing_time(hours)
    @closing = @opening.to_f + hours.to_f
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    if @opening.to_f < 12.00
      return true
    else
      return false
    end
  end

  # def menu_dish_names
  #   @dishes.each do |dish|
  #     dish.upcase
  #     p dish
  #   end
  # end

end
