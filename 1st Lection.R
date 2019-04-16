# simple example
rawdata <- c(5838, 5913, 6044, 6218)
ts.dat <- ts(rawdata, start=2013, frequency = 1)
plot(ts.dat, ylab="#students", main="Students at LUASA")
table(ts.dat)
time(ts.dat)


# reading from URL& plot data
address <- "http://www.maths.adelaide.edu.au/andrew.metcalfe/Data/Maine.dat"
dat <- read.table(address, header=T)
tsd <- ts(dat, start=c(1996,1), freq=12)
plot(tsd, ylab="(%)",
     main="Unemployment in Maine")
time(tsd)
length(tsd)


# multiple time series plots
address <- "http://www.maths.adelaide.edu.au/andrew.metcalfe/Data/cbe.dat"
dat <- read.table(address, header=T)
tsd <- ts(dat, start=1958, freq=12)
plot(tsd,
     main="Chocolate, Beer & Electricity")

# Index timeseries
tsd[,1]<-tsd[,1]/tsd[1,1]*100
tsd[,2]<-tsd[,2]/tsd[1,2]*100
tsd[,3]<-tsd[,3]/tsd[1,3]*100
# Plotting all in one frame
colours<-c("green3","red3","blue3")
plot(tsd,plot.type="single",ylab="Index",col=colours)
# Legend
ltxt<-names(dat)
legend("topleft",lty=1,col=colours,
       legend=ltxt)

set.seed(22)
# random_numbers <- runif(100, min=0, max=10)
growth = 0.03
t <- 1:100
random_u <- runif(100, min=0, max=1)
(non_stationary_ts <- growth * t + 1*random_u)
plot(non_stationary_ts, type="l")

# modulus test --> returns remainder of division
7%%3

# Seasonal-Trend decomposition by Loess Algorithm (STL)
#load data
data(co2)
#run decomposition
co2.stl<-stl(co2,s.window="periodic")

# just show one season
plot(co2.stl, xlim=c(1960, 1961))


# FITTING OF (PERIODIC) FUNCTIONS
#generate sample data set
t<-seq(1,100,length=100)
data<-0.1*t+cos(2*pi/10*t)+runif(100)
ts<-ts(data)
#fit model
fit<-lm(ts~t+cos(2*pi/10*t))
summary(fit)

