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
sin_I((((((((((({low = 2.89797727207158706264e+00; high = 2.89797727207158750673e+00} *$ var_x0) +$ ({low = 5.50585291518321451321e+00; high = 5.50585291518321540138e+00} *$ var_x1)) +$ ({low = 5.41960440479426619476e+00; high = 5.41960440479426708293e+00} *$ var_x2)) +$ ({low = 4.82128913744186959889e+00; high = 4.82128913744187048707e+00} *$ var_x3)) +$ ({low = 6.19524216650218217950e+00; high = 6.19524216650218306768e+00} *$ var_x4)) +$ ({low = -7.94027410091656360436e+00; high = -7.94027410091656271618e+00} *$ var_x5)) +$ ({low = 8.22441096787597025752e+00; high = 8.22441096787597203388e+00} *$ var_x6)) +$ ({low = 1.61078492218353019894e+00; high = 1.61078492218353042098e+00} *$ var_x7)) +$ ({low = -4.95682862799422174760e+00; high = -4.95682862799422085942e+00} *$ var_x8)) +$ ({low = 5.47589145541538080408e+00; high = 5.47589145541538169226e+00} *$ var_x9)))

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
