# What if you instead want to force Elixir to use the existing value of the
# variable in the pattern? Prefix it with ^ (a caret). In Elixir, we call
# this the pin operator.

a = 1 # 1
a = 2 # 2
^a = 1 # ** (MatchError) no match of right hand side value: 1
