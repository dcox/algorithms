require 'prime'

def binary_search
  # Make an array and pick a value to search for
  primes = Prime.take(100)
  target = primes.sample

  # Find the maximum and minimum indexes to guess and the point between them
  max = primes.size
  min = 0
  index = (min + max) / 2

  target_found = false
  num_guesses = 0

  while target_found == false
    num_guesses += 1
    if primes[index] == target
      target_found = true
      puts "You found the target! It was #{primes[index]}. It took you #{num_guesses} guesses."
    else
      if primes[index] > target
        max = index - 1
      elsif primes[index] < target
        min = index + 1
      end
    end
    index = (min + max) / 2
  end
end

