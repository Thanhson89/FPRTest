open Interval
open Opt_func


let start_interval = Array.init 6 (function
| 0 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 1 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 2 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 3 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 4 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 5 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| _ -> failwith "Out of boundaries"
)

let f_X input_array = 
  let var_x0 = input_array.(0) in
  let var_x1 = input_array.(1) in
  let var_x2 = input_array.(2) in
  let var_x3 = input_array.(3) in
  let var_x4 = input_array.(4) in
  let var_x5 = input_array.(5) in
max_I_I ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00}) ((((((({low = 4.18523317700303765232e-01; high = 4.18523317700303820743e-01} *$ var_x0) +$ ({low = 2.52157833467731817834e+00; high = 2.52157833467731862243e+00} *$ var_x1)) +$ ({low = 6.74107491743764253300e+00; high = 6.74107491743764342118e+00} *$ var_x2)) +$ ({low = 2.23415931875933893025e-01; high = 2.23415931875933920780e-01} *$ var_x3)) +$ ({low = 8.55415436415915131363e+00; high = 8.55415436415915308999e+00} *$ var_x4)) +$ ({low = -6.73222264584290641665e+00; high = -6.73222264584290552847e+00} *$ var_x5)))

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
