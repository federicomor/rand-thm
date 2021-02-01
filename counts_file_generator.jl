f = open("teoremi.txt","r")
thm = readlines(f)
l = length(thm)

close(f)
c=open("counts.txt", "w")

for i in 1:l
    print(c, "$i. 0\n")
end

close(c)