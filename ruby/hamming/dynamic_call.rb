class A

  def fred
    puts "i'm fred"
  end

  def self.create_method(name, &block)
    self.class.send(:define_method, name, &block)
  end
  define_method(:wilma) { puts "charge it" }


end

class B < A
  define_method(:barney, instance_method(:fred))

end
