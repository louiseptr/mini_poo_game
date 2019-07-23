require "pry"

#creating the class
class Player
  attr_accessor :name, :life_points, :damage_points, :attacked_player

#give a name and life points to the players
  def initialize (name)
    @name = name
    @life_points = 10.to_i
  end

#give the state of the players
  def show_state
    puts "#{name} a encore #{life_points} points de vie."
  end

#give damage and say if the player is dead or not
  def gets_damage (damage_points)
    @life_points -= damage_points
    if @life_points <= 0
    puts "#{name} a été tué!"
    end
  end

#attack the player
  def attacks (attacked_player)
    puts "#{self.name} attaque #{attacked_player.name}!"
    compute_damage
    @damage_points = compute_damage
    puts "#{self.name} inflige à #{attacked_player.name} #{damage_points} point(s) de dommages!"
    attacked_player.gets_damage(damage_points)
  end

#give the number of points of damage that will be removed
  def compute_damage 
    return rand (1..6)
  end

end
