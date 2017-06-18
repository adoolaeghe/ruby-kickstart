# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong
   def initialize(num_bottles)
     @num_bottles = [[0,num_bottles].max,99].min
   end

   def print_song
     counter = @num_bottles
     while counter > 0
     	puts "#{bottles(counter)} of beer on the wall,"
       puts "#{bottles(counter)} of beer,"
     	puts "Take one down, pass it around,"
       puts "#{bottles(counter-1)} of beer on the wall."
     	counter -= 1
     end
   end

   private

   def bottles(num)
   	literals = ["zero","one","two","three","four","five","six","seven","eight","nine"]
   	tens = ["","ten","twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"]
   	teens = ["","eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"]

     return "One bottle" if num == 1
     return literals[num].capitalize + " " + "bottles" if num < 10
     return tens[num/10].capitalize + " " + "bottles" if num % 10 == 0
     return teens[num%10].capitalize + " " + "bottles" if num < 20
     return tens[num/10].capitalize + "-" + literals[num%10] + " " + "bottles"
   end
 end
