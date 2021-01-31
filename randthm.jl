f = open("teoremi.txt","r")
thm = readlines(f)
l = length(thm)

# limits for the extraction
lo, hi = 1, l
# lo, hi = parse.(Int, split(readline(stdin), " "))

######### Generation of t #########

cr=open("counts.txt", "r")

counts=readlines(cr)
counts=split.(counts, r"[.] ")
c=[parse(Int64, counts[i][2]) for i=1:l ]

close(cr)

media=0.0
for i in 1:l
    global media+=c[i]
end
media=media/l

t = rand(lo:hi)
while abs(c[t]-media)>3
    global t = rand(lo:hi)
end

#########################

println( "$(thm[t])\n" )
close(f)

cw=open("counts.txt", "w")

new=c[t]+1
for i in 1:l
    if i==t
        print(cw, "$i. $new\n")
    else
        print(cw, "$i. $(c[i])\n")
    end
end
   
close(cw)
