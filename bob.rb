class Bob
  attr_accessor :remark
  def initialize
    @remark = remark
  end

  def feedback(remark)
    puts "Bob hears #{text.inspect}, and.."
  end

  def hey(remark)
    if remark.include?("\n")
      'Whatever.'
    elsif remark =~ /^\s/
      'Fine. Be that way!'
    elsif remark.to_s == ''
      'Fine. Be that way!'
    elsif remark.include?("!") && remark.include?("?")
      'Sure.'
    elsif remark =~ /\?./
      'Whatever.'
    elsif remark =~ /\W(\!)/
      'Whoa, chill out!'
    elsif remark =~ /\d(\?)/
      'Sure.'
    elsif remark =~ /[a-z](!)/
      'Whatever.'
    elsif remark =~ /^(\d*(\,)(\s))*(\d)(\s)[A-Z]*(\!)/
      'Whoa, chill out!'
    elsif remark =~ /^([A-Z]*(\s))*[A-Z]*(\?)$/
      'Whoa, chill out!'
    elsif remark =~ /^([A-Z]*(\s))*[A-Z]*(\!)$/
      'Whoa, chill out!'
    elsif remark =~ /\d(,)/
      'Whatever.'
    elsif remark =~ /^([A-Z]*(\s))*[A-Z]*$/
      'Whoa, chill out!'
    elsif remark.include?("?")
      'Sure.'
    elsif remark.to_s != remark.upcase
      "Whatever."
    else
      "Whatever."
    end
  end
end
