n_user = gets.to_i

n_user.times do
    print "*"
end



n_user.times do
    if n_user % 2 == 0
        print n_user
    else
        print "*"
    end
end