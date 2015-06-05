$bottom_left="1"
$bottom_middle="2"
$bottom_right="3"
$middle_left="4"
$middle_middle="5"
$middle_right="6"
$top_left="7"
$top_middle="8"
$top_right="9"
$win=false

puts "#{$top_left} | #{$top_middle} | #{$top_right}"
puts "----------"
puts "#{$middle_left} | #{$middle_middle} | #{$middle_right}"
puts "----------"
puts "#{$bottom_left} | #{$bottom_middle} | #{$bottom_right}"
$player_turn="O"

def check_win
    if $bottom_left==$bottom_middle && $bottom_middle==$bottom_top
        $win=true
        puts "Player #{$player_turn} has won! Congratulations!"
    elsif $middle_left==$middle_middle && $middle_middle==$middle_top
        $win=true
        puts "Player #{$player_turn} has won! Congratulations!"    
    elsif $top_left==$top_middle && $top_middle==$top_top
        $win=true
        puts "Player #{$player_turn} has won! Congratulations!"
    elsif $bottom_left==$middle_left && $middle_left==$top_left
        $win=true
        puts "Player #{$player_turn} has won! Congratulations!"
    elsif $bottom_middle==$middle_middle && $middle_middle==$top_middle
        $win=true
        puts "Player #{$player_turn} has won! Congratulations!"
    elsif $bottom_right==$middle_right && $middle_right==$top_right
        $win=true
        puts "Player #{$player_turn} has won! Congratulations!"
    elsif $top_left==$middle_middle && $middle_middle==$bottom_right
        $win=true
        puts "Player #{$player_turn} has won! Congratulations!"
    elsif $bottom_left==$middle_middle && $top_middle==$top_right
        $win=true
        puts "Player #{$player_turn} has won! Congratulations!"
    else
        $win=false
    end
end

def check_stalemate
    if $bottom_left!="1" && $bottom_middle!="2" && $bottom_right!="3" && $middle_left!="4" && $middle_middle!="5" && $middle_right!="6" && $top_left!="7" && $top_middle!="8" && $top_right!="9"
        puts "Stalemate! No one wins!"
        $win=true
    end
end

def check_input(n)
    valid_move=false
    while valid_move==false do
        if n==$bottom_left && n=="1"
            $bottom_left=$player_turn
            valid_move=true
        elsif n==$bottom_middle && n=="2"
            $bottom_middle=$player_turn
            valid_move=true
        elsif n==$bottom_right && n=="3"
            $bottom_right=$player_turn
            valid_move=true
        elsif n==$middle_left && n=="4"
            $middle_left=$player_turn
            valid_move=true
        elsif n==$middle_middle && n=="5"
            $middle_middle=$player_turn
            valid_move=true
        elsif n==$middle_right && n=="6"
            $middle_right=$player_turn
            valid_move=true
        elsif n==$top_left && n=="7"
            $top_left=$player_turn
            valid_move=true
        elsif n==$top_middle && n=="8"
            $top_middle=$player_turn 
            valid_move=true
        elsif n==$top_right && n=="9"
            $top_right=$player_turn
            valid_move=true
        else
            puts "That is not a valid move! Please type another."
            n=gets.chomp
        end
    end
end

while $win==false do 
    if $player_turn=="O"
        puts "Player O, it's your turn!"
        input=gets.chomp
        check_input(input)
        puts "#{$top_left} | #{$top_middle} | #{$top_right}"
        puts "----------"
        puts "#{$middle_left} | #{$middle_middle} | #{$middle_right}"
        puts "----------"
        puts "#{$bottom_left} | #{$bottom_middle} | #{$bottom_right}"
        check_win
        $player_turn="X"
    else
        puts "Player X, it's your turn!"
        input=gets.chomp
        check_input(input)
        puts "#{$top_left} | #{$top_middle} | #{$top_right}"
        puts "----------"
        puts "#{$middle_left} | #{$middle_middle} | #{$middle_right}"
        puts "----------"
        puts "#{$bottom_left} | #{$bottom_middle} | #{$bottom_right}"
        check_win
        $player_turn="O"
    end
    check_stalemate
end

