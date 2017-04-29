mr_kmeans <- function(dat, k) {
	result <- matrix(NA, 
			 nrow = nrow(dat), 
			 ncol = length(k), 
			 dimnames = list(NULL, paste0('k=', k)))
	
	for (i in 1:length(k)) {
		result[,i] <- kmeans(dat, k[i])$cluster
	}
	
	return(result)
}
