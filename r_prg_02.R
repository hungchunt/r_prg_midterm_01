> data()
> View(DNase)
> View(women)
> View(Orange)
> View(CO2)
> View(esoph)
> View(BOD)
> 
  > # plot() 繪製散佈圖
  > plot(DNase$conc, DNase$density, main = "DNase con. vs. density", xlab = "Con.", ylab = "Density", las = 1)
> 
  > # plot(..., type = "l") 繪製線圖
  > plot(women$height, women$weight, main = "Women height vs. weight", xlab = "Height", ylab = "Weight", las = 1, type ="l")
> 
  > # hist() 繪製直方圖
  > par(mfrow = c(1, 2))
> hist(Orange$age, main = "Orange tree age", xlab = "Age")
> hist(Orange$circumference, main = "Orange tree circumference", xlab = "Circumference")
> 
  > # boxplot() 繪製盒鬚圖
  > boxplot(esoph$alcgp ~ esoph$agegp, main = "Alcohol consumption by age group", las = 1, col = "pink")
> boxplot(esoph$alcgp ~ esoph$agegp, main = "Alcohol consumption by age group", las = 1, col = "pink", xlab = "Age group", ylab = "Alcohol consumption")
> boxplot(esoph$alcgp ~ esoph$agegp, main = "Alcohol consumption by age group", las = 1, col = "pink", xlab = "Age group", ylab = "Alcohol consumption")
> boxplot(esoph$tobgp ~ esoph$agegp, main = "Tobacco consumption by age group", las = 1, col = "orange", xlab = "Age group", ylab = "Tobacco consumption")
> 
  > # barplot() 繪製長條圖
  > summary(Titanic)
Number of cases in table: 2201 
Number of factors: 4 
Test for independence of all factors:
  Chisq = 1637.4, df = 25, p-value = 0
Chi-squared approximation may be incorrect
> table(factor(Titanic$Class))
Error in Titanic$Class : $ operator is invalid for atomic vectors
> table(factor(Titanic$Sex))
Error in Titanic$Sex : $ operator is invalid for atomic vectors
> Titanic_class <- Class(Titanic)
Error: could not find function "Class"
> 
  > summary(trees)
Girth           Height       Volume     
Min.   : 8.30   Min.   :63   Min.   :10.20  
1st Qu.:11.05   1st Qu.:72   1st Qu.:19.40  
Median :12.90   Median :76   Median :24.20  
Mean   :13.25   Mean   :76   Mean   :30.17  
3rd Qu.:15.25   3rd Qu.:80   3rd Qu.:37.30  
Max.   :20.60   Max.   :87   Max.   :77.00  
> table(factor(trees$Height))

63 64 65 66 69 70 71 72 74 75 76 77 78 79 80 81 82 83 85 86 87 
1  1  1  1  1  1  1  2  2  3  2  1  1  1  5  2  1  1  1  1  1 
> barplot(table(factor(trees$Height)), main = "Tree counts by height", xlab = "Height", ylab = "Tree counts", las = 1)
> table(factor(trees$Volume))

10.2 10.3 15.6 16.4 18.2 18.8 19.1 19.7 19.9   21 21.3 21.4 22.2 22.6 24.2 24.9 25.7 27.4 31.7 
1    2    1    1    1    1    1    1    1    1    1    1    1    1    1    1    1    1    1 
33.8 34.5 36.3 38.3 42.6   51 51.5 55.4 55.7 58.3   77 
1    1    1    1    1    1    1    1    1    1    1 
> par(mfrow = c(1, 1))
> barplot(table(factor(trees$Height)), main = "Tree counts by height", xlab = "Height", ylab = "Tree counts", las = 1, col = "yellow")