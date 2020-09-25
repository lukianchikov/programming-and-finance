my.mat = matrix(runif(12), nrow = 3, byrow = TRUE, dimnames = list(c("x", "y", "z"),
                                                                    c("uno", "dos", "tres", "cuatro")))
my.mat = my.mat*10
s.mat = my.mat[1:2, ]

my.mat - s.mat

m.mat = my.mat[ , -4]

my.mat - m.mat

uno = my.mat[, "uno"]

my.mat - uno

new.mat = matrix(rnorm(12), nrow = 3, byrow = TRUE)
my.mat * new.mat

my.mat %*% t(new.mat) 