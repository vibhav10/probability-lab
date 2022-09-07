#setup
dir.create(path="data")
dir.create(path="output")

#Question4 Part(a)
head(x=iris)
boxplot(formula = Petal.Length ~ Species, data = iris)

#Question4 Part(b)
dimension = dim(iris)

#Question4 Part(c)
range_sepal_length = range(iris$Sepal.Length, na.rm=T)
range_petal_length = range(iris$Petal.Length, na.rm=T)
range_petal_width = range(iris$Petal.Width, na.rm=T)

#Question4 Part(d)
mean_sepal_length = mean(iris$Sepal.Length)
mean_petal_length = mean(iris$Petal.Length)
mean_petal_width = mean(iris$Petal.Width)

#Question4 Part(e)
median_sepal_length = median(iris$Sepal.Length)
median_petal_length = median(iris$Petal.Length)
median_petal_width = median(iris$Petal.Width)

#Question4 Part(f)
first_quantile_sepal_length = quantile(iris$Sepal.Length, prob=0.25)
third_quantile_sepal_length = quantile(iris$Sepal.Length, prob=0.75)
inter_quantile_range_sepal_length = third_quantile_sepal_length-first_quantile_sepal_length

first_quantile_petal_length = quantile(iris$Petal.Length, prob=0.25)
third_quantile_petal_length = quantile(iris$Petal.Length, prob=0.75)
inter_quantile_range_petal_length = third_quantile_petal_length-first_quantile_petal_length

first_quantile_petal_width = quantile(iris$Petal.Width, prob=0.25)
third_quantile_petal_width = quantile(iris$Petal.Width, prob=0.75)
inter_quantile_range_petal_width = third_quantile_petal_width-first_quantile_petal_width
#Question4 Part(g)
standard_dev_sepal_length = sd(iris$Sepal.Length, na.rm=T)
variance_sepal_length = var(iris$Sepal.Length, na.rm=T)

standard_dev_petal_length = sd(iris$Petal.Length, na.rm=T)
variance_petal_length = var(iris$Petal.Length, na.rm=T)

standard_dev_petal_width = sd(iris$Petal.Width, na.rm=T)
variance_petal_width = var(iris$Petal.Width, na.rm=T)

#Question4 Part(i)
summary_dataset_iris = summary(iris)