flip = function(){
  coin = c("heads", "tails")
  toss = sample(coin, 100, replace = TRUE, prob = c(0.3, 0.7))
  return(toss)
}

flip()