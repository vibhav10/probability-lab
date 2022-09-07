# 3. In a city, 6% of all drivers get at least one parking ticket per year. Use Poisson distribution to determine the probability that among 80 drivers, 4 will get atleast one parking ticket in any
# given year.

#using dpois function from R
#probability that 4 drivers will get atleast one parking ticket in a year
dpois(4,80*0.06)