# __UNFORGETTABLE__

## __About__

Unforgettable is a simple yet challenging game designed to exercise and help improve memory retention.

Worldwide there are almost 44 million people who suffer from Alzheimer's or other similar conditions. 

For many of these people, a simple regime of memory strengthening exercises could be a key part in delaying the onset of Alzheimer's.

How good is YOUR memory?

## __Development__ 

#### Planning & Design

During our planning phase we decided we wanted our app to have the following features:

- _levels of difficulty_
- _include random number and word sequences_
- _colorize for distinguishing various sections (headings, menu etc)_
- _wanted it to be simple to play but still challenging_

We also wanted our app layout to flow in a logical and easy to understand manner:

- _welcome screen_ 
    - enter name
    - welcomes user to the game
    - display interesting fact about memory

- _game instructions_
    - directions regarding how to play
    - option to choose difficulty of level

- _game begins_ 
    - displays sequence of numbers/words for 3 seconds (increased time when higher level is chosen)
    - sequence disappears from screen
    - user is asked to retype the sequence (including any spaces)
    - user will be told if their answer is correct or incorrect (a counter will keep score of how many questions they get right)
    - after 5 questions the user will be told the TOTAL number of questions they got correct/incorrect
    - user will be automatically moved on to level 2 
    - above process will repeat with words instead of numbers

#### Building Process

- _used the rand function to generate our number sequences_
- _random word generator gem to generate our word sequences_
- _colored text to make it more appealing_
- _we picked 5 gems to use_
- _say function to include sound in our app_
- _created a method containing facts about memory to help show the purpose of our app_
- _allowed user to choose difficulty level by using a case statment_
- _while loop to prompt user to enter the correct number_ 
- _created 3 methods (one for each difficulty choice), and another method for level 2_
- _case statement to implement each of the 3 level difficulty methods_
- _system ('clear') to keep the app looking neat for the user_
- _variables to collect incorrect and correct inputs by user to display total score at the end of the game_

#### Technical Issues

We encountered some difficulties while creating our app:

- _making methods to store repetitive information_
- _how do we call variables outside the scope of a method?_
- _determining whether variables were being outputted as strings, integers or arrays_
- _trying to use gems that had bugs or did not work_

We were able to solve most of these issues with the help of our instructors and google.

#### Ideas for Improvement

Due to our still limited knowledge or a lack of time there were some features that we were unable to incorporate into our app. Below is a list of the ways we would like to improve our app:

- _refactor the code to be more concise_
- _make our methods more effective_
- _use modules_
- _add color coded questions if possible (i.e what color was the number/word you were shown)_

## __Installation__

```
gem install bundler
bundle install
```

## __Dependencies__

- <https://rubygems.org/gems/colorize>

- <https://rubygemsorg/gems/random_word>

- <https://rubygems.org/gems/pastel>

- <https://rubygems.org/gems/tty-font>

- <https://rubygems.org/gems/tty-progressbar>


## __License__

This app was created by Luke Colcott and Jessica Odri. It is freely available for all to enjoy!

## __Disclaimer__

This game is designed to be fun and promote the importance of keeping the mind active. 

It is not intended as a sustitute for professional healthcare advise and treatment.

If you have concerns regarding your health please see a heathcare practitioner.