class CardCounter

  def add_decks(decks)
    $count -= decks
    decks.times do
      4.times do
        $cards << ["2","3","4","5","6","7","8","9","10","J","Q","K","A"]
      end
    end
    $cards.flatten!.shuffle!
  end

  def modify_count(card)
    case card
    when "8", "9"
    when "1","2","3","4","5","6","7"
      $count += 1
    else
      $count -= 1  
    end
  end
  
  def run_decks(cards)
    checks_remaining = 4
    cards_run = 0
    cards.each do |card|
      puts "The next card is #{card}."
      modify_count(card)
      cards_run +=1
      sleep(0.25)
      if checks_remaining > 0 && rand(cards.length - cards_run - checks_remaining) == 0
        puts "What is the current count? Enter an integer."
        guess = gets.to_i
        checks_remaining -= 1
        if guess == $count
          puts "That's right! The count is #{$count}. Let's continue!"
        else
          puts "Sorry, that's wrong. The count is actually #{$count}. Let's continue!"
        end
      end
    end
  end
  
  def initialize
    $count = 4
    $cards = []
    puts "How many decks would you like to play with?"
    $number_of_decks = gets.to_i
    add_decks($number_of_decks)
    run_decks($cards)
    puts "Final count is #{$count}."
    puts "Would you like to play again? (Yes/No)"
    answer = gets.downcase
    if ["yes","y","sure","ok","okay","yeah","yup"].include? answer
      puts "Let's play again!"

      CardCounter.new
    else
      puts "All right, thanks for playing!"
    end
  end
  
end

CardCounter.new