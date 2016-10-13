url <- ""

download.file(url, "tidy3.txt")

x <- read.table("tidy3.txt", stringsAsFactors = FALSE)
head(x)
table(x[,1:2])
class(x)
