open Interval
open Opt_func


let start_interval = Array.init 3 (function
| 0 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 1 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 2 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| _ -> failwith "Out of boundaries"
)

let f_X input_array = 
  let var_x0 = input_array.(0) in
  let var_x1 = input_array.(1) in
  let var_x2 = input_array.(2) in
max_I_I ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00}) (((({low = 1.16551405512502967432e-01; high = 1.16551405512502981310e-01} *$ sin_I(((({low = 5.53654084193168571915e+00; high = 5.53654084193168660732e+00} *$ var_x0) +$ ({low = 1.39624506564058847857e+00; high = 1.39624506564058870062e+00} *$ var_x1)) +$ ({low = -5.09352423347978700008e+00; high = -5.09352423347978611190e+00} *$ var_x2)))) +$ ({low = 1.95629206954784939931e+00; high = 1.95629206954784962136e+00} *$ sin_I(((({low = 5.53654084193168571915e+00; high = 5.53654084193168660732e+00} *$ var_x0) +$ ({low = 1.39624506564058847857e+00; high = 1.39624506564058870062e+00} *$ var_x1)) +$ ({low = -5.09352423347978700008e+00; high = -5.09352423347978611190e+00} *$ var_x2))))) +$ ({low = -8.01820046966924948606e+00; high = -8.01820046966924770970e+00} *$ sin_I(((({low = 5.53654084193168571915e+00; high = 5.53654084193168660732e+00} *$ var_x0) +$ ({low = 1.39624506564058847857e+00; high = 1.39624506564058870062e+00} *$ var_x1)) +$ ({low = -5.09352423347978700008e+00; high = -5.09352423347978611190e+00} *$ var_x2))))))

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
