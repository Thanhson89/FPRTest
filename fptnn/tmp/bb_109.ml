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
sin_I(((((((((((((((({low = 8.36259298464687894636e+00; high = 8.36259298464688072272e+00} *$ var_x0) +$ ({low = 9.21217213654532685041e+00; high = 9.21217213654532862677e+00} *$ var_x1)) +$ ({low = -9.22026801059026723806e+00; high = -9.22026801059026546170e+00} *$ var_x2)) +$ ({low = -6.36548560942872576618e+00; high = -6.36548560942872487800e+00} *$ var_x3)) +$ ({low = -4.86171836005840951600e+00; high = -4.86171836005840862782e+00} *$ var_x4)) +$ ({low = -6.25404471533524652926e+00; high = -6.25404471533524564109e+00} *$ var_x5)) +$ ({low = 6.36321638985981419268e+00; high = 6.36321638985981508085e+00} *$ var_x6)) +$ ({low = -4.56681327855610830202e-01; high = -4.56681327855610774691e-01} *$ var_x7)) +$ ({low = -2.35294239706777474908e+00; high = -2.35294239706777430499e+00} *$ var_x8)) +$ ({low = -1.80142901046928471942e+00; high = -1.80142901046928449738e+00} *$ var_x9)) +$ ({low = 1.17910833716505059066e+00; high = 1.17910833716505081270e+00} *$ var_x10)) +$ ({low = -2.71957866602909703602e+00; high = -2.71957866602909659193e+00} *$ var_x11)) +$ ({low = -9.71984591897193617172e+00; high = -9.71984591897193439536e+00} *$ var_x12)) +$ ({low = -6.86663557528638435201e+00; high = -6.86663557528638346383e+00} *$ var_x13)) +$ ({low = 6.17470223465187473266e+00; high = 6.17470223465187562084e+00} *$ var_x14)))

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
