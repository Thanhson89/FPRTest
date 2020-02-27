open Interval
open Opt_func


let start_interval = Array.init 7 (function
| 0 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 1 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 2 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 3 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 4 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 5 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 6 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
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
max_I_I ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00}) (((((((({low = -5.32784755377304275470e+00; high = -5.32784755377304186652e+00} *$ var_x0) +$ ({low = -5.47124355906576553821e+00; high = -5.47124355906576465003e+00} *$ var_x1)) +$ ({low = 6.80154433190718332725e+00; high = 6.80154433190718421542e+00} *$ var_x2)) +$ ({low = 4.78116840139809351484e+00; high = 4.78116840139809440302e+00} *$ var_x3)) +$ ({low = -9.96020213804437304361e+00; high = -9.96020213804437126726e+00} *$ var_x4)) +$ ({low = 7.55875017476922916870e+00; high = 7.55875017476923005688e+00} *$ var_x5)) +$ ({low = -6.14436385267056728310e+00; high = -6.14436385267056639492e+00} *$ var_x6)))

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
