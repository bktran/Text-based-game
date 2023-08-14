# Text-based Game Challenge



def start_game 
    puts 'Late one night, walking in the woods and you see a light from above, what do you do?'
    puts 'option 1: go into the light'
    puts 'option 2: turn away from the light'
    choice_one = gets.chomp
    if choice_one == '1'
        puts 'You made a bad call!'
    elsif choice_one == '2'
        puts 'The light catches you and beams you aboard!'
    else 
        puts 'choose 1 or 2'
    end
    turn_two
end 

def turn_two
    puts 'You have awaken in a bright room with sterile surfaces. You notice what appears to be a door on the far wall.'
    puts 'option 1: You hatch a plan of escape and pull yourself up, making your way to the door.'
    puts "option 2: You're too scared to go for the door, so you make your way under the table and hide."
    choice = gets.chomp
    if choice == '1'
        turn_three 
    elsif choice == '2'
        puts 'A door you failed to notice opened, and a strangely shaped thing slid across the floor. It blows something in your face causing instant groginess. You awake in yet another room this time strapped down. Game Over!'
        puts "\npress enter to play again"
        restart_game 
    else 
        puts 'choose 1 or 2'
        turn_two
    end 
end

def restart_game
    gets.chomp 
    start_game
    turn_two
end 

def turn_three
    puts 'As you make your way into the hall of doors your senses are heightened. You hear what you think are screams!'
    puts 'option 1: Even though you are scared you want to help the screamer. You turn towards the room with the screams and move to slide the door open.'
    puts 'option 2: You decide to save yourself and start down the hallway, only to step on a trap door that shoots you into space. You float to your demise.'
    choice = gets.chomp 
    if choice == '1'
        turn_four
    elsif choice == '2'
        puts 'No one breathes in space, game over dummy!'
        puts 'Do you want to play again? Type 1 for yes or 2 for no.'
        option = gets.chomp
        if option == '1'
            restart_game
        else 
           puts 'Bye Bye'
        end 
    else 
        puts 'choose 1 or 2'
        turn_three
    end 
end

def turn_four
    puts 'As you make your way into the room, the slithering alien does not hear you over the screams. You spot a tray of tools.'
    puts 'option 1: You reach for a blunt looking object and hit the alien over its head, knocking it out.'
    puts 'option 2: You see some rope and tie them up.'
    choice = gets.chomp
    if choice == '1'
       puts 'You unstrap your fellow prisoner and they tell you of the Room of Teleportation. They lead the way out.' 
       turn_five
    elsif choice == '2'
       puts 'The alien attempts negotiation but the second prisoner stuffs a sock in their mouth and tells you about the Room of Teleportation. They lead you out.'
       turn_five
    else 
       puts 'choose 1 or 2'
      turn_four
    end
end

def turn_five
    puts 'You and your new friend make your way through the ship in search of the Room of Teleportation when you happen upon a fork in the path.'
    puts 'option 1: Stay together and choose a path.'
    puts 'option 2: Split up and go your seperate ways.'
    choice = gets.chomp 
    if choice == '1'
       puts 'You both continue on your chosen path only to realize youre being followed! A slithering alien has caught up to you but because you stayed together you tag team it and knock them out.'
        turn_six
    elsif choice == '2'
       puts 'Oh no you have been followed! Because you are alone the slithering alien overtakes you and drags you back to that sterile cold room you fear.'
        restart_game
    else 
       puts 'choose 1 or 2'
       turn_five
    end
end

def turn_six
    puts 'After taking down the alien you search it and find a key with symbols that indicate it could be for the Room of Teleportation. Your companion continues to lead the way until you finally make it to the door with the matching symbols when a group of baddies appears.'
    puts 'option 1: Take on the baddies.'
    puts 'option 2: look for an escape.'
    choice = gets.chomp
    if choice == '1'
        puts 'The baddies overwhelm you and your friend and no one escapes. '
        puts 'Do you want to play again? Type 1 for yes or 2 for no.'
        option = gets.chomp.downcase
        if option == '1'
            restart_game
        else 
           puts 'Bye Bye'
        end 
    elsif choice == '2'
        turn_seven
    else
        puts 'choose 1 or 2'
        turn_six
    end
end

def turn_seven
    puts 'You look around desperate for an exit when you spot a ventilation duct above you. You both help each other into the duct and crawl through until you come to a grate that lets you into a room.'
    puts 'option 1: You go through the grate to enter the room'
    puts 'option 2: you continue on past the grate, unsure of the rooms safety and get lost forever'
    choice = gets.chomp
    if choice == '1'
        turn_eight
    elsif choice == '2'
        puts 'Game Over'
        puts 'Do you want to play again?'
        option = gets.chomp
        if option == 'yes'
            restart_game
        else 
           puts 'Bye Bye'
        end 
    else 
        puts 'choose 1 or 2'
        turn_seven
    end
end

def turn_eight
    puts 'You have finally entered the Room of Teleportation!'
    puts 'option 1: Press the button that will send you home.'
    puts 'option 2: grab the steering whell and go for an inter-galatic joy ride!'
    choice = gets.chomp
    if choice == '1'
        puts 'There is a flash of light and you find yourself back in the woods.'
        option = gets.chomp
        if option == 'yes'
            restart_game
        else 
           puts 'Bye Bye'
        end 
    elsif choice == '2'
        puts 'there is a flash of light and you see a the galaxies in a swirl behind you.'
        option = gets.chomp
        if option == 'yes'
            restart_game
        else 
           puts 'Bye Bye'
        end 
    end    
end


start_game