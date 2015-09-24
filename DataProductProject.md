Savings Predictor
========================================================
author: M.F
date: 9/23/2015
transition: rotate
font-family: 'Helvetica'


<small>
Course Project           
Developing Data Products        
Coursera
</small>


Introduction
========================================================

You can use the Savings predictor to esitmate how much 
money you will have based on your inputs.

- Our Prediction is based on a 5% annual return.
- It can be found at https://mm123.shinyapps.io/DataScienceClass9

Screen Shot
========================================================
![savings predictor](savings.GIF)

Prediction
========================================================

We use the following simple function to predict future 
savings. We assume you will earn 5% annually.


```r
totalsavings <- function(amount, year) round(amount * (1.05) ^ year, 0)

totalsavings(1000, 10)
```

```
[1] 1629
```

The above code show that you will have $1,629 after 10 years if
you invest $1,000 now.

Conclusion
========================================================

Our savings predictor is based on a very simple prediction
model. Hope that you will enjoy it.
