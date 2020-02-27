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
sin_I(((((((((((((((({low = -9.43064451499156142233e+00; high = -9.43064451499155964598e+00} *$ var_x0) +$ ({low = 9.50553631141655586134e+00; high = 9.50553631141655763770e+00} *$ var_x1)) +$ ({low = -9.94167393620977080104e+00; high = -9.94167393620976902469e+00} *$ var_x2)) +$ ({low = 3.61945870282776382965e+00; high = 3.61945870282776427374e+00} *$ var_x3)) +$ ({low = -8.24552471554756039041e+00; high = -8.24552471554755861405e+00} *$ var_x4)) +$ ({low = -1.72231926182258221480e+00; high = -1.72231926182258199276e+00} *$ var_x5)) +$ ({low = 5.08910536972045690618e-01; high = 5.08910536972045801640e-01} *$ var_x6)) +$ ({low = 7.93091762133606081875e+00; high = 7.93091762133606170693e+00} *$ var_x7)) +$ ({low = 2.23720846019336105925e+00; high = 2.23720846019336150334e+00} *$ var_x8)) +$ ({low = 7.52985288253752571563e+00; high = 7.52985288253752660381e+00} *$ var_x9)) +$ ({low = 6.77500242433291077759e+00; high = 6.77500242433291166577e+00} *$ var_x10)) +$ ({low = -2.94534149950903323401e+00; high = -2.94534149950903278992e+00} *$ var_x11)) +$ ({low = -5.89827528567922687586e+00; high = -5.89827528567922598768e+00} *$ var_x12)) +$ ({low = -4.77482882587654078321e+00; high = -4.77482882587653989503e+00} *$ var_x13)) +$ ({low = 6.23776816082686380582e+00; high = 6.23776816082686469400e+00} *$ var_x14)))

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
