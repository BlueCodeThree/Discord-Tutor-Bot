# Discord Tutor Bot
A bot that reminds the user of programming syntax. 

### DEPENDENCIES
- discordrb - installed with `gem install discordrb`

You will need to set up your own discord bot, and store your token and client ID in a file `config.rb`. You will then have to connect your bot to your discord server. 

## RUNNING THE BOT
To run the bot, type `ruby tutorbot.rb` in terminal. The Bot will then come online in your discord server. 

To get help from the bot, you need to type `!` and then a two letter code your your language to access, a space, and then a keyword to access what you would like information about. 

For instance, typing `!rb puts` - the bot will return something like: 

``` 
    puts "Hello World"

    # puts can print multiple things, each on a new line
    puts(1, 2, "dog", "cat")

    # don't have to use brackets
    puts 1, 2, "dog", "cat"

    # print will join these two strings together on same line
    print("a", "b")

    # also can use without brackets
    print "a", "b"
    
    # 'p' acts like .inspect
```

A feature of this bot is it supports multiple programming languages. The languages this bot supports so far are:

- Javascript - `!js <command>`
- Ruby -  `!rb <command>`

You can see a list of all the available commands with `!help`