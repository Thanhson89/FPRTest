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
sin_I((((((((((({low = -8.42378369449008346237e-02; high = -8.42378369449008207459e-02} *$ var_x0) +$ ({low = 2.42671257150536190395e+00; high = 2.42671257150536234803e+00} *$ var_x1)) +$ ({low = -3.56044020850025733083e+00; high = -3.56044020850025688674e+00} *$ var_x2)) +$ ({low = 8.57429374636183361247e+00; high = 8.57429374636183538883e+00} *$ var_x3)) +$ ({low = 2.46983644107393507383e+00; high = 2.46983644107393551792e+00} *$ var_x4)) +$ ({low = 5.22178139539524188706e+00; high = 5.22178139539524277524e+00} *$ var_x5)) +$ ({low = -4.86043051750795651600e+00; high = -4.86043051750795562782e+00} *$ var_x6)) +$ ({low = 8.89867764060369381696e-01; high = 8.89867764060369492718e-01} *$ var_x7)) +$ ({low = 6.92805233570660927711e+00; high = 6.92805233570661016529e+00} *$ var_x8)) +$ ({low = 4.14202093439419094523e+00; high = 4.14202093439419183341e+00} *$ var_x9)))

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
