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
(abs_I((((((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -3.04115674922318504397e-06; high = 3.04115674922318504397e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((({low = 5.05954959691227745822e+00; high = 5.05954959691227834639e+00} *$ var_x0) +$ ({low = 1.25136064100398236576e+00; high = 1.25136064100398258780e+00} *$ var_x1)) +$ ({low = 1.31204144999839811270e+00; high = 1.31204144999839833474e+00} *$ var_x2)) +$ ({low = -5.33848449523916279702e+00; high = -5.33848449523916190884e+00} *$ var_x3)) +$ ({low = 1.31204338033906231509e+00; high = 1.31204338033906253713e+00} *$ var_x4)))))) *$ (var_x0 *$ {low = -3.54988977894195212315e+00; high = -3.54988977894195167906e+00})) +$ (({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -3.04115674922318504397e-06; high = 3.04115674922318504397e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((({low = 5.05954959691227745822e+00; high = 5.05954959691227834639e+00} *$ var_x0) +$ ({low = 1.25136064100398236576e+00; high = 1.25136064100398258780e+00} *$ var_x1)) +$ ({low = 1.31204144999839811270e+00; high = 1.31204144999839833474e+00} *$ var_x2)) +$ ({low = -5.33848449523916279702e+00; high = -5.33848449523916190884e+00} *$ var_x3)) +$ ({low = 1.31204338033906231509e+00; high = 1.31204338033906253713e+00} *$ var_x4)))))) *$ (var_x1 *$ {low = -2.31977730415001609510e-01; high = -2.31977730415001581754e-01}))) +$ (({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -3.04115674922318504397e-06; high = 3.04115674922318504397e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((({low = 5.05954959691227745822e+00; high = 5.05954959691227834639e+00} *$ var_x0) +$ ({low = 1.25136064100398236576e+00; high = 1.25136064100398258780e+00} *$ var_x1)) +$ ({low = 1.31204144999839811270e+00; high = 1.31204144999839833474e+00} *$ var_x2)) +$ ({low = -5.33848449523916279702e+00; high = -5.33848449523916190884e+00} *$ var_x3)) +$ ({low = 1.31204338033906231509e+00; high = 1.31204338033906253713e+00} *$ var_x4)))))) *$ (var_x2 *$ {low = 8.07576327933132720460e-01; high = 8.07576327933132831483e-01}))) +$ (({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -3.04115674922318504397e-06; high = 3.04115674922318504397e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((({low = 5.05954959691227745822e+00; high = 5.05954959691227834639e+00} *$ var_x0) +$ ({low = 1.25136064100398236576e+00; high = 1.25136064100398258780e+00} *$ var_x1)) +$ ({low = 1.31204144999839811270e+00; high = 1.31204144999839833474e+00} *$ var_x2)) +$ ({low = -5.33848449523916279702e+00; high = -5.33848449523916190884e+00} *$ var_x3)) +$ ({low = 1.31204338033906231509e+00; high = 1.31204338033906253713e+00} *$ var_x4)))))) *$ (var_x3 *$ {low = -3.48927839253299243438e+00; high = -3.48927839253299199029e+00}))) +$ (({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -3.04115674922318504397e-06; high = 3.04115674922318504397e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((({low = 5.05954959691227745822e+00; high = 5.05954959691227834639e+00} *$ var_x0) +$ ({low = 1.25136064100398236576e+00; high = 1.25136064100398258780e+00} *$ var_x1)) +$ ({low = 1.31204144999839811270e+00; high = 1.31204144999839833474e+00} *$ var_x2)) +$ ({low = -5.33848449523916279702e+00; high = -5.33848449523916190884e+00} *$ var_x3)) +$ ({low = 1.31204338033906231509e+00; high = 1.31204338033906253713e+00} *$ var_x4)))))) *$ (var_x4 *$ {low = -8.06681395200000039836e-01; high = -8.06681395199999928813e-01})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -3.04115674922318504397e-06; high = 3.04115674922318504397e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((({low = 5.05954959691227745822e+00; high = 5.05954959691227834639e+00} *$ var_x0) +$ ({low = 1.25136064100398236576e+00; high = 1.25136064100398258780e+00} *$ var_x1)) +$ ({low = 1.31204144999839811270e+00; high = 1.31204144999839833474e+00} *$ var_x2)) +$ ({low = -5.33848449523916279702e+00; high = -5.33848449523916190884e+00} *$ var_x3)) +$ ({low = 1.31204338033906231509e+00; high = 1.31204338033906253713e+00} *$ var_x4)))))) *$ ({low = 5.05954959691227745822e+00; high = 5.05954959691227834639e+00} *$ floor_power2_I(var_x0)))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -3.04115674922318504397e-06; high = 3.04115674922318504397e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((({low = 5.05954959691227745822e+00; high = 5.05954959691227834639e+00} *$ var_x0) +$ ({low = 1.25136064100398236576e+00; high = 1.25136064100398258780e+00} *$ var_x1)) +$ ({low = 1.31204144999839811270e+00; high = 1.31204144999839833474e+00} *$ var_x2)) +$ ({low = -5.33848449523916279702e+00; high = -5.33848449523916190884e+00} *$ var_x3)) +$ ({low = 1.31204338033906231509e+00; high = 1.31204338033906253713e+00} *$ var_x4)))))) *$ floor_power2_I((({low = 5.05954959691227745822e+00; high = 5.05954959691227834639e+00} *$ var_x0) +$ {low = -3.62376253795209625014e-07; high = 3.62376253795209625014e-07})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -3.04115674922318504397e-06; high = 3.04115674922318504397e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((({low = 5.05954959691227745822e+00; high = 5.05954959691227834639e+00} *$ var_x0) +$ ({low = 1.25136064100398236576e+00; high = 1.25136064100398258780e+00} *$ var_x1)) +$ ({low = 1.31204144999839811270e+00; high = 1.31204144999839833474e+00} *$ var_x2)) +$ ({low = -5.33848449523916279702e+00; high = -5.33848449523916190884e+00} *$ var_x3)) +$ ({low = 1.31204338033906231509e+00; high = 1.31204338033906253713e+00} *$ var_x4)))))) *$ ({low = 1.25136064100398236576e+00; high = 1.25136064100398258780e+00} *$ floor_power2_I(var_x1)))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -3.04115674922318504397e-06; high = 3.04115674922318504397e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((({low = 5.05954959691227745822e+00; high = 5.05954959691227834639e+00} *$ var_x0) +$ ({low = 1.25136064100398236576e+00; high = 1.25136064100398258780e+00} *$ var_x1)) +$ ({low = 1.31204144999839811270e+00; high = 1.31204144999839833474e+00} *$ var_x2)) +$ ({low = -5.33848449523916279702e+00; high = -5.33848449523916190884e+00} *$ var_x3)) +$ ({low = 1.31204338033906231509e+00; high = 1.31204338033906253713e+00} *$ var_x4)))))) *$ floor_power2_I((({low = 1.25136064100398236576e+00; high = 1.25136064100398258780e+00} *$ var_x1) +$ {low = -5.11204038757364816900e-08; high = 5.11204038757364816900e-08})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -3.04115674922318504397e-06; high = 3.04115674922318504397e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((({low = 5.05954959691227745822e+00; high = 5.05954959691227834639e+00} *$ var_x0) +$ ({low = 1.25136064100398236576e+00; high = 1.25136064100398258780e+00} *$ var_x1)) +$ ({low = 1.31204144999839811270e+00; high = 1.31204144999839833474e+00} *$ var_x2)) +$ ({low = -5.33848449523916279702e+00; high = -5.33848449523916190884e+00} *$ var_x3)) +$ ({low = 1.31204338033906231509e+00; high = 1.31204338033906253713e+00} *$ var_x4)))))) *$ floor_power2_I(((({low = 5.05954959691227745822e+00; high = 5.05954959691227834639e+00} *$ var_x0) +$ ({low = 1.25136064100398236576e+00; high = 1.25136064100398258780e+00} *$ var_x1)) +$ {low = -7.11519881547899238321e-07; high = 7.11519881547899238321e-07})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -3.04115674922318504397e-06; high = 3.04115674922318504397e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((({low = 5.05954959691227745822e+00; high = 5.05954959691227834639e+00} *$ var_x0) +$ ({low = 1.25136064100398236576e+00; high = 1.25136064100398258780e+00} *$ var_x1)) +$ ({low = 1.31204144999839811270e+00; high = 1.31204144999839833474e+00} *$ var_x2)) +$ ({low = -5.33848449523916279702e+00; high = -5.33848449523916190884e+00} *$ var_x3)) +$ ({low = 1.31204338033906231509e+00; high = 1.31204338033906253713e+00} *$ var_x4)))))) *$ ({low = 1.31204144999839811270e+00; high = 1.31204144999839833474e+00} *$ floor_power2_I(var_x2)))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -3.04115674922318504397e-06; high = 3.04115674922318504397e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((({low = 5.05954959691227745822e+00; high = 5.05954959691227834639e+00} *$ var_x0) +$ ({low = 1.25136064100398236576e+00; high = 1.25136064100398258780e+00} *$ var_x1)) +$ ({low = 1.31204144999839811270e+00; high = 1.31204144999839833474e+00} *$ var_x2)) +$ ({low = -5.33848449523916279702e+00; high = -5.33848449523916190884e+00} *$ var_x3)) +$ ({low = 1.31204338033906231509e+00; high = 1.31204338033906253713e+00} *$ var_x4)))))) *$ floor_power2_I((({low = 1.31204144999839811270e+00; high = 1.31204144999839833474e+00} *$ var_x2) +$ {low = -8.72371838688839796174e-08; high = 8.72371838688839796174e-08})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -3.04115674922318504397e-06; high = 3.04115674922318504397e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((({low = 5.05954959691227745822e+00; high = 5.05954959691227834639e+00} *$ var_x0) +$ ({low = 1.25136064100398236576e+00; high = 1.25136064100398258780e+00} *$ var_x1)) +$ ({low = 1.31204144999839811270e+00; high = 1.31204144999839833474e+00} *$ var_x2)) +$ ({low = -5.33848449523916279702e+00; high = -5.33848449523916190884e+00} *$ var_x3)) +$ ({low = 1.31204338033906231509e+00; high = 1.31204338033906253713e+00} *$ var_x4)))))) *$ floor_power2_I((((({low = 5.05954959691227745822e+00; high = 5.05954959691227834639e+00} *$ var_x0) +$ ({low = 1.25136064100398236576e+00; high = 1.25136064100398258780e+00} *$ var_x1)) +$ ({low = 1.31204144999839811270e+00; high = 1.31204144999839833474e+00} *$ var_x2)) +$ {low = -1.09678028929373662087e-06; high = 1.09678028929373662087e-06})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -3.04115674922318504397e-06; high = 3.04115674922318504397e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((({low = 5.05954959691227745822e+00; high = 5.05954959691227834639e+00} *$ var_x0) +$ ({low = 1.25136064100398236576e+00; high = 1.25136064100398258780e+00} *$ var_x1)) +$ ({low = 1.31204144999839811270e+00; high = 1.31204144999839833474e+00} *$ var_x2)) +$ ({low = -5.33848449523916279702e+00; high = -5.33848449523916190884e+00} *$ var_x3)) +$ ({low = 1.31204338033906231509e+00; high = 1.31204338033906253713e+00} *$ var_x4)))))) *$ ({low = -5.33848449523916279702e+00; high = -5.33848449523916190884e+00} *$ floor_power2_I(var_x3)))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -3.04115674922318504397e-06; high = 3.04115674922318504397e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((({low = 5.05954959691227745822e+00; high = 5.05954959691227834639e+00} *$ var_x0) +$ ({low = 1.25136064100398236576e+00; high = 1.25136064100398258780e+00} *$ var_x1)) +$ ({low = 1.31204144999839811270e+00; high = 1.31204144999839833474e+00} *$ var_x2)) +$ ({low = -5.33848449523916279702e+00; high = -5.33848449523916190884e+00} *$ var_x3)) +$ ({low = 1.31204338033906231509e+00; high = 1.31204338033906253713e+00} *$ var_x4)))))) *$ floor_power2_I((({low = -5.33848449523916279702e+00; high = -5.33848449523916190884e+00} *$ var_x3) +$ {low = -3.67076441296408998137e-07; high = 3.67076441296408998137e-07})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -3.04115674922318504397e-06; high = 3.04115674922318504397e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((({low = 5.05954959691227745822e+00; high = 5.05954959691227834639e+00} *$ var_x0) +$ ({low = 1.25136064100398236576e+00; high = 1.25136064100398258780e+00} *$ var_x1)) +$ ({low = 1.31204144999839811270e+00; high = 1.31204144999839833474e+00} *$ var_x2)) +$ ({low = -5.33848449523916279702e+00; high = -5.33848449523916190884e+00} *$ var_x3)) +$ ({low = 1.31204338033906231509e+00; high = 1.31204338033906253713e+00} *$ var_x4)))))) *$ floor_power2_I(((((({low = 5.05954959691227745822e+00; high = 5.05954959691227834639e+00} *$ var_x0) +$ ({low = 1.25136064100398236576e+00; high = 1.25136064100398258780e+00} *$ var_x1)) +$ ({low = 1.31204144999839811270e+00; high = 1.31204144999839833474e+00} *$ var_x2)) +$ ({low = -5.33848449523916279702e+00; high = -5.33848449523916190884e+00} *$ var_x3)) +$ {low = -1.94069388879327151898e-06; high = 1.94069388879327151898e-06})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -3.04115674922318504397e-06; high = 3.04115674922318504397e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((({low = 5.05954959691227745822e+00; high = 5.05954959691227834639e+00} *$ var_x0) +$ ({low = 1.25136064100398236576e+00; high = 1.25136064100398258780e+00} *$ var_x1)) +$ ({low = 1.31204144999839811270e+00; high = 1.31204144999839833474e+00} *$ var_x2)) +$ ({low = -5.33848449523916279702e+00; high = -5.33848449523916190884e+00} *$ var_x3)) +$ ({low = 1.31204338033906231509e+00; high = 1.31204338033906253713e+00} *$ var_x4)))))) *$ ({low = 1.31204338033906231509e+00; high = 1.31204338033906253713e+00} *$ floor_power2_I(var_x4)))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -3.04115674922318504397e-06; high = 3.04115674922318504397e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((({low = 5.05954959691227745822e+00; high = 5.05954959691227834639e+00} *$ var_x0) +$ ({low = 1.25136064100398236576e+00; high = 1.25136064100398258780e+00} *$ var_x1)) +$ ({low = 1.31204144999839811270e+00; high = 1.31204144999839833474e+00} *$ var_x2)) +$ ({low = -5.33848449523916279702e+00; high = -5.33848449523916190884e+00} *$ var_x3)) +$ ({low = 1.31204338033906231509e+00; high = 1.31204338033906253713e+00} *$ var_x4)))))) *$ floor_power2_I((({low = 1.31204338033906231509e+00; high = 1.31204338033906253713e+00} *$ var_x4) +$ {low = -8.71838992482728073470e-08; high = 8.71838992482728073470e-08})))) +$ abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -3.04115674922318504397e-06; high = 3.04115674922318504397e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((({low = 5.05954959691227745822e+00; high = 5.05954959691227834639e+00} *$ var_x0) +$ ({low = 1.25136064100398236576e+00; high = 1.25136064100398258780e+00} *$ var_x1)) +$ ({low = 1.31204144999839811270e+00; high = 1.31204144999839833474e+00} *$ var_x2)) +$ ({low = -5.33848449523916279702e+00; high = -5.33848449523916190884e+00} *$ var_x3)) +$ ({low = 1.31204338033906231509e+00; high = 1.31204338033906253713e+00} *$ var_x4)))))) *$ floor_power2_I((((((({low = 5.05954959691227745822e+00; high = 5.05954959691227834639e+00} *$ var_x0) +$ ({low = 1.25136064100398236576e+00; high = 1.25136064100398258780e+00} *$ var_x1)) +$ ({low = 1.31204144999839811270e+00; high = 1.31204144999839833474e+00} *$ var_x2)) +$ ({low = -5.33848449523916279702e+00; high = -5.33848449523916190884e+00} *$ var_x3)) +$ ({low = 1.31204338033906231509e+00; high = 1.31204338033906253713e+00} *$ var_x4)) +$ {low = -2.56431959102006004397e-06; high = 2.56431959102006004397e-06}))))))))))))))))))

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
