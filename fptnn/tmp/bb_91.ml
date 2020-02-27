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
sin_I(((((((((((((((({low = -1.00706217910492412670e+00; high = -1.00706217910492390466e+00} *$ var_x0) +$ ({low = -4.92474685571608983281e+00; high = -4.92474685571608894463e+00} *$ var_x1)) +$ ({low = 7.34611853552675597712e+00; high = 7.34611853552675686529e+00} *$ var_x2)) +$ ({low = -5.75576729796178909737e-02; high = -5.75576729796178840348e-02} *$ var_x3)) +$ ({low = 8.25568964265401916691e+00; high = 8.25568964265402094327e+00} *$ var_x4)) +$ ({low = 4.34289505156877364556e+00; high = 4.34289505156877453373e+00} *$ var_x5)) +$ ({low = -1.28137318551661949506e+00; high = -1.28137318551661927302e+00} *$ var_x6)) +$ ({low = -2.45749342622083410959e+00; high = -2.45749342622083366550e+00} *$ var_x7)) +$ ({low = 2.07301269858865877538e+00; high = 2.07301269858865921947e+00} *$ var_x8)) +$ ({low = -3.76955652777103900064e+00; high = -3.76955652777103855655e+00} *$ var_x9)) +$ ({low = -9.06785360562321152145e+00; high = -9.06785360562320974509e+00} *$ var_x10)) +$ ({low = 8.16657465833198159544e+00; high = 8.16657465833198337180e+00} *$ var_x11)) +$ ({low = 4.16220891676962168049e+00; high = 4.16220891676962256867e+00} *$ var_x12)) +$ ({low = -5.12362546606851321229e+00; high = -5.12362546606851232411e+00} *$ var_x13)) +$ ({low = 2.77868989567591162526e+00; high = 2.77868989567591206935e+00} *$ var_x14)))

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
