# Simple Calculations
5 + 3
5 - 3
5 * 3
5 / 3

# Saving your answers - object assignment
x <- 12
this_is_a_really_long_name <- 2.5
r_rocks <- 2 ^ 3

# Calling Functions
seq(1,10)
seq(1,10, by = 2)
?seq
date()

# Getting help in R
help(log)
??"cross tabulate"
log(exp(3))
example(log)

# Vectors, Vectorization, and Indexing
length(3.1)
x <- c(56, 95.3, 0.4)
y <- c(3.2, 1.1, 0.2)
x + y
x - y
x / y
sqrt(x)
round(sqrt(x), 3)
log(x) / 2 + 1
x <- c(56, 95.3, 0.4)
x[2]
x[1]
x[4]
x[3] <- 0.5
x
x <- 1:4
x + c(100, 1)
x

y <- c("Barry", "alice", "chandra", "eva")
names(x) <- y

z <- c("Barry", "alice", "chandra", "eva", 100)

x <- c(T, F, T, T, F)
sum(x)

grades <- c(6, 10, 9, 8)
sum(grades > 7)

x <- 1:5.1

#Miscellaneous points
rm(list = ls())

#Reproducibility and sessionInfo()
sessionInfo()


#Extra
1:10 * 10
x <- 1:10
x[-1]

letters
letters[1:5]
df <- data.frame(nums = 1:5, chars = letters[1:5], logical = c(T, T, F, T, F))
df <- data.frame(nums = 1:5, chars = letters[1:5], logical = c(T))
df[1,]
df[,3]
df[,"nums"]
df[3, 2]

df[df$nums > 3,]
df[,0]

x <- 1:50
plot(x)

plot(x, sin(x), type="o", col="blue", lwd = "3")