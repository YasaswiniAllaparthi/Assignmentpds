# PDS
Assignment-1

Question 1. Based on the following table, design the three stages of reproducible workflow, includes the work you can do and the folder structure in each stage (reference study case in chapter 3). (5 points)
Height (Inches) Weight (Pounds) Age Grip strength Frailty
65.8 112 30 30 N
71.5 136 19 31 N
69.4 153 45 29 N
68.2 142 22 28 Y
67.8 144 29 24 Y
68.7 123 50 26 N
69.8 141 51 22 Y
70.1 136 23 20 Y
67.9 112 17 19 N
66.8 120 39 31 N

Ans:
The three stages of reproducible workflow are:
1)	 Data Acquisition
2)	 Data Processing
3)	 Data Analysis

STAGE 1: DATA ACQUISITION:
The first steps which includes the extraction of the data  and the collecting of data, which are continuing tasks.
• The Excel file that must be the first be converted to a CSV file.
• In the second stage, a project structure is to be created to organize the data collection and the script of the project.          

# data<-read.csv("Frailty_data.csv") #

STAGE 2: DATA PROCESSING:
Create a script to process the raw data. Reading the raw data into an object called Frality_data
# data<-read.csv("Frailty_data.csv")
Cleaning the rows to remove all Not Available cases where Weight.Pounds <120
# cleaned_data<-na.omit(data[data$Weight.Pounds.>=120,])
Writing clean_data into the new CSV file
# write.csv(cleaned_data,"cleaned_data.csv")

STAGE 3: DATA ANALYSIS:
Clean data should be saved in a variable. Analyze clean data from field-by-field testing to determine whether age and grip significantly differ from one another.
Read the clean_data csv into clean_data
# cleaned_data<-na.omit(data[data$Weight.Pounds.>=120,])
testing of fraility by fields
# testing_data<-t.test(cleaned_data$Age,cleaned_data$Grip.Strength,paired=TRUE)
Saved the derived result to a text file in a result directory
# capture.output(testing_data,file="testing_results.txt")

* Plotting the Age vs Grip data:
Plot between the Age and Grip data
# attach(cleaned_data)
# plot(Age,Grip.Strength,main="Plot between Age and Grip ", xlab="Age",ylab="Grip",col="red")

Queston 2. Perform 5 data visualization tasks on the student performance dataset given in the link below (create 5 different visualizations). Explain what kind analysis has become easier  with each of the visualizations. Create the folder structure for this question similar to question 1.

Ans:
1.	Sunflowerplot:
. To avoid overplotting, combine a scatterplot and a sunflower plot. A sunflower plot only shows one point when multiple points with the same x, y values exist, but the tiny borders or petals radiating from the point show how many points are truly present.

• Sunflower plots are data-display bivariate scatter plots. Reading becomes more difficult as the amount of data in a given plot area grows. Because each petal on a sunflower represents a single observation, sunflower plots can handle massive data densities.


Data acquisition and processing:
# input<-read.csv("StudentsPerformance.csv")
# attach(input)
Data Analysis:
# sunflowerplot(reading.score,writing.score,main="sunflowerplot between reading and math",xlab="reading score",ylab="writing score",col="purple")

2. Histogram:
. A histogram is a visual representation of the frequency distribution of categorize continuous classes, as well as a graphic representation of the frequency distribution of a small number of data points from a single variable.

• A wonderful technique to finding out the distributions of  the numerical or quantitative data is to use the histogram that to convert interval data into continuous or discrete data.

Data acquisition and processing:
# input<-read.csv("StudentsPerformance.csv")
# attach(input)
Data Analysis:
#       hist(reading.score,main="histogram in between reading and writing score",xlab="reading score",col="orange")

3. Plot:
• A plot, which is often in the form of a graph, depicts the relationship between two or more variables graphically. The storyline could be written by hand or created digitally. Historically, the two main types of plotters were mechanical and electronic.

• A plot that can be used that to demonstrate how the values in a dataset relate to one another. Use large datasets to demonstrate correlation and clustering. If each point in your dataset has two values. When the order of the points in the dataset is unimportant.


Data acquistion and processing:
# input<-read.csv("StudentsPerformance.csv")
# attach(input)
Data Analysis:
 #      plot(writing.score,reading.score,main="plot in between writing and reading score",xlab="writing.score", ylab="reading.score", col="green")
       

4.QQplot:
•	The quantile-quantile (q-q) plot is a graphical method for determining whether two data sets are from populations with a common distribution. In a q-q graphic, the quantiles from the first data set are plotted against the quantiles from the second data set.
• The quantile-quantile (QQ) plot determines whether two sets of data are drawn from the same distribution.
• Q-Q plots are used to determine the type of distribution for a random variable, which can be Gaussian, Uniform, Exponential, Pareto, or another. The power of the Q-Q plot can be used to determine the type of distribution just by looking at it.


Data acquistion and processing:
# input<-read.csv("StudentsPerformance.csv")
# attach(input)
Data Analysis:
# qqplot(math.score,reading.score,main="sunflowerplot between math and reading",xlab="math score",ylab="reaading score",col="yellow")


5.Pairs:
•	An ordered pair contains the coordinates of one point. Use an ordered pair of coordinates to find a location (x, y). The first value is the x-coordinate, and the second is the y-coordinate. Put a dot on the graph to represent the location of the ordered pair.
•The pairs() function in R can be used to generate a pair plot. The pairs function, which comes pre-installed with R Language, generates a scatterplot matrix. The pairs() function generates a scatter plot matrix for each pair of variables in the input data frame
Data acquistion and processing:
# input<-read.csv("StudentsPerformance.csv")
# attach(input)
Data Analysis:
 # pairs(~writing.score+math.score+reading.score,data=data,main="contrast between writing, math, and reading scores", col="pink")

Histogram:
In my opinion, the histograms are adaptable and straightforward. It can be used to provide an informative look at a frequency distribution in a variety of situations. It can be used to develop the best price plans and marketing strategies, for example, in sales and marketing.
A frequency histogram is useful because it allows you to visually compare data to a frequency distribution. Histograms show the typical distribution of a well-run process. However, because histograms are constantly generated, any variation can be easily identified. Organizations benefit greatly from this because it allows them to quickly identify and manage process deviation.
The frequency histogram, on the other hand, has the disadvantage of taking more time and effort to generate than the frequency graph.



Histogram vs sunflowerplot:
It can aid in the detection of anomalous results, data omissions, and outliers. A histogram categorizes or groups the likely values in a data set.

Unfavorable, difficult to identify significant trends in vast data sets, and possibly perplexing for viewers unfamiliar with the concept.


 Histogram vs plot:
A histogram can show the frequency of a large amount of data. The density plot represents the data-estimated histogram in a continuous and smooth manner. A kernel density estimate is used to compute it.

Plots are used to show the set's values. In contrast to the box plot, the median is less obvious.

Histogram vs qqplot:

The histogram shows that this distribution is skewed to the left. Given that the data sets are drawn from various distributions, the QQ plot shows that the points do not line up in a straight line.

Histograms, on the other hand, are frequently used to conveniently depict the key characteristics of the data's distribution.


Histogram vs pairs:
The scatter plot and histogram are the two main graphs upon which the pairs plot is built.

The upper and lower triangular scatter plots depict the relationship, or lack thereof, between two variables, whereas the diagonal histogram depicts the distribution of a single variable.


