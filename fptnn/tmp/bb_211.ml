open Interval
open Opt_func


let start_interval = Array.init 8 (function
| 0 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 1 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 2 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 3 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 4 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 5 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 6 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 7 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
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
max_I_I ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00}) ((((((((({low = 4.85459910702463248722e-01; high = 4.85459910702463304233e-01} *$ var_x0) +$ ({low = 7.51434317046750166469e+00; high = 7.51434317046750255287e+00} *$ var_x1)) +$ ({low = 3.07549562899202788557e+00; high = 3.07549562899202832966e+00} *$ var_x2)) +$ ({low = 9.00861750249752368802e+00; high = 9.00861750249752546438e+00} *$ var_x3)) +$ ({low = 3.79721137785638696016e+00; high = 3.79721137785638740425e+00} *$ var_x4)) +$ ({low = -9.60861745409880718682e+00; high = -9.60861745409880541047e+00} *$ var_x5)) +$ ({low = -7.41252824098041251943e+00; high = -7.41252824098041163126e+00} *$ var_x6)) +$ ({low = 3.45651687049806488616e+00; high = 3.45651687049806533025e+00} *$ var_x7)))

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
