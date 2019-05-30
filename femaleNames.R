getwd()
female.names<-read.table(file='Indian-Female-Names.csv',sep=',')
female.names<-female.names[female.names$V1!='',]
female.names$first<-as.character(female.names$V1)
female.names$first<-strsplit(female.names$first," ")
female.names$first<-as.list(female.names$first)
female.names$first<-lapply(female.names$first,function(x) x[1])
female.names$LastChar <- sapply(strsplit(as.character(female.names$first), ''), tail, 1)
female.names[4,]
female.names$LastChar<-as.factor(female.names$LastChar)
female.names1<-female.names[,4:5]
female.names1<-female.names1[!duplicated(female.names1$first),]
a<-female.names1[female.names1$LastChar=='a',]
i<-female.names1[female.names1$LastChar=='i',]
a.prop<-nrow(a)/nrow(female.names1)
i.prop<-nrow(i)/nrow(female.names1)
others.prop<-1-(a.prop+i.prop)
a.prop
i.prop
others.prop
table(female.names1$LastChar)
View(female.names1)

rm(list = ls())
