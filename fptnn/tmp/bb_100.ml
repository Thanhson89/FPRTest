open Interval
open Opt_func


let start_interval = Array.init 15 (function
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
| 10 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 11 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 12 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 13 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 14 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
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
  let var_x10 = input_array.(10) in
  let var_x11 = input_array.(11) in
  let var_x12 = input_array.(12) in
  let var_x13 = input_array.(13) in
  let var_x14 = input_array.(14) in
sin_I(((((((((((((((({low = 6.05103351546662082683e+00; high = 6.05103351546662171501e+00} *$ var_x0) +$ ({low = 3.67552955126805258601e+00; high = 3.67552955126805303010e+00} *$ var_x1)) +$ ({low = -2.58653397599830014997e+00; high = -2.58653397599829970588e+00} *$ var_x2)) +$ ({low = 6.27766276334641215584e+00; high = 6.27766276334641304402e+00} *$ var_x3)) +$ ({low = 9.41050222360310861802e+00; high = 9.41050222360311039438e+00} *$ var_x4)) +$ ({low = -1.71620497021806550642e+00; high = -1.71620497021806528437e+00} *$ var_x5)) +$ ({low = -9.53898378869987517703e+00; high = -9.53898378869987340067e+00} *$ var_x6)) +$ ({low = 9.18829317259191569178e+00; high = 9.18829317259191746814e+00} *$ var_x7)) +$ ({low = 3.35294444481190367924e+00; high = 3.35294444481190412333e+00} *$ var_x8)) +$ ({low = -4.21757637475051350151e+00; high = -4.21757637475051261333e+00} *$ var_x9)) +$ ({low = -2.46993739311794913149e+00; high = -2.46993739311794868740e+00} *$ var_x10)) +$ ({low = 8.41023789448879632857e+00; high = 8.41023789448879810493e+00} *$ var_x11)) +$ ({low = 2.02930191540262327976e+00; high = 2.02930191540262372385e+00} *$ var_x12)) +$ ({low = 4.66988502819303974434e+00; high = 4.66988502819304063252e+00} *$ var_x13)) +$ ({low = -7.09849750578192750794e+00; high = -7.09849750578192661976e+00} *$ var_x14)))

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
