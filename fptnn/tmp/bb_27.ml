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
(abs_I((((cos_I(((({low = 2.73182121929898258372e+00; high = 2.73182121929898302781e+00} *$ var_x0) +$ ({low = -4.82497257362899834021e+00; high = -4.82497257362899745203e+00} *$ var_x1)) +$ ({low = 8.37944345693406944520e+00; high = 8.37944345693407122155e+00} *$ var_x2))) *$ (var_x0 *$ {low = -1.33043760033955860145e+00; high = -1.33043760033955837940e+00})) +$ (cos_I(((({low = 2.73182121929898258372e+00; high = 2.73182121929898302781e+00} *$ var_x0) +$ ({low = -4.82497257362899834021e+00; high = -4.82497257362899745203e+00} *$ var_x1)) +$ ({low = 8.37944345693406944520e+00; high = 8.37944345693407122155e+00} *$ var_x2))) *$ (var_x1 *$ {low = 9.38150396690431986890e-01; high = 9.38150396690432097913e-01}))) +$ (cos_I(((({low = 2.73182121929898258372e+00; high = 2.73182121929898302781e+00} *$ var_x0) +$ ({low = -4.82497257362899834021e+00; high = -4.82497257362899745203e+00} *$ var_x1)) +$ ({low = 8.37944345693406944520e+00; high = 8.37944345693407122155e+00} *$ var_x2))) *$ (var_x2 *$ {low = 4.83676959014911922452e+00; high = 4.83676959014912011270e+00})))) +$ (abs_I((cos_I(((({low = 2.73182121929898258372e+00; high = 2.73182121929898302781e+00} *$ var_x0) +$ ({low = -4.82497257362899834021e+00; high = -4.82497257362899745203e+00} *$ var_x1)) +$ ({low = 8.37944345693406944520e+00; high = 8.37944345693407122155e+00} *$ var_x2))) *$ floor_power2_I((({low = 2.73182121929898258372e+00; high = 2.73182121929898302781e+00} *$ var_x0) +$ {low = -7.93002605640625120072e-08; high = 7.93002605640625120072e-08})))) +$ (abs_I((cos_I(((({low = 2.73182121929898258372e+00; high = 2.73182121929898302781e+00} *$ var_x0) +$ ({low = -4.82497257362899834021e+00; high = -4.82497257362899745203e+00} *$ var_x1)) +$ ({low = 8.37944345693406944520e+00; high = 8.37944345693407122155e+00} *$ var_x2))) *$ floor_power2_I((({low = -4.82497257362899834021e+00; high = -4.82497257362899745203e+00} *$ var_x1) +$ {low = -5.59181211406250058360e-08; high = 5.59181211406250058360e-08})))) +$ (abs_I((cos_I(((({low = 2.73182121929898258372e+00; high = 2.73182121929898302781e+00} *$ var_x0) +$ ({low = -4.82497257362899834021e+00; high = -4.82497257362899745203e+00} *$ var_x1)) +$ ({low = 8.37944345693406944520e+00; high = 8.37944345693407122155e+00} *$ var_x2))) *$ floor_power2_I(((({low = 2.73182121929898258372e+00; high = 2.73182121929898302781e+00} *$ var_x0) +$ ({low = -4.82497257362899834021e+00; high = -4.82497257362899745203e+00} *$ var_x1)) +$ {low = -4.92846250357031400192e-07; high = 4.92846250357031400192e-07})))) +$ (abs_I((cos_I(((({low = 2.73182121929898258372e+00; high = 2.73182121929898302781e+00} *$ var_x0) +$ ({low = -4.82497257362899834021e+00; high = -4.82497257362899745203e+00} *$ var_x1)) +$ ({low = 8.37944345693406944520e+00; high = 8.37944345693407122155e+00} *$ var_x2))) *$ floor_power2_I((({low = 8.37944345693406944520e+00; high = 8.37944345693407122155e+00} *$ var_x2) +$ {low = -2.88293933281250006717e-07; high = 2.88293933281250006717e-07})))) +$ (abs_I((cos_I(((({low = 2.73182121929898258372e+00; high = 2.73182121929898302781e+00} *$ var_x0) +$ ({low = -4.82497257362899834021e+00; high = -4.82497257362899745203e+00} *$ var_x1)) +$ ({low = 8.37944345693406944520e+00; high = 8.37944345693407122155e+00} *$ var_x2))) *$ floor_power2_I((((({low = 2.73182121929898258372e+00; high = 2.73182121929898302781e+00} *$ var_x0) +$ ({low = -4.82497257362899834021e+00; high = -4.82497257362899745203e+00} *$ var_x1)) +$ ({low = 8.37944345693406944520e+00; high = 8.37944345693407122155e+00} *$ var_x2)) +$ {low = -1.49639592094296938337e-06; high = 1.49639592094296938337e-06})))) +$ abs_I(floor_power2_I((sin_I(((({low = 2.73182121929898258372e+00; high = 2.73182121929898302781e+00} *$ var_x0) +$ ({low = -4.82497257362899834021e+00; high = -4.82497257362899745203e+00} *$ var_x1)) +$ ({low = 8.37944345693406944520e+00; high = 8.37944345693407122155e+00} *$ var_x2))) +$ {low = -1.97323502597048705805e-06; high = 1.97323502597048705805e-06})))))))))

let _ =
  let x_tol = size_max_X start_interval *. 0.000000e+00 +. 1.000000e-02 in
  let upper_bound, lower_bound, c = Opt0.opt f_X start_interval x_tol (1.000000e-02) (1.000000e-02) (1000000) in
  let () = Printf.printf "iter_max = %d\n" c in
  let () = Printf.printf "max = %0.20e\n" upper_bound in
  let () = Printf.printf "lower_max = %0.20e\n" lower_bound in
  let () = Printf.printf "iter_min = 0\n" in
  let () = Printf.printf "min = 0\n" in
  let () = Printf.printf "lower_min = 0\n" in
  flush stdout
