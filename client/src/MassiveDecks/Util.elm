module MassiveDecks.Util where


interleave : List a -> List a -> List a
interleave list1 list2 =
  case list1 of
    [] ->
      list2

    x :: xs ->
      case list2 of
        [] ->
          list1

        y :: ys ->
          y :: x :: interleave xs ys

remove : List a -> Int -> List a
remove list index =
  (List.take index list) ++ (List.drop (index + 1) list)
