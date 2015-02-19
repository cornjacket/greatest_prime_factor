def greatest_prime_factor number
  puts number
  divisor = 2
  last = Math.sqrt(number).round + 1
  done = false
  while (!done) do
  
    quotient,rem = number.divmod(divisor)
    #puts quotient
    #puts rem
	
    if rem == 0
      gpf_of_quotient = greatest_prime_factor(quotient)

	  if (divisor > gpf_of_quotient)
	    return divisor
	  else
	    return gpf_of_quotient
	  end	  

    else
      divisor+=1
    end
	
	if divisor > last
	  done = true
	end
  end
# only reached if number is a prime  
  return number
end

x = greatest_prime_factor(100000)
puts("gpf = #{x}")
