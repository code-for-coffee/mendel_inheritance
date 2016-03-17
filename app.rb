require 'bundler' # using ruby to require a gem
Bundler.require # load all the gems in the gemfile

class Peaplant

  attr_accessor :seeds, :meta

  #when the plant germinates
  def initialize(flower_colour, *meta)
    @flower_colour = flower_colour
    @@seeds = true
    @meta = meta
  end

  def to_s
    "A simple pea plant with #{@flower_colour} flowers."
  end

end

class MutantPeaplant < Peaplant

end

class SpaceStationPeaplant < Peaplant

  attr_accessor :flower_colour

  def absorb_radiation(amount)
    @flower_colour = 'translucent and magical in space'
  end

end


# white_flower_pea_plant = Peaplant.new('white')
# p white_flower_pea_plant
# p white_flower_pea_plant.seeds
# p white_flower_pea_plant.to_s
# magenta_flower_pea_plant = Peaplant.new('magenta', 'bob marley', 'doing the science', 'pizza')
# p magenta_flower_pea_plant
# p magenta_flower_pea_plant.meta
# p magenta_flower_pea_plant.to_s
# p white_flower_pea_plant.seeds = false
# purple_flower_pea_plant = Peaplant.new('purple')
# p purple_flower_pea_plant
# p purple_flower_pea_plant.to_s
# p purple_flower_pea_plant.seeds
horrific_green_pea_plant = MutantPeaplant.new('terrible, ugly green')
p horrific_green_pea_plant.to_s
space_plant = SpaceStationPeaplant.new('purple')
p space_plant.flower_colour
space_plant.absorb_radiation(9000000000000000000000)
p space_plant.to_s
