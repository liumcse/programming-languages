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
