n = length(bigNby2)
y = matrix(data = NA, nrow = n, ncol = 2)
for (i in 1:n){
  d = bigNby2[[i]]
  if (is.null(d)){
    y[i,1:2] = c(0,0)
  } else {
    y[i,1:2]= d[end(d)[1],1:2]
  }
}
