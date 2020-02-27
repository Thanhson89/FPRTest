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
sin_I(((((((((((((((({low = 2.89797727207158706264e+00; high = 2.89797727207158750673e+00} *$ var_x0) +$ ({low = 5.50585291518321451321e+00; high = 5.50585291518321540138e+00} *$ var_x1)) +$ ({low = 5.41960440479426619476e+00; high = 5.41960440479426708293e+00} *$ var_x2)) +$ ({low = 4.82128913744186959889e+00; high = 4.82128913744187048707e+00} *$ var_x3)) +$ ({low = 6.19524216650218217950e+00; high = 6.19524216650218306768e+00} *$ var_x4)) +$ ({low = -7.94027410091656360436e+00; high = -7.94027410091656271618e+00} *$ var_x5)) +$ ({low = 8.22441096787597025752e+00; high = 8.22441096787597203388e+00} *$ var_x6)) +$ ({low = 1.61078492218353019894e+00; high = 1.61078492218353042098e+00} *$ var_x7)) +$ ({low = -4.95682862799422174760e+00; high = -4.95682862799422085942e+00} *$ var_x8)) +$ ({low = 5.47589145541538080408e+00; high = 5.47589145541538169226e+00} *$ var_x9)) +$ ({low = 4.20751771418448061723e+00; high = 4.20751771418448150541e+00} *$ var_x10)) +$ ({low = 6.88540097290701336163e+00; high = 6.88540097290701424981e+00} *$ var_x11)) +$ ({low = 9.76967972294480624385e+00; high = 9.76967972294480802020e+00} *$ var_x12)) +$ ({low = -3.25564672011756250924e+00; high = -3.25564672011756206516e+00} *$ var_x13)) +$ ({low = -2.60572874591333603078e+00; high = -2.60572874591333558669e+00} *$ var_x14)))

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
