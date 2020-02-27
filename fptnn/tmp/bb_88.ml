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
sin_I((((((((((({low = 3.49030051728689727497e+00; high = 3.49030051728689771906e+00} *$ var_x0) +$ ({low = -9.76386137811495657957e+00; high = -9.76386137811495480321e+00} *$ var_x1)) +$ ({low = -8.29930701896824629671e+00; high = -8.29930701896824452035e+00} *$ var_x2)) +$ ({low = 1.08719428491415115445e+00; high = 1.08719428491415137650e+00} *$ var_x3)) +$ ({low = -6.94984777923036212144e+00; high = -6.94984777923036123326e+00} *$ var_x4)) +$ ({low = 9.81602915339548687257e+00; high = 9.81602915339548864893e+00} *$ var_x5)) +$ ({low = 9.94214642893294886505e+00; high = 9.94214642893295064141e+00} *$ var_x6)) +$ ({low = -5.27377091944347853314e+00; high = -5.27377091944347764496e+00} *$ var_x7)) +$ ({low = 8.59724491189345485509e+00; high = 8.59724491189345663145e+00} *$ var_x8)) +$ ({low = -5.35478384744989810429e+00; high = -5.35478384744989721611e+00} *$ var_x9)))

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
