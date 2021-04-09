=begin
    Factoriales:
    (n==0) n! = 1
    (o) n! = n*(n-1)!
    
=end

def fact(n)
    if n == 0
        1
    else
        n * fact(n-1)
    end
end

print fact(ARGV[0].to_i)