class ComputerCodeBreaker
  def initialize
    @code = set_code
    print @code
  end

  def set_code
    print "Please enter your 4-digit code:\n>"
    gets.chomp.chars.map(&:to_i)
  end
end
