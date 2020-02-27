open Interval
open Opt_func


let start_interval = Array.init 10 (function
| 0 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 1 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 2 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 3 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 4 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 5 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 6 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 7 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 8 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 9 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| _ -> failwith "Out of boundaries"
)

let f_X input_array = 
  let var_x0 = input_array.(0) in
  let var_x1 = input_array.(1) in
  let var_x2 = input_array.(2) in
  let var_x3 = input_array.(3) in
  let var_x4 = input_array.(4) in
  let var_x5 = input_array.(5) in
  let var_x6 = input_array.(6) in
  let var_x7 = input_array.(7) in
  let var_x8 = input_array.(8) in
  let var_x9 = input_array.(9) in
sin_I((((((((((({low = 2.77122106416336499990e+00; high = 2.77122106416336544399e+00} *$ var_x0) +$ ({low = 6.10088144186901359944e+00; high = 6.10088144186901448762e+00} *$ var_x1)) +$ ({low = -3.78792517395721839435e+00; high = -3.78792517395721795026e+00} *$ var_x2)) +$ ({low = -9.47971435319452737644e+00; high = -9.47971435319452560009e+00} *$ var_x3)) +$ ({low = 9.96128035874250450377e+00; high = 9.96128035874250628012e+00} *$ var_x4)) +$ ({low = 2.44070728649485246819e+00; high = 2.44070728649485291228e+00} *$ var_x5)) +$ ({low = 5.13640582448115345926e+00; high = 5.13640582448115434744e+00} *$ var_x6)) +$ ({low = 9.46787946811623903898e+00; high = 9.46787946811624081533e+00} *$ var_x7)) +$ ({low = -6.47224415322429802444e+00; high = -6.47224415322429713626e+00} *$ var_x8)) +$ ({low = -1.28644957219190586573e-01; high = -1.28644957219190558817e-01} *$ var_x9)))

let _ =
  let x_tol = size_max_X start_interval *. 0.000000e+00 +. 1.000000e-02 in
  let upper_bound, lower_bound, c = Opt0.opt f_X start_interval x_tol (1.000000e-02) (1.000000e-02) (1000000) in
  let () = Printf.printf "iter_max = %d\n" c in
  let () = Printf.printf "max = %0.20e\n" upper_bound in
  let () = Printf.printf "lower_max = %0.20e\n" lower_bound in
  let upper_bound, lower_bound, c = Opt0.opt (fun x -> ~-$ (f_X x)) start_interval x_tol (1.000000e-02) (1.000000e-02) (1000000) in
  let () = Printf.printf "iter_min = %d\n" c in
  let () = Printf.printf "min = %0.20e\n" (-. upper_bound) in
  let () = Printf.printf "lower_min = %0.20e\n" (-. lower_bound) in
  flush stdout
