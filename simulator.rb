class Simulator
  def instructions(directions)
    direction_chars = directions.upcase.chars
    direction_list = direction_chars.map do | dir |
      if dir == "L"
        :turn_left
      elsif dir == "R"
        :turn_right
      elsif dir == "A"
        :advance
      end
    end
  end

  def place(robot, options)
    robot.at(options[:x], options[:y])
    robot.orient(options[:direction])
  end

  def evaluate(robot, directions)
    direction_list = instructions(directions)
    direction_list.each do | dir |
      if dir == :turn_left
        robot.turn_left
      elsif dir == :turn_right
        robot.turn_right
      elsif dir == :advance
        robot.advance
      end
    end
  end
end