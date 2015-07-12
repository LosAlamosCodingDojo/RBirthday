N = 10000
probs = NULL

for (npersons in seq(0, 100, 1)) {
  hit = 0
  for (i in 1:N) {
    if (anyDuplicated(sample(365, npersons, replace = T)) != 0)
      hit = hit +1
  }
  probs = append(probs, hit/N)
}

plot(probs, type="s")
