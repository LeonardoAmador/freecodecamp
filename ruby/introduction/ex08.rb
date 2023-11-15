def guessing_game
  secret_word = "giraffe"
  guess = ""
  guess_count = 0
  guess_limit = 3

  while guess_count < guess_limit
    puts "Enter guess: "
    guess = gets.chomp().downcase
    guess_count += 1

    if guess == secret_word
      puts "You Won!"
      return;
    end
  end

  puts "You Lose!"
end

def iterate_collection
  friends = []
  friends_count = 0

  puts "How many friends do you have: "
  friends_count = gets.chomp().to_i

  friends_count.times do |i|
    puts "Enter your #{i + 1}o friend: "
    friend_name = gets.chomp()
    friends.push(friend_name)
  end

  system("clear")

  puts "Friends list: "
  friends.each do |friend|
    puts friend
  end
end

iterate_collection()