fun is_older (date_1: int*int*int, date_2: int*int*int) =
    if (#1 date_1) = (#1 date_2)
    then if (#2 date_1) = (#2 date_2)
        then if (#3 date_1) = (#3 date_2)
            then false
                else if (#3 date_1 < #3 date_2)
                    then true
                    else false
        else if (#2 date_1) < (#2 date_2)
            then true
            else false
    else if (#1 date_1) < (#1 date_2)
        then true
        else false

fun number_in_month (date_list: (int*int*int) list, month: int) =
    if null date_list
    then 0
    else let
        val head = hd(date_list)
    in
        if (#2 head) = month
        then 1 + number_in_month(tl(date_list), month)
        else number_in_month(tl(date_list), month)
    end

fun number_in_months (date_list: (int*int*int) list, month_list: int list) =
    if null month_list
    then 0
    else number_in_month(date_list, hd(month_list)) + number_in_months(date_list, tl(month_list))

fun dates_in_month (date_list: (int*int*int) list, month: int) =
    if null date_list
    then []
    else let
        val this_date = hd(date_list)
    in
        if (#2 this_date) = month
        then this_date::dates_in_month(tl(date_list), month)
        else dates_in_month(tl(date_list), month)
    end

fun dates_in_months (date_list: (int*int*int) list, month_list: int list) =
    if null date_list
    then []
    else dates_in_month(date_list, hd(month_list)) @ dates_in_months(date_list, tl(month_list))

fun get_nth (str_list: string list, pos: int) =
    if pos = 1
    then hd(str_list)
    else get_nth(tl(str_list), pos - 1)

(*TODO: make it more beautiful*)
fun date_to_string (date: int*int*int) =
    get_nth(["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"], #2 date) ^ " " ^ Int.toString(#3 date) ^ ", " ^ Int.toString(#1 date)

fun number_before_reaching_sum (sum: int, number_list: int list) =
    if null number_list orelse sum <= hd(number_list)
    then 0
    else 1 + number_before_reaching_sum(sum - hd(number_list), tl(number_list))

fun what_month (day_of_year: int) =
    number_before_reaching_sum(day_of_year, [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]) + 1

fun month_range (day_1: int, day_2: int) =
    if day_1 > day_2
    then []
    else what_month(day_1)::month_range(day_1 + 1, day_2)

fun oldest (date_list: (int*int*int) list) =
    (*TODO*)
