class Robot
  attr_reader :bearing,
              :coordinates

  def orient(direction)
    directions = [:east, :west, :north, :south]
    if directions.include?(direction)
      @bearing = direction
    else
      raise ArgumentError.new
    end
  end

  def turn_right
    if @bearing == :north
      @bearing = :east
    elsif @bearing == :east
      @bearing = :south
    elsif @bearing == :south
      @bearing = :west
    elsif @bearing == :west
      @bearing = :north
    end

  end

  def turn_left
    if @bearing == :north
      @bearing = :west
    elsif @bearing == :east
      @bearing = :north
    elsif @bearing == :south
      @bearing = :east
    elsif @bearing == :west
      @bearing = :south
    end
  end

  def at(x, y)
    @coordinates = [x, y]
  end

  def advance
    x = @coordinates[0]
    y = @coordinates[1]
    if @bearing == :north
      y += 1
    elsif @bearing == :east
      x += 1
    elsif @bearing == :south
      y -= 1
    elsif @bearing == :west
      x -= 1
    end

    at x,y
  end
end
