# crear el siguiente patron:   ..**||..**||..**||
n_user = gets.to_i
i = 0

n_user.times do |i|
    
    if i%6 == 0 || i%6 ==1
        print"."
    elsif  i%6 ==2 || i%6 == 3
        print "*"
    else
        print"|"
    end
end

=begin
0%6 ==0 --> 0  si
1&6 ==1 --> 1  si
2%6 ==2 --> 2
3&6 ==3 --> 3
4%6 ==4 --> 4
5&6 ==5 --> 5
6%6 ==6 --> 6
7&6 ==7 --> 7 si
=end
