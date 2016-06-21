class Bob
  attr_accessor :remark
  def initialize
    @remark = remark
  end

  def feedback(remark)
    puts "Bob hears #{text.inspect}, and.."
  end

  def shouting
    remark.to_s != remark.upcase
  end

  def shouting_gibberish
    remark =~ /^[A-Z]*$/
  end

  def asking_a_question
    remark =~ /^[A-Z]([a-z]*\s)*[a-z]*(\?)$/
    # remark.to_s == remark.include?("?")
  end

  def asking_a_numeric_question
    /^[A-Z]([a-z]*\s)*([a-z]*\,\s)*([a-z]*\s)*\d*\?$/
  end

  def asking_gibberish
    /^[a-z]*\?$/
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
    elsif @asking_gibberish
      'Sure.'
    elsif @asking_a_numeric_question
      'Sure.'
    elsif @shouting_gibberish
      'Sure.'
    elsif @asking_a_question
      'Sure.'
    elsif @shouting
      "Whatever."
    else
      "Whatever."
    end
  end
end
