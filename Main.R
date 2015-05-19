# Settings
NROWS = 100

# setup
setwd("~/Kaggle/Taxi")

# Read data
bigd <- read.csv(file="train.csv",nrows=NROWS,stringsAsFactors = FALSE)
# bigd <- read.csv(file="train.csv",stringsAsFactors = FALSE)

n = dim(bigd)[1] # n = 1710670

bigNby2 = vector("list",n)

polylines = bigd[,9]

t1 = Sys.time()
for (i in 1:n){
  polyline = polylines[i]
  bigNby2[[i]] = Polyline2Nby2(polyline)
}
t2 = Sys.time()

difftime(t2,t1)
