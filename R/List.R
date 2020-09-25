newList = list(seq(1, 11, by = 2), list("Happy Birthday", "Archery"))
newList
str(newList)

newList[[1]]

newList[[2]][[1]]

newList[[2]][2]

newList[[2]]

newList[1]

newList[[1]] = newList[[1]] + 2
newList[[1]]

names(newList) = c("Numbers", "Phrases")
newList

newList$Numbers
newList[[1]]

newList$Numbers = newList$Numbers + 2
newList$Numbers

newList$Brands = c("Kellogs", "Nike", "iPhone")
str(newList)

newList[[3]] = c("Kellogs", "Nike", "iPhone")
names(newList)[[3]] = "Brands"
newList

newList[[3]] = newList[[3]][-3]

newList$Brands = newList$Brands[-3]
newList

newList$Brands = NULL

newList[[3]] = NULL
newList