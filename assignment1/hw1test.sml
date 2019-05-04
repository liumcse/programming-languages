(* Homework1 Simple Test *)
(* These are basic test cases. Passing these tests does not guarantee that your code will pass the actual homework grader *)
(* To run the test, add a new line to the top of this file: use "homeworkname.sml"; *)
(* All the tests should evaluate to true. For example, the REPL should say: val test1 = true : bool *)


val test1 = is_older ((1,2,3),(2,3,4)) = true

val test2 = number_in_month ([(2012,2,28),(2013,12,1)],2) = 1
val test2_1 = number_in_month ([],2) = 0

val test3 = number_in_months ([(2012,2,28),(2013,12,1),(2011,3,31),(2011,4,28)],[2,3,4]) = 3
val test3_1 = number_in_months ([],[2,3,4]) = 0

val test4 = dates_in_month ([(2012,2,28),(2013,12,1)],2) = [(2012,2,28)]
val test4_1 = dates_in_month([(1998,9,4), (1997,2,3), (1996,2,4), (1996,9,3)], 9) = [(1998,9,4), (1996,9,3)]
val test4_2 = dates_in_month([(1998,9,4), (1997,2,3), (1996,2,4), (1996,9,3)], 2) = [(1997,2,3), (1996,2,4)]
val test4_3 = dates_in_month([], 2) = []

val test5 = dates_in_months ([(2012,2,28),(2013,12,1),(2011,3,31),(2011,4,28)],[2,3,4]) = [(2012,2,28),(2011,3,31),(2011,4,28)]
val test5_1 = dates_in_months ([],[2,3,4]) = []
val test5_2 = dates_in_months ([],[]) = []
val test5_3 = dates_in_months ([(2012,2,28),(2013,12,1),(2011,3,31),(2011,4,28)],[]) = []

val test6 = get_nth (["hi", "there", "how", "are", "you"], 2) = "there"
val test6_2 = get_nth (["hi", "there", "how", "are", "you"], 1) = "hi"

val test7 = date_to_string (2013, 6, 1) = "June 1, 2013"
val test7_1 = date_to_string (1998, 9, 4) = "September 4, 1998"

val test8 = number_before_reaching_sum (10, [1,2,3,4,5]) = 3
val test8_1 = number_before_reaching_sum (10, [11]) = 0
val test8_2 = number_before_reaching_sum (11, [11]) = 0
val test8_3 = number_before_reaching_sum (9, [1,2,3,4,5]) = 3

val test9 = what_month 70 = 3
val test9_1 = what_month 31 = 1
val test9_2 = what_month 33 = 2

val test10 = month_range (31, 34) = [1,2,2,2]
val test10_1 = month_range (31, 31) = [1]
val test10_2 = month_range (32, 31) = []


val test11 = oldest([(2012,2,28),(2011,3,31),(2011,4,28)]) = SOME (2011,3,31)
