#Using the area under the disease progress curve to compare disease severity
#Year	DAI*	Severity (%)
#1968	 0	0
#      10 0
#      20 0
#      30	0
#      40	3
#      50	20
#      60	50
#      70	80
#      80	90
#      90	100
#      100	100
#1969   0	  0
#       10	0
#       20	0
#       30	0
#       40	0
#       50	0
#       60	0
#       70	3
#       80	6
#      90	30
#       100	70
#*DAI = Days After Inoculation

## Set up vector for Madras AUDPC Chart
daysAfterInoculation <- c(0,10,20,30,40,50,60,70,80,90,100)
severityYear68 <- c(0,0,0,0,3,20,50,80, 90, 100, 100)
severityYear69 <- c( 0,0,0,0,0,0,0,3,6,30,70)
## Set up the line graph for 1968
plot(
        daysAfterInoculation,
        severityYear68,
        type="o",
        pch=22,
        col="mediumblue",
        ylim=c(0,100),
        xlab='Days After Inoculation',
        ylab='% Infection'
)
## Set main title
title(main="Madras Disease Progress")
## Overlay line for 1969 plot
lines(
        daysAfterInoculation,
        severityYear69,
        type="o", col="orange"
)
## Set the legend of the graph in upper left corner
legend(
        "topleft",
        c("1968","1969"),
        pch= c(22,21),
        lty=1,
        col = c("mediumblue","orange"),
        title="Year",
        inset=0.05
)
## Calculate the AUDPC using the function called 'audpc' that
##      was created in the AUDPC exercise of this document
## If you have started a new R session and did not save the
##      function you will need to create it again.
## To check that you do have the function available, try
##      entering the function name, 'audpc', at the command
##      line and R should return the content of the function.
# Calculate the AUDPC for 1968
audpc(severityYear68,daysAfterInoculation)
# Calculate the AUDPC for 1969
audpc(severityYear69,daysAfterInoculation)
