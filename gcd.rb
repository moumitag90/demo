class Gcdnum
def gcd
	print "Enter the 2 numbers:"
	i=gets().to_i
	j=gets().to_i
	while(j!=0)
		r=i%j
		i=j
		j=r
	end
	return i
end
end
c=Gcdnum.new
print(c.gcd)
	