#Gems
require 'colorize'
require 'tty-font'
require 'pastel'
require 'random_word'
require 'tty-progressbar'

#Title
font = TTY::Font.new(:"3d")
font2 = TTY::Font.new(:"standard")
pastel = Pastel.new
puts pastel.blue(font.write("UNFORGETTABLE"))

#Welcome Page
print "Enter your name: ".colorize(:red ).colorize( :background => :green)
name = gets.chomp
puts
puts "Hello #{name}! I'd like play a game.".colorize(:red ).colorize( :background => :green)
puts
    def intro_facts 
        def go(x)
            begin# starts rescue block
            puts "5/#{x} = #{5/x}"
            rescue
            `say "did you know?"`
            end
        end
        
        go(0)
        did_you_know = "      
        ------------------------Did you know?-----------------------"   
        puts did_you_know.colorize(:magenta) 
        puts """
        Our brains have an essentially unlimited ‘storage capacity’ for learning. 
        A rough calculation by Paul Reber, Professor of Psychology at Northwestern 
        University suggests that the brain can store 2.5 PETABYTES of data 

        – that’s 2,500,000 Gigabytes, or 300 years worth of TV.
        """
        sleep 16
        system("clear")

        puts """

        Unforgettable is a simple yet challenging game designed to exercise and help improve memory retention.
        Worldwide there are almost 44 million people who suffer from Alzheimer’s or other similar conditions.
        For many of these people, a simple regime of memory strengthing exercises could be a key part in delaying 
        the onset of Alzheimer’s.
        """.colorize(:green)
        sleep 18
        system("clear")

        puts "Get ready to test the capacity of YOUR brain"
        sleep 4
        system("clear")
    end 

intro_facts
puts

#Instructions
puts "Game Instructions:"
puts
puts "Each level will display a sequence of random numbers. 
After a few seconds they will disapper and you should enter the 
same sequence (including the spaces) and hit enter."
puts
puts """
Choose your difficulty:

1. Noob
2. Normal
3. Pro

"""
counter = 0

while true
    difficulty_choice = gets.strip.to_i
    if difficulty_choice == 1 || difficulty_choice ==  2 || difficulty_choice == 3
        break
    else 
        puts "Please enter a valid number"
    end
end

#Progress Bar
system("clear")
puts
        bar = TTY::ProgressBar.new("Preparing your questions [:bar]", total: 30)
        30.times do
        sleep(0.1)
        bar.advance(1)
    end

system("clear")
sleep 1

puts
#Level 1 methods
def diff1 (counter)
    numbers_level_1 = [rand(10), rand(10), rand(10)].join(" ")
    print numbers_level_1
    sleep 2
    system("clear")
    puts "Please type your answer"
    ans = gets.chomp
    if ans == numbers_level_1
        puts "Well Done! You are correct."
        counter += 1
        puts "Score = #{counter}"
    else
        puts "Too Bad :( Try again."
    end
        return counter
end

def diff2 (counter)
    numbers_level_2 = [rand(10..100), rand(10..100), rand(10..100)].join(" ")
    print numbers_level_2
    sleep 3
    system("clear")
    puts "Please type your answer"
    ans = gets.chomp
        if ans == numbers_level_2
        puts "Well Done! You are correct."
        counter += 1
        puts "Score = #{counter}"
        else
        puts "Too Bad :( Try again."    
        end
        return counter
end

def diff3 (counter)
    numbers_level_3 = [rand(1000..10000), rand(1000..10000), rand(1000..10000)].join(" ")
    print numbers_level_3
    sleep 7
    system("clear")
    puts "Please type your answer"
    ans = gets.chomp
        if ans == numbers_level_3
        puts "Well Done! You are correct."
        counter += 1
        puts "Score = #{counter}"
        else
        puts "Too Bad :( Try again."
        end
        return counter
end

#Case Statement for difficulty choice
case difficulty_choice
    when 1
        5.times do
            puts "Please remember the following line:"
            sleep 3
            counter = diff1(counter)
            sleep 3
            system("clear")
        end
    when 2
        5.times do
            puts "Please remember the following line:"
            sleep 3
            counter = diff2(counter)
            sleep 3
            system("clear")
        end
    when 3
        5.times do
            puts "Please remember the following line:"
            sleep 3
            counter = diff3(counter)
            sleep 3
            system("clear")
        end

end        

#Level 1 counter results
num_incorrect = 5 - counter
puts "FINAL SCORE: #{counter}"
puts "You got #{num_incorrect} incorrect"
    if num_incorrect <= 0
        puts "PERFECT SCORE!"
    else puts "You've got some work to do to stop the Alzheimers kicking in"
    end

sleep 5
system("clear")

#Level 2 intro
puts pastel.red(font2.write("LEVEL2"))

puts "I hope you can spell....."

sleep 4
system("clear")

#Level 2 method
words_counter = 0

def words (words_counter)
    displayed_sample_word = RandomWord.adjs.next
    displayed_sample_word = displayed_sample_word.to_s
    print displayed_sample_word.colorize(:light_blue)
    puts
    sleep 4
    system("clear")
    puts "Please type your answer"
    word_ans = gets.strip
        if word_ans == displayed_sample_word
            puts "Well Done! You are correct."
            words_counter += 1
            puts "Score = #{words_counter}"
        else
            puts "Too Bad :( Try again."
            puts "The correct word was #{displayed_sample_word}"
            sleep 3
        end
        return words_counter
end

#Level 2 question
5.times do
    puts "Please remember the following word:"
    sleep 3
    words_counter = words(words_counter)
    sleep 2
    system("clear")
end

#Level 2 counter results
num_words_incorrect = 5 - words_counter
puts "FINAL SCORE: #{words_counter}"
puts "You got #{num_words_incorrect} incorrect"
    if num_words_incorrect <= 0
        puts "PERFECT SCORE!"
    else puts "You have a bit more work to do!"
    end
    sleep 2
    system("clear")
    puts
    bar = TTY::ProgressBar.new("Calculating your results... [:bar]", total: 30)
    30.times do
    sleep(0.1)
    bar.advance(1)
    end
system("clear")
total_score = counter + words_counter
puts "Your total score is #{total_score} out of 10!"

sleep 5
system("clear")
puts pastel.blue(font.write("THANKS!"))

