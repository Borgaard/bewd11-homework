class Card_game
  #################
 ## Initialize ## 
################
    def initialize(n)
       @rank = ["1","2","3","4","5","6","7","8","9","10","J","Q","K","A"]
       @color = ["Spades","Heart","Diamond","Club"]
       @deck = []
# depending on how many deck the player wants to play with       
       @n = n.to_i
       @n.times do 
           create_deck 
       end
# Once the deck is initialized, shuffle the cards       
       deck_shuffle
    end


  ##################
 ## Deck Shuffle ## 
##################   
    def deck_shuffle
        @deck.shuffle!
    end


  ######################
 ## Create Game Deck ## 
######################    
    def create_deck
# Create a deck of cards with the rank and color        
       @color.each { |color| @rank.each { |rank| @deck.push(rank + "-" + color) } }
       return @deck
    end

  
  ###################
 ## Dealing cards ## 
###################  
    def deal_cards
        index = 0
        @cards_dealt = []
        @cards_to_count = []
        array = []
# deal the cards 4 times       
        4.times do
            @count = @n
            if @cards_dealt.empty? == false
                @cards_dealt.each { |card| print card }
                sleep 1
            end
# Randomize how many cards we would like to deal for each round dealt             
            fend = index + Random.rand(5) # 5 otherwise game too long
            for i in index..fend
# Keep track of the cards dealt for presentation to the player for the next round           
                @cards_dealt.push("- #{@deck[index]} -")
# Here we only want the index 0 of the value of the card to be able to count                
                array = @deck[index].split("-")
# Keep track of the cards dealt to count them                
                @cards_to_count.push(array[0])
# Print this round of card dealt
                print "- #{@deck[index]} -" 
                index += 1
# Wait 2 second to give time to the playre to count                
                sleep 2 
            end
# Ask player to give his count            
            request_count
        end
    end


  ##################
 ## Player Count ## 
##################
    def request_count
        puts " "
        puts "What's you count?"
# Get player's count
        user_count = gets.chomp
        puts " "
# Get my count        
        @my_count = count(@cards_to_count)
# Check if player is correct or not        
        if @my_count.to_i == user_count.to_i
            puts "my count is #{@my_count}, you are correct!"
        else
            puts "my count is #{@my_count}, what happened to you?!? ;)"
        end
        puts " "
    end


  ##############
 ## My Count ## 
##############   
    def count(cards_to_count)
        cards_to_count.each do |rank| 
            case rank
# -1 for higher cards            
            when "10", "J", "Q", "K", "A"
                @count -= 1
                #p "minus #{@count} - #{rank}"
            when "8", "9"
                #Do nothing for those 2 guys
# +1 for the rest of the cards
            else
                @count += 1
                #p "plus #{@count} - #{rank}"
            end
        end
        return @count
   end
end



  ##################
 ## Main program ## 
##################
# Just for fun request how many decks the player want to play with
puts "How many decks do you wanna play with? (number between 1-10)"
n = gets.chomp
# Generate card deck
deck = Card_game.new(n)
#deck.show_deck
out = false
# While player want to play, stay in the game
while out == false do
# Make sure the player is ready to play    
    puts "Ready to start counting? (Y/N)"
    a = gets.chomp
# If not, then end program    
    if a.upcase == "N"
        puts "Ok, bye, bye!"
        out = true
# If yes, then start the game        
    elsif a.upcase == "Y"
# Clear the terminal and set up the rules    
        system "clear"
        puts "Here are the rules!"
        puts "  - Count starts off at #{n} - (#{n} * number_of_decks)."
        puts "  - Cards 2 through 7 increase the count by 1."
        puts "  - Count does not change if the card is an 8 or a 9."
        puts "  - If the card is a 10, J, Q, K, or A, decrease the count by 1."
        puts " "
        print "Let's start counting..."
        fin = Time.now + 3 
        rest = 3
# Count down of 3 sec to play around before the game starts        
        while Time.now < fin
            rest -= 1 
            print "\rLet's start counting...#{rest}"
            sleep 1 
        end
        print "\rLet's start counting..."
        puts " "
# Start dealing the cards to count        
        deck.deal_cards
        a_out = false
# End of the game, does player want to play again?        
        while a_out == false
            puts " "
            puts "Do you want to play again? (Y/N)"
            again = gets.chomp
# If No. Ok bye bye!            
            if again.upcase == "N"
                puts "Ok, bye, bye!"
                out = true
                a_out = true
# If yes, start over and reshuffle the deck for a new game
            elsif again.upcase == "Y"
                out = false
                a_out = true
                deck.deck_shuffle
# Any other answer, ask again if the player wants to play!                
            else
                puts "This was a (Y)es of (N)o question!"
                out = false
                a_out = false
            end
        end #end while: End game
# If player answer anything else, ask the question again!        
    else
        puts "This was a (Y)es of (N)o question!"
        out = false
    end
end #end while: Start game

