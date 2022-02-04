require "pry"

class Person

  attr_accessor :bank_account
  attr_reader :name
  attr_writer :happiness, :hygiene

  def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness.clamp(0, 10)
    @hygiene = hygiene.clamp(0, 10)
  end

  def happiness 
    @happiness.clamp(0,10)
  end

  def hygiene
    @hygiene.clamp(0,10)
  end

  def happy?
    self.happiness > 7
  end

  def clean?
    self.hygiene > 7
  end

  def get_paid(amount)
    self.bank_account += amount
    "all about the benjamins"
  end

  def take_bath
    @hygiene = self.hygiene +=4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @hygiene = self.hygiene -=3
    @happiness = self.happiness +=2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness +=3
    friend.happiness +=3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness -=2
      friend.happiness -=2
      "blah blah partisan blah lobbyist" 
    elsif topic == "weather"
      self.happiness +=1
      friend.happiness +=1
      "blah blah sun blah rain"
    else 
      "blah blah blah blah blah"
    end

  end

end