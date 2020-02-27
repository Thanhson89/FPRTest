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
(abs_I(((((((((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.22686045993935027111e-05; high = 1.22686045993935027111e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1)) +$ ({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ var_x2)) +$ ({low = -4.66216377449373720054e+00; high = -4.66216377449373631237e+00} *$ var_x3)) +$ ({low = -6.71044739796881550831e+00; high = -6.71044739796881462013e+00} *$ var_x4)) +$ ({low = -7.03565110919679082002e+00; high = -7.03565110919678993184e+00} *$ var_x5)) +$ ({low = -8.27697952227765121336e+00; high = -8.27697952227764943700e+00} *$ var_x6)) +$ ({low = -6.80645543029842858829e+00; high = -6.80645543029842770011e+00} *$ var_x7)))))) *$ (var_x0 *$ {low = 6.72302603829247891198e-01; high = 6.72302603829248002221e-01})) +$ (({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.22686045993935027111e-05; high = 1.22686045993935027111e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1)) +$ ({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ var_x2)) +$ ({low = -4.66216377449373720054e+00; high = -4.66216377449373631237e+00} *$ var_x3)) +$ ({low = -6.71044739796881550831e+00; high = -6.71044739796881462013e+00} *$ var_x4)) +$ ({low = -7.03565110919679082002e+00; high = -7.03565110919678993184e+00} *$ var_x5)) +$ ({low = -8.27697952227765121336e+00; high = -8.27697952227764943700e+00} *$ var_x6)) +$ ({low = -6.80645543029842858829e+00; high = -6.80645543029842770011e+00} *$ var_x7)))))) *$ (var_x1 *$ {low = -1.11623126229975055956e+00; high = -1.11623126229975033752e+00}))) +$ (({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.22686045993935027111e-05; high = 1.22686045993935027111e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1)) +$ ({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ var_x2)) +$ ({low = -4.66216377449373720054e+00; high = -4.66216377449373631237e+00} *$ var_x3)) +$ ({low = -6.71044739796881550831e+00; high = -6.71044739796881462013e+00} *$ var_x4)) +$ ({low = -7.03565110919679082002e+00; high = -7.03565110919678993184e+00} *$ var_x5)) +$ ({low = -8.27697952227765121336e+00; high = -8.27697952227764943700e+00} *$ var_x6)) +$ ({low = -6.80645543029842858829e+00; high = -6.80645543029842770011e+00} *$ var_x7)))))) *$ (var_x2 *$ {low = -3.62114731999232053461e-01; high = -3.62114731999231997950e-01}))) +$ (({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.22686045993935027111e-05; high = 1.22686045993935027111e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1)) +$ ({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ var_x2)) +$ ({low = -4.66216377449373720054e+00; high = -4.66216377449373631237e+00} *$ var_x3)) +$ ({low = -6.71044739796881550831e+00; high = -6.71044739796881462013e+00} *$ var_x4)) +$ ({low = -7.03565110919679082002e+00; high = -7.03565110919678993184e+00} *$ var_x5)) +$ ({low = -8.27697952227765121336e+00; high = -8.27697952227764943700e+00} *$ var_x6)) +$ ({low = -6.80645543029842858829e+00; high = -6.80645543029842770011e+00} *$ var_x7)))))) *$ (var_x3 *$ {low = -6.72056716296192013793e-01; high = -6.72056716296191902771e-01}))) +$ (({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.22686045993935027111e-05; high = 1.22686045993935027111e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1)) +$ ({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ var_x2)) +$ ({low = -4.66216377449373720054e+00; high = -4.66216377449373631237e+00} *$ var_x3)) +$ ({low = -6.71044739796881550831e+00; high = -6.71044739796881462013e+00} *$ var_x4)) +$ ({low = -7.03565110919679082002e+00; high = -7.03565110919678993184e+00} *$ var_x5)) +$ ({low = -8.27697952227765121336e+00; high = -8.27697952227764943700e+00} *$ var_x6)) +$ ({low = -6.80645543029842858829e+00; high = -6.80645543029842770011e+00} *$ var_x7)))))) *$ (var_x4 *$ {low = -1.45236077890764803122e+00; high = -1.45236077890764780918e+00}))) +$ (({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.22686045993935027111e-05; high = 1.22686045993935027111e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1)) +$ ({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ var_x2)) +$ ({low = -4.66216377449373720054e+00; high = -4.66216377449373631237e+00} *$ var_x3)) +$ ({low = -6.71044739796881550831e+00; high = -6.71044739796881462013e+00} *$ var_x4)) +$ ({low = -7.03565110919679082002e+00; high = -7.03565110919678993184e+00} *$ var_x5)) +$ ({low = -8.27697952227765121336e+00; high = -8.27697952227764943700e+00} *$ var_x6)) +$ ({low = -6.80645543029842858829e+00; high = -6.80645543029842770011e+00} *$ var_x7)))))) *$ (var_x5 *$ {low = 1.64036586766335990006e+00; high = 1.64036586766336012211e+00}))) +$ (({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.22686045993935027111e-05; high = 1.22686045993935027111e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1)) +$ ({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ var_x2)) +$ ({low = -4.66216377449373720054e+00; high = -4.66216377449373631237e+00} *$ var_x3)) +$ ({low = -6.71044739796881550831e+00; high = -6.71044739796881462013e+00} *$ var_x4)) +$ ({low = -7.03565110919679082002e+00; high = -7.03565110919678993184e+00} *$ var_x5)) +$ ({low = -8.27697952227765121336e+00; high = -8.27697952227764943700e+00} *$ var_x6)) +$ ({low = -6.80645543029842858829e+00; high = -6.80645543029842770011e+00} *$ var_x7)))))) *$ (var_x6 *$ {low = -1.27282894602240004289e+00; high = -1.27282894602239982085e+00}))) +$ (({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.22686045993935027111e-05; high = 1.22686045993935027111e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1)) +$ ({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ var_x2)) +$ ({low = -4.66216377449373720054e+00; high = -4.66216377449373631237e+00} *$ var_x3)) +$ ({low = -6.71044739796881550831e+00; high = -6.71044739796881462013e+00} *$ var_x4)) +$ ({low = -7.03565110919679082002e+00; high = -7.03565110919678993184e+00} *$ var_x5)) +$ ({low = -8.27697952227765121336e+00; high = -8.27697952227764943700e+00} *$ var_x6)) +$ ({low = -6.80645543029842858829e+00; high = -6.80645543029842770011e+00} *$ var_x7)))))) *$ (var_x7 *$ {low = 3.05151032898355190071e+00; high = 3.05151032898355234479e+00})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.22686045993935027111e-05; high = 1.22686045993935027111e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1)) +$ ({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ var_x2)) +$ ({low = -4.66216377449373720054e+00; high = -4.66216377449373631237e+00} *$ var_x3)) +$ ({low = -6.71044739796881550831e+00; high = -6.71044739796881462013e+00} *$ var_x4)) +$ ({low = -7.03565110919679082002e+00; high = -7.03565110919678993184e+00} *$ var_x5)) +$ ({low = -8.27697952227765121336e+00; high = -8.27697952227764943700e+00} *$ var_x6)) +$ ({low = -6.80645543029842858829e+00; high = -6.80645543029842770011e+00} *$ var_x7)))))) *$ ({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ floor_power2_I(var_x0)))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.22686045993935027111e-05; high = 1.22686045993935027111e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1)) +$ ({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ var_x2)) +$ ({low = -4.66216377449373720054e+00; high = -4.66216377449373631237e+00} *$ var_x3)) +$ ({low = -6.71044739796881550831e+00; high = -6.71044739796881462013e+00} *$ var_x4)) +$ ({low = -7.03565110919679082002e+00; high = -7.03565110919678993184e+00} *$ var_x5)) +$ ({low = -8.27697952227765121336e+00; high = -8.27697952227764943700e+00} *$ var_x6)) +$ ({low = -6.80645543029842858829e+00; high = -6.80645543029842770011e+00} *$ var_x7)))))) *$ floor_power2_I((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ {low = -1.50247717109082877178e-07; high = 1.50247717109082877178e-07})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.22686045993935027111e-05; high = 1.22686045993935027111e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1)) +$ ({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ var_x2)) +$ ({low = -4.66216377449373720054e+00; high = -4.66216377449373631237e+00} *$ var_x3)) +$ ({low = -6.71044739796881550831e+00; high = -6.71044739796881462013e+00} *$ var_x4)) +$ ({low = -7.03565110919679082002e+00; high = -7.03565110919678993184e+00} *$ var_x5)) +$ ({low = -8.27697952227765121336e+00; high = -8.27697952227764943700e+00} *$ var_x6)) +$ ({low = -6.80645543029842858829e+00; high = -6.80645543029842770011e+00} *$ var_x7)))))) *$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ floor_power2_I(var_x1)))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.22686045993935027111e-05; high = 1.22686045993935027111e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1)) +$ ({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ var_x2)) +$ ({low = -4.66216377449373720054e+00; high = -4.66216377449373631237e+00} *$ var_x3)) +$ ({low = -6.71044739796881550831e+00; high = -6.71044739796881462013e+00} *$ var_x4)) +$ ({low = -7.03565110919679082002e+00; high = -7.03565110919678993184e+00} *$ var_x5)) +$ ({low = -8.27697952227765121336e+00; high = -8.27697952227764943700e+00} *$ var_x6)) +$ ({low = -6.80645543029842858829e+00; high = -6.80645543029842770011e+00} *$ var_x7)))))) *$ floor_power2_I((({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1) +$ {low = -1.47097320967601687902e-07; high = 1.47097320967601687902e-07})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.22686045993935027111e-05; high = 1.22686045993935027111e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1)) +$ ({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ var_x2)) +$ ({low = -4.66216377449373720054e+00; high = -4.66216377449373631237e+00} *$ var_x3)) +$ ({low = -6.71044739796881550831e+00; high = -6.71044739796881462013e+00} *$ var_x4)) +$ ({low = -7.03565110919679082002e+00; high = -7.03565110919678993184e+00} *$ var_x5)) +$ ({low = -8.27697952227765121336e+00; high = -8.27697952227764943700e+00} *$ var_x6)) +$ ({low = -6.80645543029842858829e+00; high = -6.80645543029842770011e+00} *$ var_x7)))))) *$ floor_power2_I(((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1)) +$ {low = -5.35763617178247250368e-07; high = 5.35763617178247250368e-07})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.22686045993935027111e-05; high = 1.22686045993935027111e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1)) +$ ({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ var_x2)) +$ ({low = -4.66216377449373720054e+00; high = -4.66216377449373631237e+00} *$ var_x3)) +$ ({low = -6.71044739796881550831e+00; high = -6.71044739796881462013e+00} *$ var_x4)) +$ ({low = -7.03565110919679082002e+00; high = -7.03565110919678993184e+00} *$ var_x5)) +$ ({low = -8.27697952227765121336e+00; high = -8.27697952227764943700e+00} *$ var_x6)) +$ ({low = -6.80645543029842858829e+00; high = -6.80645543029842770011e+00} *$ var_x7)))))) *$ ({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ floor_power2_I(var_x2)))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.22686045993935027111e-05; high = 1.22686045993935027111e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1)) +$ ({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ var_x2)) +$ ({low = -4.66216377449373720054e+00; high = -4.66216377449373631237e+00} *$ var_x3)) +$ ({low = -6.71044739796881550831e+00; high = -6.71044739796881462013e+00} *$ var_x4)) +$ ({low = -7.03565110919679082002e+00; high = -7.03565110919678993184e+00} *$ var_x5)) +$ ({low = -8.27697952227765121336e+00; high = -8.27697952227764943700e+00} *$ var_x6)) +$ ({low = -6.80645543029842858829e+00; high = -6.80645543029842770011e+00} *$ var_x7)))))) *$ floor_power2_I((({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ var_x2) +$ {low = -2.38981005919687707126e-07; high = 2.38981005919687707126e-07})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.22686045993935027111e-05; high = 1.22686045993935027111e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1)) +$ ({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ var_x2)) +$ ({low = -4.66216377449373720054e+00; high = -4.66216377449373631237e+00} *$ var_x3)) +$ ({low = -6.71044739796881550831e+00; high = -6.71044739796881462013e+00} *$ var_x4)) +$ ({low = -7.03565110919679082002e+00; high = -7.03565110919678993184e+00} *$ var_x5)) +$ ({low = -8.27697952227765121336e+00; high = -8.27697952227764943700e+00} *$ var_x6)) +$ ({low = -6.80645543029842858829e+00; high = -6.80645543029842770011e+00} *$ var_x7)))))) *$ floor_power2_I((((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1)) +$ ({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ var_x2)) +$ {low = -1.25158178130106038101e-06; high = 1.25158178130106038101e-06})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.22686045993935027111e-05; high = 1.22686045993935027111e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1)) +$ ({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ var_x2)) +$ ({low = -4.66216377449373720054e+00; high = -4.66216377449373631237e+00} *$ var_x3)) +$ ({low = -6.71044739796881550831e+00; high = -6.71044739796881462013e+00} *$ var_x4)) +$ ({low = -7.03565110919679082002e+00; high = -7.03565110919678993184e+00} *$ var_x5)) +$ ({low = -8.27697952227765121336e+00; high = -8.27697952227764943700e+00} *$ var_x6)) +$ ({low = -6.80645543029842858829e+00; high = -6.80645543029842770011e+00} *$ var_x7)))))) *$ ({low = -4.66216377449373720054e+00; high = -4.66216377449373631237e+00} *$ floor_power2_I(var_x3)))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.22686045993935027111e-05; high = 1.22686045993935027111e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1)) +$ ({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ var_x2)) +$ ({low = -4.66216377449373720054e+00; high = -4.66216377449373631237e+00} *$ var_x3)) +$ ({low = -6.71044739796881550831e+00; high = -6.71044739796881462013e+00} *$ var_x4)) +$ ({low = -7.03565110919679082002e+00; high = -7.03565110919678993184e+00} *$ var_x5)) +$ ({low = -8.27697952227765121336e+00; high = -8.27697952227764943700e+00} *$ var_x6)) +$ ({low = -6.80645543029842858829e+00; high = -6.80645543029842770011e+00} *$ var_x7)))))) *$ floor_power2_I((({low = -4.66216377449373720054e+00; high = -4.66216377449373631237e+00} *$ var_x3) +$ {low = -1.79001010869259342386e-07; high = 1.79001010869259342386e-07})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.22686045993935027111e-05; high = 1.22686045993935027111e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1)) +$ ({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ var_x2)) +$ ({low = -4.66216377449373720054e+00; high = -4.66216377449373631237e+00} *$ var_x3)) +$ ({low = -6.71044739796881550831e+00; high = -6.71044739796881462013e+00} *$ var_x4)) +$ ({low = -7.03565110919679082002e+00; high = -7.03565110919678993184e+00} *$ var_x5)) +$ ({low = -8.27697952227765121336e+00; high = -8.27697952227764943700e+00} *$ var_x6)) +$ ({low = -6.80645543029842858829e+00; high = -6.80645543029842770011e+00} *$ var_x7)))))) *$ floor_power2_I(((((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1)) +$ ({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ var_x2)) +$ ({low = -4.66216377449373720054e+00; high = -4.66216377449373631237e+00} *$ var_x3)) +$ {low = -2.14583852947500777926e-06; high = 2.14583852947500777926e-06})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.22686045993935027111e-05; high = 1.22686045993935027111e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1)) +$ ({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ var_x2)) +$ ({low = -4.66216377449373720054e+00; high = -4.66216377449373631237e+00} *$ var_x3)) +$ ({low = -6.71044739796881550831e+00; high = -6.71044739796881462013e+00} *$ var_x4)) +$ ({low = -7.03565110919679082002e+00; high = -7.03565110919678993184e+00} *$ var_x5)) +$ ({low = -8.27697952227765121336e+00; high = -8.27697952227764943700e+00} *$ var_x6)) +$ ({low = -6.80645543029842858829e+00; high = -6.80645543029842770011e+00} *$ var_x7)))))) *$ ({low = -6.71044739796881550831e+00; high = -6.71044739796881462013e+00} *$ floor_power2_I(var_x4)))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.22686045993935027111e-05; high = 1.22686045993935027111e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1)) +$ ({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ var_x2)) +$ ({low = -4.66216377449373720054e+00; high = -4.66216377449373631237e+00} *$ var_x3)) +$ ({low = -6.71044739796881550831e+00; high = -6.71044739796881462013e+00} *$ var_x4)) +$ ({low = -7.03565110919679082002e+00; high = -7.03565110919678993184e+00} *$ var_x5)) +$ ({low = -8.27697952227765121336e+00; high = -8.27697952227764943700e+00} *$ var_x6)) +$ ({low = -6.80645543029842858829e+00; high = -6.80645543029842770011e+00} *$ var_x7)))))) *$ floor_power2_I((({low = -6.71044739796881550831e+00; high = -6.71044739796881462013e+00} *$ var_x4) +$ {low = -2.86554367612348804940e-07; high = 2.86554367612348804940e-07})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.22686045993935027111e-05; high = 1.22686045993935027111e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1)) +$ ({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ var_x2)) +$ ({low = -4.66216377449373720054e+00; high = -4.66216377449373631237e+00} *$ var_x3)) +$ ({low = -6.71044739796881550831e+00; high = -6.71044739796881462013e+00} *$ var_x4)) +$ ({low = -7.03565110919679082002e+00; high = -7.03565110919678993184e+00} *$ var_x5)) +$ ({low = -8.27697952227765121336e+00; high = -8.27697952227764943700e+00} *$ var_x6)) +$ ({low = -6.80645543029842858829e+00; high = -6.80645543029842770011e+00} *$ var_x7)))))) *$ floor_power2_I((((((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1)) +$ ({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ var_x2)) +$ ({low = -4.66216377449373720054e+00; high = -4.66216377449373631237e+00} *$ var_x3)) +$ ({low = -6.71044739796881550831e+00; high = -6.71044739796881462013e+00} *$ var_x4)) +$ {low = -3.62448579259516971948e-06; high = 3.62448579259516971948e-06})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.22686045993935027111e-05; high = 1.22686045993935027111e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1)) +$ ({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ var_x2)) +$ ({low = -4.66216377449373720054e+00; high = -4.66216377449373631237e+00} *$ var_x3)) +$ ({low = -6.71044739796881550831e+00; high = -6.71044739796881462013e+00} *$ var_x4)) +$ ({low = -7.03565110919679082002e+00; high = -7.03565110919678993184e+00} *$ var_x5)) +$ ({low = -8.27697952227765121336e+00; high = -8.27697952227764943700e+00} *$ var_x6)) +$ ({low = -6.80645543029842858829e+00; high = -6.80645543029842770011e+00} *$ var_x7)))))) *$ ({low = -7.03565110919679082002e+00; high = -7.03565110919678993184e+00} *$ floor_power2_I(var_x5)))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.22686045993935027111e-05; high = 1.22686045993935027111e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1)) +$ ({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ var_x2)) +$ ({low = -4.66216377449373720054e+00; high = -4.66216377449373631237e+00} *$ var_x3)) +$ ({low = -6.71044739796881550831e+00; high = -6.71044739796881462013e+00} *$ var_x4)) +$ ({low = -7.03565110919679082002e+00; high = -7.03565110919678993184e+00} *$ var_x5)) +$ ({low = -8.27697952227765121336e+00; high = -8.27697952227764943700e+00} *$ var_x6)) +$ ({low = -6.80645543029842858829e+00; high = -6.80645543029842770011e+00} *$ var_x7)))))) *$ floor_power2_I((({low = -7.03565110919679082002e+00; high = -7.03565110919678993184e+00} *$ var_x5) +$ {low = -3.07452170321254027493e-07; high = 3.07452170321254027493e-07})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.22686045993935027111e-05; high = 1.22686045993935027111e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1)) +$ ({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ var_x2)) +$ ({low = -4.66216377449373720054e+00; high = -4.66216377449373631237e+00} *$ var_x3)) +$ ({low = -6.71044739796881550831e+00; high = -6.71044739796881462013e+00} *$ var_x4)) +$ ({low = -7.03565110919679082002e+00; high = -7.03565110919678993184e+00} *$ var_x5)) +$ ({low = -8.27697952227765121336e+00; high = -8.27697952227764943700e+00} *$ var_x6)) +$ ({low = -6.80645543029842858829e+00; high = -6.80645543029842770011e+00} *$ var_x7)))))) *$ floor_power2_I(((((((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1)) +$ ({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ var_x2)) +$ ({low = -4.66216377449373720054e+00; high = -4.66216377449373631237e+00} *$ var_x3)) +$ ({low = -6.71044739796881550831e+00; high = -6.71044739796881462013e+00} *$ var_x4)) +$ ({low = -7.03565110919679082002e+00; high = -7.03565110919678993184e+00} *$ var_x5)) +$ {low = -5.12403085842423847043e-06; high = 5.12403085842423847043e-06})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.22686045993935027111e-05; high = 1.22686045993935027111e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1)) +$ ({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ var_x2)) +$ ({low = -4.66216377449373720054e+00; high = -4.66216377449373631237e+00} *$ var_x3)) +$ ({low = -6.71044739796881550831e+00; high = -6.71044739796881462013e+00} *$ var_x4)) +$ ({low = -7.03565110919679082002e+00; high = -7.03565110919678993184e+00} *$ var_x5)) +$ ({low = -8.27697952227765121336e+00; high = -8.27697952227764943700e+00} *$ var_x6)) +$ ({low = -6.80645543029842858829e+00; high = -6.80645543029842770011e+00} *$ var_x7)))))) *$ ({low = -8.27697952227765121336e+00; high = -8.27697952227764943700e+00} *$ floor_power2_I(var_x6)))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.22686045993935027111e-05; high = 1.22686045993935027111e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1)) +$ ({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ var_x2)) +$ ({low = -4.66216377449373720054e+00; high = -4.66216377449373631237e+00} *$ var_x3)) +$ ({low = -6.71044739796881550831e+00; high = -6.71044739796881462013e+00} *$ var_x4)) +$ ({low = -7.03565110919679082002e+00; high = -7.03565110919678993184e+00} *$ var_x5)) +$ ({low = -8.27697952227765121336e+00; high = -8.27697952227764943700e+00} *$ var_x6)) +$ ({low = -6.80645543029842858829e+00; high = -6.80645543029842770011e+00} *$ var_x7)))))) *$ floor_power2_I((({low = -8.27697952227765121336e+00; high = -8.27697952227764943700e+00} *$ var_x6) +$ {low = -3.22539731567769313211e-07; high = 3.22539731567769313211e-07})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.22686045993935027111e-05; high = 1.22686045993935027111e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1)) +$ ({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ var_x2)) +$ ({low = -4.66216377449373720054e+00; high = -4.66216377449373631237e+00} *$ var_x3)) +$ ({low = -6.71044739796881550831e+00; high = -6.71044739796881462013e+00} *$ var_x4)) +$ ({low = -7.03565110919679082002e+00; high = -7.03565110919678993184e+00} *$ var_x5)) +$ ({low = -8.27697952227765121336e+00; high = -8.27697952227764943700e+00} *$ var_x6)) +$ ({low = -6.80645543029842858829e+00; high = -6.80645543029842770011e+00} *$ var_x7)))))) *$ floor_power2_I((((((((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1)) +$ ({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ var_x2)) +$ ({low = -4.66216377449373720054e+00; high = -4.66216377449373631237e+00} *$ var_x3)) +$ ({low = -6.71044739796881550831e+00; high = -6.71044739796881462013e+00} *$ var_x4)) +$ ({low = -7.03565110919679082002e+00; high = -7.03565110919678993184e+00} *$ var_x5)) +$ ({low = -8.27697952227765121336e+00; high = -8.27697952227764943700e+00} *$ var_x6)) +$ {low = -7.83075638100763484829e-06; high = 7.83075638100763484829e-06})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.22686045993935027111e-05; high = 1.22686045993935027111e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1)) +$ ({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ var_x2)) +$ ({low = -4.66216377449373720054e+00; high = -4.66216377449373631237e+00} *$ var_x3)) +$ ({low = -6.71044739796881550831e+00; high = -6.71044739796881462013e+00} *$ var_x4)) +$ ({low = -7.03565110919679082002e+00; high = -7.03565110919678993184e+00} *$ var_x5)) +$ ({low = -8.27697952227765121336e+00; high = -8.27697952227764943700e+00} *$ var_x6)) +$ ({low = -6.80645543029842858829e+00; high = -6.80645543029842770011e+00} *$ var_x7)))))) *$ ({low = -6.80645543029842858829e+00; high = -6.80645543029842770011e+00} *$ floor_power2_I(var_x7)))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.22686045993935027111e-05; high = 1.22686045993935027111e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1)) +$ ({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ var_x2)) +$ ({low = -4.66216377449373720054e+00; high = -4.66216377449373631237e+00} *$ var_x3)) +$ ({low = -6.71044739796881550831e+00; high = -6.71044739796881462013e+00} *$ var_x4)) +$ ({low = -7.03565110919679082002e+00; high = -7.03565110919678993184e+00} *$ var_x5)) +$ ({low = -8.27697952227765121336e+00; high = -8.27697952227764943700e+00} *$ var_x6)) +$ ({low = -6.80645543029842858829e+00; high = -6.80645543029842770011e+00} *$ var_x7)))))) *$ floor_power2_I((({low = -6.80645543029842858829e+00; high = -6.80645543029842770011e+00} *$ var_x7) +$ {low = -3.84732373659304462828e-07; high = 3.84732373659304462828e-07})))) +$ abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.22686045993935027111e-05; high = 1.22686045993935027111e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1)) +$ ({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ var_x2)) +$ ({low = -4.66216377449373720054e+00; high = -4.66216377449373631237e+00} *$ var_x3)) +$ ({low = -6.71044739796881550831e+00; high = -6.71044739796881462013e+00} *$ var_x4)) +$ ({low = -7.03565110919679082002e+00; high = -7.03565110919678993184e+00} *$ var_x5)) +$ ({low = -8.27697952227765121336e+00; high = -8.27697952227764943700e+00} *$ var_x6)) +$ ({low = -6.80645543029842858829e+00; high = -6.80645543029842770011e+00} *$ var_x7)))))) *$ floor_power2_I(((((((((({low = 3.69687155916110299358e+00; high = 3.69687155916110343767e+00} *$ var_x0) +$ ({low = 2.70330446265749557710e+00; high = 2.70330446265749602119e+00} *$ var_x1)) +$ ({low = 7.29464242684157238017e+00; high = 7.29464242684157326835e+00} *$ var_x2)) +$ ({low = -4.66216377449373720054e+00; high = -4.66216377449373631237e+00} *$ var_x3)) +$ ({low = -6.71044739796881550831e+00; high = -6.71044739796881462013e+00} *$ var_x4)) +$ ({low = -7.03565110919679082002e+00; high = -7.03565110919678993184e+00} *$ var_x5)) +$ ({low = -8.27697952227765121336e+00; high = -8.27697952227764943700e+00} *$ var_x6)) +$ ({low = -6.80645543029842858829e+00; high = -6.80645543029842770011e+00} *$ var_x7)) +$ {low = -1.03612559665810027111e-05; high = 1.03612559665810027111e-05})))))))))))))))))))))))))))

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
