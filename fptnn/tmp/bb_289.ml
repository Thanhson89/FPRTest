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
max_I_I ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00}) ((((((((((({low = -9.07137498758308424840e+00; high = -9.07137498758308247204e+00} *$ var_x0) +$ ({low = 4.30908852617427040599e+00; high = 4.30908852617427129417e+00} *$ var_x1)) +$ ({low = -9.20775312447659111115e+00; high = -9.20775312447658933479e+00} *$ var_x2)) +$ ({low = -4.81086242805027186620e+00; high = -4.81086242805027097802e+00} *$ var_x3)) +$ ({low = -5.85677127289484378281e+00; high = -5.85677127289484289463e+00} *$ var_x4)) +$ ({low = 2.29526913412489674826e+00; high = 2.29526913412489719235e+00} *$ var_x5)) +$ ({low = 7.03323069878191642346e+00; high = 7.03323069878191731163e+00} *$ var_x6)) +$ ({low = -1.35716505847309321098e-01; high = -1.35716505847309293342e-01} *$ var_x7)) +$ ({low = -4.78164550831376100604e+00; high = -4.78164550831376011786e+00} *$ var_x8)) +$ ({low = -1.49558904025166583551e-02; high = -1.49558904025166566204e-02} *$ var_x9)))

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
