# your code goes here
class Person

  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def get_paid(amount)
    @bank_account += amount
    'all about the benjamins'
  end

  def hygiene=(amount)
    return @hygiene = 10 if amount > 10
    return @hygiene = 0 if amount < 0
    @hygiene = amount
  end

  def happiness=(amount)
    return @happiness = 10 if amount > 10
    return @happiness = 0 if amount < 0
    @happiness = amount
  end

  def take_bath
    self.hygiene = @hygiene + 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene = @hygiene - 3
    self.happiness = @happiness + 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness = @happiness + 3
    friend.happiness = friend.happiness + 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == 'politics'
      self.happiness = @happiness - 2
      friend.happiness = friend.happiness - 2
      'blah blah partisan blah lobbyist'
    elsif topic == 'weather'
      self.happiness = @happiness + 1
      friend.happiness = friend.happiness + 1
      'blah blah sun blah rain'
    else
      'blah blah blah blah blah'
    end
  end

end

