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
sin_I((((((((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ ({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3)) +$ ({low = -5.92656660090328202273e+00; high = -5.92656660090328113455e+00} *$ var_x4)) +$ ({low = -8.56663097937564721462e+00; high = -8.56663097937564543827e+00} *$ var_x5)) +$ ({low = 9.12285201627886266351e+00; high = 9.12285201627886443987e+00} *$ var_x6)) +$ ({low = -6.59553467047272512502e+00; high = -6.59553467047272423684e+00} *$ var_x7)) +$ ({low = 8.20624845566163685362e+00; high = 8.20624845566163862998e+00} *$ var_x8)) +$ ({low = -2.03820288306146402135e+00; high = -2.03820288306146357726e+00} *$ var_x9)))

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
