let rec f _ = 123 in
let rec g _ = 456 in
let rec h _ = 789 in

let x = f () in
print_int ((if x <= 0 then g () else h ()) + x)
(* x is saved in both the then and else branches, 
  but it is not restored to a register. *)
