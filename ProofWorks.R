 list.of.packages <- c("digest", "httr","jsonlite")
 new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
 if(length(new.packages)) install.packages(new.packages)
 require(digest)
 require(jsonlite)
 require(httr)

 #' Find a number p' such that hash(pp') ends with two zeroes, where p is the previous p'
 #' p is the previous proof and p' is the new proof
 #' @param last_proof <int> previous proof 
 #' @param proof <int> proof
 #' @return  <bool> TRUE if correct, FALSE if not
 
 last_proof =100   
 proof = 10552                                 
 
 # ends with two zeroes  # 100 211 286  
 # contains leading 4 zeroes ##  100, 10552,  59714
 
 guess = paste0(last_proof,proof)
 guess
 
 guess_hash = digest(guess, algo = 'sha256')
 guess_hash 
 
 # gsub('.*(.{2}$)', '\\1',guess_hash)=="00"  # ends with two zeroes
 # regexpr("0000",guess_hash)[1]==1           # contains leading 4 zeroes
 
 ## http://www.endmemo.com/program/R/gsub.php
 ## https://molecular-service-science.com/2015/01/18/text-processing-in-r-using-grep/

  
 
 
