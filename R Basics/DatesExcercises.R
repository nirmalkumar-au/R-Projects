# Date data types excercises

date1 <- as.Date("2020-04-26")
date1   # "2020-04-26"

class(date1) # "Date"

as.numeric(date1)  # 18378 Number of days from 1 Jan 1970
class(date1)  # "Date"

# not just format changes underlying data type
class(as.numeric(date1)) # "numeric"

date11 <- as.Date("2020-04-26 07:35:30")
date11   # "2020-04-26"
as.numeric(date11)  # 18378 Number of days from 1 Jan 1970

# POSIXct data types excercises

date2 <- as.POSIXct("2020-04-06 07:35:30")
date2  # "2020-04-26 07:35:30 AEST"

class(date2)  # "POSIXct" "POSIXt"

as.numeric(date2)  # 1586122530 Number of seconds from 1 Jan 1970
class(date2) #"POSIXct" "POSIXt"

class(as.numeric(date1)) # "numeric"

date21 <- as.POSIXct("2020-04-06 07:35:30 EDT")
date21  # "2020-04-26 07:35:30 AEST"
as.numeric(date21)  # 1586122530 Number of seconds from 1 Jan 1970

date22 <- as.POSIXct("2020-04-06")
date22  # "2020-04-26 AEST"
as.numeric(date22)  # 1586095200 Number of seconds from 1 Jan 1970

