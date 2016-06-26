---
title       : Developing Data Products
subtitle    : Course Project
author      : Sandor Boros
job         : Student
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Insight for the layperson

The features of this app are fairly limited. It was purpose built to enable the __Citizen Data Scientist__ to explore some of the information available in the Nuclear dataset.
(More about the data on the next slide.)
The user interface provides simple means to filter the dataset based on only 3 criteria and display the overview in a barchart instantaneously.
The app is available here:  https://sandor.shinyapps.io/CourseProject/

![](/Users/sandor/Documents/DataScienceCourse/DataDevePresentation/DataDevePresentation/assets/img/i-have-no-idea-what-im-doing_cropped.jpg)

---

## The Dataset

The data is available in the "boot"" R package and it was originally obtained from 
"Cox, D.R. and Snell, E.J. (1981) Applied Statistics: Principles and Examples. Chapman and Hall."
This app uses the below columns from the dataset:
* cost The capital cost of construction in millions of dollars adjusted to 1976 base.
* date The date on which the construction permit was issued. The data are measured in years since January 1 1990 to the nearest month.
* t1 The time between application for and issue of the construction permit.
A quick summary of the data:
* pt A binary variable where 1 indicates those plants with partial turnkey guarantees.

---

## The Dataset - ctd.

A quick summary of the data:

```
##     cost  date t1 t2  cap pr ne ct bw cum.n pt
## 1 460.05 68.58 14 46  687  0  1  0  0    14  0
## 2 452.99 67.33 10 73 1065  0  0  1  0     1  0
## 3 443.22 67.33 10 85 1065  1  0  1  0     1  0
## 4 652.32 68.00 11 67 1065  0  1  1  0    12  0
## 5 642.23 68.00 11 78 1065  1  1  1  0    12  0
## 6 345.39 67.92 13 51  514  0  1  1  0     3  0
```

```
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##   207.5   310.3   448.1   461.6   612.0   881.2
```

```
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##    7.00   11.75   13.00   13.75   15.25   22.00
```

---

## Features and UI

The user can easily change the displayed plot with three very simple controls: 
* A slider, to limit the records to those with a delay under a specific value
* A drop-down box to set the date in which the construction started
* A checkbox to consider only those powerplants for which the builder provided a partial turnkey guarantee.

![](/Users/sandor/Documents/DataScienceCourse/DataDevePresentation/DataDevePresentation/assets/img/control_small.png)

---

## Features and UI - ctd.
A sample plot without any filters.
![plot of chunk unnamed-chunk-2](assets/fig/unnamed-chunk-2-1.png)

---

## Thank you
Even though the app is not as feature-rich  as it could be, but it can be helpful in providing a brief look into the Nuclear Power Station Contruction data for those who prefer looking at charts instead of raw data, but don't have the skills to create them.

The image was taken from https://strongsuitblog.files.wordpress.com/2014/05/i-have-no-idea-what-im-doing.jpg




