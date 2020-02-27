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
max_I_I ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00}) (((((((({low = -9.93706787207971764531e+00; high = -9.93706787207971586895e+00} *$ var_x0) +$ ({low = 9.91024757165062197828e+00; high = 9.91024757165062375464e+00} *$ var_x1)) +$ ({low = 3.55362065186221975921e+00; high = 3.55362065186222020330e+00} *$ var_x2)) +$ ({low = 9.26521965111329670606e+00; high = 9.26521965111329848241e+00} *$ var_x3)) +$ ({low = 6.56032586450955346180e+00; high = 6.56032586450955434998e+00} *$ var_x4)) +$ ({low = 8.70846181595387669461e+00; high = 8.70846181595387847096e+00} *$ var_x5)) +$ ({low = 8.90039013613290030946e+00; high = 8.90039013613290208582e+00} *$ var_x6)))

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
