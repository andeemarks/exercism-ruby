class DndCharacter
  def self.modifier(constitution)
    (constitution - 10) / 2
  end

  def total_highest_3_of_4_d6_rolls()
    rolls = [rand(1...6), rand(1...6), rand(1...6), rand(1...6)]

    return rolls.max(3).sum
  end

  def initialize
    @constitution = total_highest_3_of_4_d6_rolls
    @strength = total_highest_3_of_4_d6_rolls
    @dexterity = total_highest_3_of_4_d6_rolls
    @intelligence = total_highest_3_of_4_d6_rolls
    @wisdom = total_highest_3_of_4_d6_rolls
    @charisma = total_highest_3_of_4_d6_rolls
    @hitpoints = 10 + DndCharacter.modifier(@constitution)
  end

  attr_reader :constitution, :strength, :dexterity, :intelligence, :wisdom, :charisma, :hitpoints
end
