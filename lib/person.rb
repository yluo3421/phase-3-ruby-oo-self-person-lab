class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene =8
    end

    def happiness=(num)
        @happiness = if num > 10
                        10
                    elsif num < 0
                        0
                    else
                        num
                    end
    end
    
    def hygiene=(num)
        @hygiene =  if num > 10
                        10
                    elsif num < 0
                        0
                    else
                        num
                    end
    end
    
    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(num)
        self.bank_account += num
        # @bank_account += num
        #"all about the benjamins"
        return "all about the benjamins"

    end

    def take_bath
        
        self.hygiene += 4
        # self.hygiene=(newHygiene)
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic
        when "politics"
            self.happiness -= 2
            friend.happiness -= 2
            'blah blah partisan blah lobbyist'
        when "weather"
            [self, friend].each { |person| person.happiness += 1 }
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end

    end




end


