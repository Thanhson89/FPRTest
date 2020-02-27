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
max_I_I ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00}) (((({low = -8.42135521352538951589e+00; high = -8.42135521352538773954e+00} *$ sin_I(((({low = 2.73182121929898258372e+00; high = 2.73182121929898302781e+00} *$ var_x0) +$ ({low = -4.82497257362899834021e+00; high = -4.82497257362899745203e+00} *$ var_x1)) +$ ({low = 8.37944345693406944520e+00; high = 8.37944345693407122155e+00} *$ var_x2)))) +$ ({low = 4.11561497351989924454e+00; high = 4.11561497351990013271e+00} *$ sin_I(((({low = 2.73182121929898258372e+00; high = 2.73182121929898302781e+00} *$ var_x0) +$ ({low = -4.82497257362899834021e+00; high = -4.82497257362899745203e+00} *$ var_x1)) +$ ({low = 8.37944345693406944520e+00; high = 8.37944345693407122155e+00} *$ var_x2))))) +$ ({low = -3.22767252893881462228e+00; high = -3.22767252893881417819e+00} *$ sin_I(((({low = 2.73182121929898258372e+00; high = 2.73182121929898302781e+00} *$ var_x0) +$ ({low = -4.82497257362899834021e+00; high = -4.82497257362899745203e+00} *$ var_x1)) +$ ({low = 8.37944345693406944520e+00; high = 8.37944345693407122155e+00} *$ var_x2))))))

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
