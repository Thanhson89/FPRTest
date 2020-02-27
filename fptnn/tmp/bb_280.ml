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
max_I_I ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00}) ((((((((((({low = -6.11837217406149935783e+00; high = -6.11837217406149846965e+00} *$ var_x0) +$ ({low = -4.56934594931908488746e+00; high = -4.56934594931908399928e+00} *$ var_x1)) +$ ({low = -9.32605583252803249650e+00; high = -9.32605583252803072014e+00} *$ var_x2)) +$ ({low = 5.20527068178118668129e-01; high = 5.20527068178118779151e-01} *$ var_x3)) +$ ({low = 9.75444746141236862513e+00; high = 9.75444746141237040149e+00} *$ var_x4)) +$ ({low = -2.79841976681819692985e+00; high = -2.79841976681819648576e+00} *$ var_x5)) +$ ({low = 6.17017731195647822773e+00; high = 6.17017731195647911591e+00} *$ var_x6)) +$ ({low = 6.72415744444988217055e+00; high = 6.72415744444988305872e+00} *$ var_x7)) +$ ({low = -2.54706653997023790836e+00; high = -2.54706653997023746427e+00} *$ var_x8)) +$ ({low = -5.55363479000483728498e+00; high = -5.55363479000483639680e+00} *$ var_x9)))

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
