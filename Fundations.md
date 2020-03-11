
### Assignments
#### Vectors and assignment
  ```
  x <- c(10.4, 5.6, 3.1, 6.4, 21.7)
  assign("x", c(10.4, 5.6, 3.1, 6.4, 21.7))
  c(10.4, 5.6, 3.1, 6.4, 21.7) -> x
  1/x
  y <- c(x, 0, x)
  ```
#### Vector arithmetic
```
v <- 2*x + y + 1

sum((x-mean(x))^2)/(length(x)-1)

sqrt(-17)
```
#### Helper functions to create vectors
```
seq(-5, 5, by=.2) -> s3
s4 <- seq(length=51, from=-5, by=.2)
s5 <- rep(x, times=5)
s6 <- rep(x, each=5)
```

#### Logical vectors
```
temp <- x > 13
```
#### Missing values
```
z <- c(1:3,NA);  ind <- is.na(z)
```

#### Character vectors
```
"New iteration results" -> c
labs <- paste(c("X","Y"), 1:10, sep="")
  output: c("X1", "Y2", "X3", "Y4", "X5", "Y6", "X7", "Y8", "X9", "Y10")
```

#### Index vectors; selecting and modifying subsets of a data set
1. Logical vector
	 ```
	 y <- x[!is.na(x)]
	 (x+1)[(!is.na(x)) & x>0] -> z
	 ```
2. A vector of positive integral quantities
	```
	x[1:10]
	c("x","y")[rep(c(1,2,2,1), times=4)]
	
	```
