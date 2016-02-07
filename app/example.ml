
let rec fact n =
  if n = 0 then 1
  else n * fact (n - 1)

let () =
  ignore @@ fact 5;
  print_endline "done"
