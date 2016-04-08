include Math
class Base
  protected
  def square
    return "Sorry"
  end
  protected
  def perimetr
    return "Sorry"
  end
  private
  def volume
    return "Sorry"
  end
end
class Circle < Base
  @@id = 0
  def initialize(r)
    @r = r
    @@id += 1
  end
  def self.get_id
    return @@id
  end

  def square
    return @r*@r*PI
  end
  
  def perimetr
    return 2*@r*PI
  end
  def volume
    super
  end
end

class Square < Base
  @@id = 0
  def initialize(a)
    @a = a
    @@id += 1
  end
  def self.get_id
    return @@id
  end

  def square
    return @a*@a
  end

  def perimetr
    return 4*@a
  end
  def volume
    return "Error"
  end

end

class Rectangle < Base
  @@id = 0
  def initialize(a, b)
    @a = a
    @b = b
    @@id += 1
  end
  def self.get_id
    return @@id
  end

  def square
    return @a*@b
  end

  def perimetr
    return 2*(@a+@b)
  end
  def volume
    return "Error"
  end

end

class Cylinder < Base
  @@id = 0
  def initialize(r, h)
    @r = r
    @h = h
    @@id += 1
  end
  def self.get_id
    return @@id
  end

  def square
    return 2*PI*@r*(@h+@r)
  end
  def perimetr
    super
  end

  def volume
    return PI*@r*@r*@h
  end
end

f = [Circle.new(2), Circle.new(3),Square.new(4),Rectangle.new(5, 6), Cylinder.new(7, 8)]
f.each { |fig|
  puts " I'm a " + fig.class.to_s
  puts "Square: " + fig.square.to_s
  puts "Perimentr: " + fig.perimetr.to_s
  puts "Volume: " + fig.volume.to_s
}
puts Circle.get_id
puts Square.get_id
puts Rectangle.get_id
puts Cylinder.get_id
puts Circle.get_id
