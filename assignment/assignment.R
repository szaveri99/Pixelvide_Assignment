## data is being stored in csv file 'Book1'.

## reading the data
football <- read.csv(file.choose(),header = TRUE)
View(football)

## converting into data frame so that operations can be performed easily.
football <- as.data.frame(football)

## different countries
country <- c("ESP","ENG","KAZ","BLR","UKR","GER","POR","CRO","RUS","TUR","ITA","BEL"
             ,"FRA","ISR","SWE","GER","NED")
## top played countries
great <- c("Barcelona (ESP)","Bayern (GER)","Bayern (GER)","Benfica (POR)",
                            "Chelsea (ENG)","Juventus (ITA)","Paris (FRA)","PSV (NED)",
                            "Zenit (RUS)")
grp <- c("Group A","Group B","Group C","Group D","Group E","Group F","Group G","Group H")
k <- '\n'
## checking the condition that whether each time the groups are being formed different.
n <- 0
while (n<3) {
  
a <- c()
print(paste("Round",n+1))
writeLines(k)
main <- function(x){
  while (TRUE) {
  z <- sample(x ,1,replace = FALSE)
  ifelse(z %in% a,'',a <- c(a,z))
  
  if (length(a)==8) return (a) 
 }
}


grt <- main(great)

for (j in 1:length(grt)) {
   print(paste(grp[j]))
   print(paste(grt[j]))
    x <- sample(country,4)
  for (i in 1:(length(x)-1)) {
    
    d <- grepl(x[i],football$Club..Country.)
    print(paste(sample(football[d,],1)))
  } 
 
  writeLines(k)
 }
 n <- n+1
}