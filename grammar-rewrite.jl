# ba -> aatttcc
# ca -> abb
# cb -> aaatttc
function sortWord(inputStr:: String) :: String
	outStr :: Vector{Char} = collect(inputStr)
	sorted :: Bool = false

	i = 1
	while !sorted
	# println(i)
		if i == length(outStr)
			sorted = true
			break
		elseif outStr[i] <= outStr[i+1]
			i+=1
			continue
		elseif outStr[i] > outStr[i+1]
	println(outStr|>join)
			if outStr[i] == 'b' && outStr[i+1] == 'a'
				splice!(outStr, i:i+1, ['a','a','b','b','b','c','c'])
				i = 1
				continue
			elseif outStr[i] == 'c' && outStr[i+1] == 'a'
				splice!(outStr, i:i+1, ['a','b','b'])
				i = 1
				continue
			elseif outStr[i] == 'c' && outStr[i+1] == 'b'
				splice!(outStr, i:i+1, ['a','a','a','b','b','b','c'])
				i = 1
				continue
			end
		end
	println(outStr|>join)
	end

	outStr |> join
end

# sortWord("baabacababcacacbacbbcabcabbbcabcbbcabcbab") |> println


# Good words
# ba
# ca

# ////// Bad words list \\\\\\\
# bacca
# cba
# caa

# sortWord("cba") |> println