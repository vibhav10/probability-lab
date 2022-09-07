# 4. If there are 200 misprints randomly distributed in a book of 500 pages, find the probability that a given page will contain at most 2 misprints?

#using ppois function from R
#probability that there are at most 2 misprints in a page
ppois(2,200/500,lower.tail = TRUE)
