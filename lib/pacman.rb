class Pacman
  def tick(direction, position_x, position_y)
    if Grid.enemy?(position_x, position_y + 1)
      die
    else
      eat(position_x, position_y - 1)
    end
  end

  def eat(x, y)
  end

  def die
  end
end