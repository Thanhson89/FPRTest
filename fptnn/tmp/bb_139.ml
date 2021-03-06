open Interval
open Opt_func


let start_interval = Array.init 5 (function
| 0 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 1 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 2 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 3 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 4 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| _ -> failwith "Out of boundaries"
)

let f_X input_array = 
  let var_x0 = input_array.(0) in
  let var_x1 = input_array.(1) in
  let var_x2 = input_array.(2) in
  let var_x3 = input_array.(3) in
  let var_x4 = input_array.(4) in
max_I_I ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00}) (((((({low = -9.07137498758308424840e+00; high = -9.07137498758308247204e+00} *$ var_x0) +$ ({low = 4.30908852617427040599e+00; high = 4.30908852617427129417e+00} *$ var_x1)) +$ ({low = -9.20775312447659111115e+00; high = -9.20775312447658933479e+00} *$ var_x2)) +$ ({low = -4.81086242805027186620e+00; high = -4.81086242805027097802e+00} *$ var_x3)) +$ ({low = -5.85677127289484378281e+00; high = -5.85677127289484289463e+00} *$ var_x4)))

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
