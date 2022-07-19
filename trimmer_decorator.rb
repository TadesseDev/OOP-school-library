require_relative 'base_decorator'
class TrimmerDecorator < BaseDecorator
  def correct_name
    super().capitalize
  end
end
