class Bob
  attr_accessor :remark
  def initialize
    @remark = remark
  end


##__________
## Statements
  def stating_something
    /.*\./
    # /^[A-Z]([[[[a-z]-],]\s])*([.])/
  end

  def using_acronyms_in_regular_speech
    # remark.include(/([A-Z]){3,}/)

  end


##___________
## Questions
  def asking_a_question
    /.*\?/
  end

  def asking_a_numeric_question
    /.*\?/
  end

  def asking_gibberish
    /.*\?/
  end

  def forceful_questions
    /[A-Z]*\?/
  end

##___________
## Shouting
  def shouting
    /([A-Z]){3,}\.*\!/
    # ('A'..'Z').to_s.upcase + "!"
  end

  def shouting_gibberish
    /([A-Z]){3,}/
    # ('A'..'Z').to_s.shuffle.upcase
  end

  def talking_forcefully
    /[A-Z]*\!/
  end

  def shouting_numbers
    (remark.include(/d/) && remark.include(/([A-Z]){2,}\.*\!/))
  end

  def test_only_numbers
    /d/
  end

##___________

  def feedback(remark)
    puts "Bob hears #{text.inspect}, and.."
  end

  def hey(remark)
    if remark.upcase == remark
      "Whoa, chill out!"
    else
      "Whatever."
    end
  end

  # def hey(remark)
  #   if remark.match stating_something
  #     'Whatever.'
  #   elsif remark.match shouting
  #     'Whoa, chill out!'
  #   elsif remark.match shouting_gibberish
  #     'Whoa, chill out!'
  #   elsif remark.match asking_a_question
  #     'Sure.'
  #   elsif remark.match asking_a_numeric_question
  #     'Sure'
  #   elsif remark.match asking_gibberish
  #     'Sure'
  #   elsif talking_forcefully
  #     'Whatever.'
  #   elsif remark.include talking_forcefully
  #     'Whatever.'
  #   elsif using_acronyms_in_regular_speech
  #     'Whatever.'
  #   elsif remark.match forceful_questions
  #     'Whoa, chill out!'
  #   end
  # end

end
