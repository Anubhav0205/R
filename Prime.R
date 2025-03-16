num <- as. integer(readline("Enter a number: "))
is_prime <- TRUE
i <- 2
if (num < 2) {
  is_prime <- FALSE
} else {
  while (i * i <= num) {
    if (num %% i == 0) {
      is_prime <- FALSE
      break
    }
    i <- i + 1
  }
}
if (is_prime) {
  cat(num, "is a Prime Number")
} else {
  cat(num, "is not a Prime Number")
}