library(rjson)
setwd("~/")
df <- fromJSON(file='MASTER_PRT_output.json')

cols <- c('red','brown', 'green4', 'blue', 'orange2', 'purple', 'pink3','black')
names <- c('000', '001', '010', '011', '100', '101', '110', '111')

for (l in 1:3) {

  pdf(paste("location",l,".pdf",sep=""))

  plot(df$P[[1]][[1]][[1]][[l]],type='l',xlab='Time',ylab='Population size',col='red',ylim=c(0,600))
  lines(df$P[[1]][[1]][[2]][[l]],col='brown')
  lines(df$P[[1]][[2]][[1]][[l]],col='green4')
  lines(df$P[[1]][[2]][[2]][[l]],col='blue')
  lines(df$P[[2]][[1]][[1]][[l]],col='orange2')
  lines(df$P[[2]][[1]][[2]][[l]],col='purple')
  lines(df$P[[2]][[2]][[1]][[l]],col='pink3')
  lines(df$P[[2]][[2]][[2]][[l]],col='black')
  
  legend(y=600, x=8.5,legend=names, fill=cols)

  dev.off()

}
