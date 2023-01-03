require './basedecorater'
class CapitalizeDecorator < BaseDecorator
  def correct_name
    @nameable.correct_name.split.map(&:capitalize).join(' ')
  end
end
