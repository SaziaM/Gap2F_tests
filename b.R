##Reading the file
a<-read.table("Glycolisis", header = FALSE, sep = "\t", quote = "\"")
##converting the factor column to string
a$V1<-as.character(a$V1)
##taking only first expression before "=>"
b<-lapply(a$V1,function(x) strsplit(x,"=>",fixed=TRUE)[[1]][1])
##Taking only the indices of expressions containing the matching string "H2O["
c<-grep("H2O[",b,value=FALSE,fixed=TRUE)
Result1<-length(c)
##Functions which requires H2O
Result1A<-a[c,]
##taking only first expression after "=>"
b2<-lapply(a$V1,function(x) strsplit(x,"=>",fixed=TRUE)[[1]][2])
##Taking only the indices of expressions containing the matching string "H2O["
c2<-grep("H2O[",b2,value=FALSE,fixed=TRUE)
Result2<-length(c2)
##Functions which produces H2O
Result2A<-a[c2,]