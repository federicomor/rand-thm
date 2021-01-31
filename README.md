# rand-thm
Random picker of a theorem from a set of theorems.

In the file "teoremi.txt" there are all the theorems that should be studied for a certain course. The program "randthm.jl" picks at random one of the theorems and displays it, so that you could try to prove it (to see if you have learnt it). The program also stores the amount of times each theorem has been chosen, and uses those data to choose the correct theorem, so that you are not asked too many times the same theorems. In fact the mean of the extractions is calculated, and if a candidate extracted theorem exceeds by 3 that mean it is not displayed, and the extractions restarts until there is a valid one. 
