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
(abs_I((((((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -6.69794258148376936841e-06; high = 6.69794258148376936841e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((({low = -6.11837217406149935783e+00; high = -6.11837217406149846965e+00} *$ var_x0) +$ ({low = -4.56934594931908488746e+00; high = -4.56934594931908399928e+00} *$ var_x1)) +$ ({low = -9.32605583252803249650e+00; high = -9.32605583252803072014e+00} *$ var_x2)) +$ ({low = 5.20527068178118668129e-01; high = 5.20527068178118779151e-01} *$ var_x3)) +$ ({low = 9.75444746141236862513e+00; high = 9.75444746141237040149e+00} *$ var_x4)))))) *$ (var_x0 *$ {low = -3.53261936600678438936e+00; high = -3.53261936600678394527e+00})) +$ (({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -6.69794258148376936841e-06; high = 6.69794258148376936841e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((({low = -6.11837217406149935783e+00; high = -6.11837217406149846965e+00} *$ var_x0) +$ ({low = -4.56934594931908488746e+00; high = -4.56934594931908399928e+00} *$ var_x1)) +$ ({low = -9.32605583252803249650e+00; high = -9.32605583252803072014e+00} *$ var_x2)) +$ ({low = 5.20527068178118668129e-01; high = 5.20527068178118779151e-01} *$ var_x3)) +$ ({low = 9.75444746141236862513e+00; high = 9.75444746141237040149e+00} *$ var_x4)))))) *$ (var_x1 *$ {low = 2.95486748098559987019e-02; high = 2.95486748098560021714e-02}))) +$ (({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -6.69794258148376936841e-06; high = 6.69794258148376936841e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((({low = -6.11837217406149935783e+00; high = -6.11837217406149846965e+00} *$ var_x0) +$ ({low = -4.56934594931908488746e+00; high = -4.56934594931908399928e+00} *$ var_x1)) +$ ({low = -9.32605583252803249650e+00; high = -9.32605583252803072014e+00} *$ var_x2)) +$ ({low = 5.20527068178118668129e-01; high = 5.20527068178118779151e-01} *$ var_x3)) +$ ({low = 9.75444746141236862513e+00; high = 9.75444746141237040149e+00} *$ var_x4)))))) *$ (var_x2 *$ {low = -5.13038261891891256283e+00; high = -5.13038261891891167465e+00}))) +$ (({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -6.69794258148376936841e-06; high = 6.69794258148376936841e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((({low = -6.11837217406149935783e+00; high = -6.11837217406149846965e+00} *$ var_x0) +$ ({low = -4.56934594931908488746e+00; high = -4.56934594931908399928e+00} *$ var_x1)) +$ ({low = -9.32605583252803249650e+00; high = -9.32605583252803072014e+00} *$ var_x2)) +$ ({low = 5.20527068178118668129e-01; high = 5.20527068178118779151e-01} *$ var_x3)) +$ ({low = 9.75444746141236862513e+00; high = 9.75444746141237040149e+00} *$ var_x4)))))) *$ (var_x3 *$ {low = 5.66710239035391957763e-02; high = 5.66710239035392027152e-02}))) +$ (({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -6.69794258148376936841e-06; high = 6.69794258148376936841e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((({low = -6.11837217406149935783e+00; high = -6.11837217406149846965e+00} *$ var_x0) +$ ({low = -4.56934594931908488746e+00; high = -4.56934594931908399928e+00} *$ var_x1)) +$ ({low = -9.32605583252803249650e+00; high = -9.32605583252803072014e+00} *$ var_x2)) +$ ({low = 5.20527068178118668129e-01; high = 5.20527068178118779151e-01} *$ var_x3)) +$ ({low = 9.75444746141236862513e+00; high = 9.75444746141237040149e+00} *$ var_x4)))))) *$ (var_x4 *$ {low = -7.97923302021529678996e+00; high = -7.97923302021529590178e+00})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -6.69794258148376936841e-06; high = 6.69794258148376936841e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((({low = -6.11837217406149935783e+00; high = -6.11837217406149846965e+00} *$ var_x0) +$ ({low = -4.56934594931908488746e+00; high = -4.56934594931908399928e+00} *$ var_x1)) +$ ({low = -9.32605583252803249650e+00; high = -9.32605583252803072014e+00} *$ var_x2)) +$ ({low = 5.20527068178118668129e-01; high = 5.20527068178118779151e-01} *$ var_x3)) +$ ({low = 9.75444746141236862513e+00; high = 9.75444746141237040149e+00} *$ var_x4)))))) *$ ({low = -6.11837217406149935783e+00; high = -6.11837217406149846965e+00} *$ floor_power2_I(var_x0)))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -6.69794258148376936841e-06; high = 6.69794258148376936841e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((({low = -6.11837217406149935783e+00; high = -6.11837217406149846965e+00} *$ var_x0) +$ ({low = -4.56934594931908488746e+00; high = -4.56934594931908399928e+00} *$ var_x1)) +$ ({low = -9.32605583252803249650e+00; high = -9.32605583252803072014e+00} *$ var_x2)) +$ ({low = 5.20527068178118668129e-01; high = 5.20527068178118779151e-01} *$ var_x3)) +$ ({low = 9.75444746141236862513e+00; high = 9.75444746141237040149e+00} *$ var_x4)))))) *$ floor_power2_I((({low = -6.11837217406149935783e+00; high = -6.11837217406149846965e+00} *$ var_x0) +$ {low = -3.92902228731977669355e-07; high = 3.92902228731977669355e-07})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -6.69794258148376936841e-06; high = 6.69794258148376936841e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((({low = -6.11837217406149935783e+00; high = -6.11837217406149846965e+00} *$ var_x0) +$ ({low = -4.56934594931908488746e+00; high = -4.56934594931908399928e+00} *$ var_x1)) +$ ({low = -9.32605583252803249650e+00; high = -9.32605583252803072014e+00} *$ var_x2)) +$ ({low = 5.20527068178118668129e-01; high = 5.20527068178118779151e-01} *$ var_x3)) +$ ({low = 9.75444746141236862513e+00; high = 9.75444746141237040149e+00} *$ var_x4)))))) *$ ({low = -4.56934594931908488746e+00; high = -4.56934594931908399928e+00} *$ floor_power2_I(var_x1)))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -6.69794258148376936841e-06; high = 6.69794258148376936841e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((({low = -6.11837217406149935783e+00; high = -6.11837217406149846965e+00} *$ var_x0) +$ ({low = -4.56934594931908488746e+00; high = -4.56934594931908399928e+00} *$ var_x1)) +$ ({low = -9.32605583252803249650e+00; high = -9.32605583252803072014e+00} *$ var_x2)) +$ ({low = 5.20527068178118668129e-01; high = 5.20527068178118779151e-01} *$ var_x3)) +$ ({low = 9.75444746141236862513e+00; high = 9.75444746141237040149e+00} *$ var_x4)))))) *$ floor_power2_I((({low = -4.56934594931908488746e+00; high = -4.56934594931908399928e+00} *$ var_x1) +$ {low = -1.37938359400631052286e-07; high = 1.37938359400631052286e-07})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -6.69794258148376936841e-06; high = 6.69794258148376936841e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((({low = -6.11837217406149935783e+00; high = -6.11837217406149846965e+00} *$ var_x0) +$ ({low = -4.56934594931908488746e+00; high = -4.56934594931908399928e+00} *$ var_x1)) +$ ({low = -9.32605583252803249650e+00; high = -9.32605583252803072014e+00} *$ var_x2)) +$ ({low = 5.20527068178118668129e-01; high = 5.20527068178118779151e-01} *$ var_x3)) +$ ({low = 9.75444746141236862513e+00; high = 9.75444746141237040149e+00} *$ var_x4)))))) *$ floor_power2_I(((({low = -6.11837217406149935783e+00; high = -6.11837217406149846965e+00} *$ var_x0) +$ ({low = -4.56934594931908488746e+00; high = -4.56934594931908399928e+00} *$ var_x1)) +$ {low = -1.00767774633573406575e-06; high = 1.00767774633573406575e-06})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -6.69794258148376936841e-06; high = 6.69794258148376936841e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((({low = -6.11837217406149935783e+00; high = -6.11837217406149846965e+00} *$ var_x0) +$ ({low = -4.56934594931908488746e+00; high = -4.56934594931908399928e+00} *$ var_x1)) +$ ({low = -9.32605583252803249650e+00; high = -9.32605583252803072014e+00} *$ var_x2)) +$ ({low = 5.20527068178118668129e-01; high = 5.20527068178118779151e-01} *$ var_x3)) +$ ({low = 9.75444746141236862513e+00; high = 9.75444746141237040149e+00} *$ var_x4)))))) *$ ({low = -9.32605583252803249650e+00; high = -9.32605583252803072014e+00} *$ floor_power2_I(var_x2)))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -6.69794258148376936841e-06; high = 6.69794258148376936841e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((({low = -6.11837217406149935783e+00; high = -6.11837217406149846965e+00} *$ var_x0) +$ ({low = -4.56934594931908488746e+00; high = -4.56934594931908399928e+00} *$ var_x1)) +$ ({low = -9.32605583252803249650e+00; high = -9.32605583252803072014e+00} *$ var_x2)) +$ ({low = 5.20527068178118668129e-01; high = 5.20527068178118779151e-01} *$ var_x3)) +$ ({low = 9.75444746141236862513e+00; high = 9.75444746141237040149e+00} *$ var_x4)))))) *$ floor_power2_I((({low = -9.32605583252803249650e+00; high = -9.32605583252803072014e+00} *$ var_x2) +$ {low = -5.83732765202536984012e-07; high = 5.83732765202536984012e-07})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -6.69794258148376936841e-06; high = 6.69794258148376936841e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((({low = -6.11837217406149935783e+00; high = -6.11837217406149846965e+00} *$ var_x0) +$ ({low = -4.56934594931908488746e+00; high = -4.56934594931908399928e+00} *$ var_x1)) +$ ({low = -9.32605583252803249650e+00; high = -9.32605583252803072014e+00} *$ var_x2)) +$ ({low = 5.20527068178118668129e-01; high = 5.20527068178118779151e-01} *$ var_x3)) +$ ({low = 9.75444746141236862513e+00; high = 9.75444746141237040149e+00} *$ var_x4)))))) *$ floor_power2_I((((({low = -6.11837217406149935783e+00; high = -6.11837217406149846965e+00} *$ var_x0) +$ ({low = -4.56934594931908488746e+00; high = -4.56934594931908399928e+00} *$ var_x1)) +$ ({low = -9.32605583252803249650e+00; high = -9.32605583252803072014e+00} *$ var_x2)) +$ {low = -2.54508482794452189679e-06; high = 2.54508482794452189679e-06})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -6.69794258148376936841e-06; high = 6.69794258148376936841e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((({low = -6.11837217406149935783e+00; high = -6.11837217406149846965e+00} *$ var_x0) +$ ({low = -4.56934594931908488746e+00; high = -4.56934594931908399928e+00} *$ var_x1)) +$ ({low = -9.32605583252803249650e+00; high = -9.32605583252803072014e+00} *$ var_x2)) +$ ({low = 5.20527068178118668129e-01; high = 5.20527068178118779151e-01} *$ var_x3)) +$ ({low = 9.75444746141236862513e+00; high = 9.75444746141237040149e+00} *$ var_x4)))))) *$ ({low = 5.20527068178118668129e-01; high = 5.20527068178118779151e-01} *$ floor_power2_I(var_x3)))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -6.69794258148376936841e-06; high = 6.69794258148376936841e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((({low = -6.11837217406149935783e+00; high = -6.11837217406149846965e+00} *$ var_x0) +$ ({low = -4.56934594931908488746e+00; high = -4.56934594931908399928e+00} *$ var_x1)) +$ ({low = -9.32605583252803249650e+00; high = -9.32605583252803072014e+00} *$ var_x2)) +$ ({low = 5.20527068178118668129e-01; high = 5.20527068178118779151e-01} *$ var_x3)) +$ ({low = 9.75444746141236862513e+00; high = 9.75444746141237040149e+00} *$ var_x4)))))) *$ floor_power2_I((({low = 5.20527068178118668129e-01; high = 5.20527068178118779151e-01} *$ var_x3) +$ {low = -1.88907718468622403458e-08; high = 1.88907718468622403458e-08})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -6.69794258148376936841e-06; high = 6.69794258148376936841e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((({low = -6.11837217406149935783e+00; high = -6.11837217406149846965e+00} *$ var_x0) +$ ({low = -4.56934594931908488746e+00; high = -4.56934594931908399928e+00} *$ var_x1)) +$ ({low = -9.32605583252803249650e+00; high = -9.32605583252803072014e+00} *$ var_x2)) +$ ({low = 5.20527068178118668129e-01; high = 5.20527068178118779151e-01} *$ var_x3)) +$ ({low = 9.75444746141236862513e+00; high = 9.75444746141237040149e+00} *$ var_x4)))))) *$ floor_power2_I(((((({low = -6.11837217406149935783e+00; high = -6.11837217406149846965e+00} *$ var_x0) +$ ({low = -4.56934594931908488746e+00; high = -4.56934594931908399928e+00} *$ var_x1)) +$ ({low = -9.32605583252803249650e+00; high = -9.32605583252803072014e+00} *$ var_x2)) +$ ({low = 5.20527068178118668129e-01; high = 5.20527068178118779151e-01} *$ var_x3)) +$ {low = -3.54745223858532950258e-06; high = 3.54745223858532950258e-06})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -6.69794258148376936841e-06; high = 6.69794258148376936841e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((({low = -6.11837217406149935783e+00; high = -6.11837217406149846965e+00} *$ var_x0) +$ ({low = -4.56934594931908488746e+00; high = -4.56934594931908399928e+00} *$ var_x1)) +$ ({low = -9.32605583252803249650e+00; high = -9.32605583252803072014e+00} *$ var_x2)) +$ ({low = 5.20527068178118668129e-01; high = 5.20527068178118779151e-01} *$ var_x3)) +$ ({low = 9.75444746141236862513e+00; high = 9.75444746141237040149e+00} *$ var_x4)))))) *$ ({low = 9.75444746141236862513e+00; high = 9.75444746141237040149e+00} *$ floor_power2_I(var_x4)))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -6.69794258148376936841e-06; high = 6.69794258148376936841e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((({low = -6.11837217406149935783e+00; high = -6.11837217406149846965e+00} *$ var_x0) +$ ({low = -4.56934594931908488746e+00; high = -4.56934594931908399928e+00} *$ var_x1)) +$ ({low = -9.32605583252803249650e+00; high = -9.32605583252803072014e+00} *$ var_x2)) +$ ({low = 5.20527068178118668129e-01; high = 5.20527068178118779151e-01} *$ var_x3)) +$ ({low = 9.75444746141236862513e+00; high = 9.75444746141237040149e+00} *$ var_x4)))))) *$ floor_power2_I((({low = 9.75444746141236862513e+00; high = 9.75444746141237040149e+00} *$ var_x4) +$ {low = -7.66304551882812854130e-07; high = 7.66304551882812854130e-07})))) +$ abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -6.69794258148376936841e-06; high = 6.69794258148376936841e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((({low = -6.11837217406149935783e+00; high = -6.11837217406149846965e+00} *$ var_x0) +$ ({low = -4.56934594931908488746e+00; high = -4.56934594931908399928e+00} *$ var_x1)) +$ ({low = -9.32605583252803249650e+00; high = -9.32605583252803072014e+00} *$ var_x2)) +$ ({low = 5.20527068178118668129e-01; high = 5.20527068178118779151e-01} *$ var_x3)) +$ ({low = 9.75444746141236862513e+00; high = 9.75444746141237040149e+00} *$ var_x4)))))) *$ floor_power2_I((((((({low = -6.11837217406149935783e+00; high = -6.11837217406149846965e+00} *$ var_x0) +$ ({low = -4.56934594931908488746e+00; high = -4.56934594931908399928e+00} *$ var_x1)) +$ ({low = -9.32605583252803249650e+00; high = -9.32605583252803072014e+00} *$ var_x2)) +$ ({low = 5.20527068178118668129e-01; high = 5.20527068178118779151e-01} *$ var_x3)) +$ ({low = 9.75444746141236862513e+00; high = 9.75444746141237040149e+00} *$ var_x4)) +$ {low = -5.74426826507751936841e-06; high = 5.74426826507751936841e-06}))))))))))))))))))

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
