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
max_I_I ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00}) (((({low = -8.77268779468291626245e+00; high = -8.77268779468291448609e+00} *$ sin_I(((({low = -8.99394174738689322623e+00; high = -8.99394174738689144988e+00} *$ var_x0) +$ ({low = 9.84313691933167156378e+00; high = 9.84313691933167334014e+00} *$ var_x1)) +$ ({low = -9.89059751573471146457e-02; high = -9.89059751573471007680e-02} *$ var_x2)))) +$ ({low = 1.20152593882447256135e+00; high = 1.20152593882447278339e+00} *$ sin_I(((({low = -8.99394174738689322623e+00; high = -8.99394174738689144988e+00} *$ var_x0) +$ ({low = 9.84313691933167156378e+00; high = 9.84313691933167334014e+00} *$ var_x1)) +$ ({low = -9.89059751573471146457e-02; high = -9.89059751573471007680e-02} *$ var_x2))))) +$ ({low = 3.65967632153867361566e+00; high = 3.65967632153867405975e+00} *$ sin_I(((({low = -8.99394174738689322623e+00; high = -8.99394174738689144988e+00} *$ var_x0) +$ ({low = 9.84313691933167156378e+00; high = 9.84313691933167334014e+00} *$ var_x1)) +$ ({low = -9.89059751573471146457e-02; high = -9.89059751573471007680e-02} *$ var_x2))))))

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
