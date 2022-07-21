class Rental
  attr_accessor :date
  def initialize(date)
    @date = date
  end

  def get_date
    @date
  end
  def set_date(date)
    @date = date
  end
end
