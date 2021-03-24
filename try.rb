n_user = gets.to_i/2
i = 0

n_user.times do |i|
    if i.even?
        print"**"
    else
        print".."
    end
    i+=1
end
