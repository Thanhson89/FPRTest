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
sin_I(((((((((((((((({low = 6.78461624628010451232e+00; high = 6.78461624628010540050e+00} *$ var_x0) +$ ({low = 3.04657067814158466490e-01; high = 3.04657067814158522001e-01} *$ var_x1)) +$ ({low = 8.14743214280963456986e+00; high = 8.14743214280963634621e+00} *$ var_x2)) +$ ({low = -4.89536422217520250655e+00; high = -4.89536422217520161837e+00} *$ var_x3)) +$ ({low = -1.40126905573957771800e+00; high = -1.40126905573957749596e+00} *$ var_x4)) +$ ({low = -9.27208759272595450796e+00; high = -9.27208759272595273160e+00} *$ var_x5)) +$ ({low = 2.73905566617571594179e-02; high = 2.73905566617571628873e-02} *$ var_x6)) +$ ({low = 9.45201519505212672811e+00; high = 9.45201519505212850447e+00} *$ var_x7)) +$ ({low = -9.13461007113881007236e-01; high = -9.13461007113880896213e-01} *$ var_x8)) +$ ({low = 2.24266499419946319094e+00; high = 2.24266499419946363503e+00} *$ var_x9)) +$ ({low = -5.36146789492035136249e+00; high = -5.36146789492035047431e+00} *$ var_x10)) +$ ({low = -7.34681586879467651841e+00; high = -7.34681586879467563023e+00} *$ var_x11)) +$ ({low = -6.28336280856891704616e+00; high = -6.28336280856891615798e+00} *$ var_x12)) +$ ({low = 1.17685318611153455493e+00; high = 1.17685318611153477697e+00} *$ var_x13)) +$ ({low = 5.35038403510520321760e+00; high = 5.35038403510520410578e+00} *$ var_x14)))

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
