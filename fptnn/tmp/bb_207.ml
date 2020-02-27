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
(abs_I((((((((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.19670243212563066334e-05; high = 1.19670243212563066334e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = -5.32784755377304275470e+00; high = -5.32784755377304186652e+00} *$ var_x0) +$ ({low = -5.47124355906576553821e+00; high = -5.47124355906576465003e+00} *$ var_x1)) +$ ({low = 6.80154433190718332725e+00; high = 6.80154433190718421542e+00} *$ var_x2)) +$ ({low = 4.78116840139809351484e+00; high = 4.78116840139809440302e+00} *$ var_x3)) +$ ({low = -9.96020213804437304361e+00; high = -9.96020213804437126726e+00} *$ var_x4)) +$ ({low = 7.55875017476922916870e+00; high = 7.55875017476923005688e+00} *$ var_x5)) +$ ({low = -6.14436385267056728310e+00; high = -6.14436385267056639492e+00} *$ var_x6)))))) *$ (var_x0 *$ {low = -1.22472194061107209073e+00; high = -1.22472194061107186869e+00})) +$ (({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.19670243212563066334e-05; high = 1.19670243212563066334e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = -5.32784755377304275470e+00; high = -5.32784755377304186652e+00} *$ var_x0) +$ ({low = -5.47124355906576553821e+00; high = -5.47124355906576465003e+00} *$ var_x1)) +$ ({low = 6.80154433190718332725e+00; high = 6.80154433190718421542e+00} *$ var_x2)) +$ ({low = 4.78116840139809351484e+00; high = 4.78116840139809440302e+00} *$ var_x3)) +$ ({low = -9.96020213804437304361e+00; high = -9.96020213804437126726e+00} *$ var_x4)) +$ ({low = 7.55875017476922916870e+00; high = 7.55875017476923005688e+00} *$ var_x5)) +$ ({low = -6.14436385267056728310e+00; high = -6.14436385267056639492e+00} *$ var_x6)))))) *$ (var_x1 *$ {low = -2.97905510599884815193e+00; high = -2.97905510599884770784e+00}))) +$ (({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.19670243212563066334e-05; high = 1.19670243212563066334e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = -5.32784755377304275470e+00; high = -5.32784755377304186652e+00} *$ var_x0) +$ ({low = -5.47124355906576553821e+00; high = -5.47124355906576465003e+00} *$ var_x1)) +$ ({low = 6.80154433190718332725e+00; high = 6.80154433190718421542e+00} *$ var_x2)) +$ ({low = 4.78116840139809351484e+00; high = 4.78116840139809440302e+00} *$ var_x3)) +$ ({low = -9.96020213804437304361e+00; high = -9.96020213804437126726e+00} *$ var_x4)) +$ ({low = 7.55875017476922916870e+00; high = 7.55875017476923005688e+00} *$ var_x5)) +$ ({low = -6.14436385267056728310e+00; high = -6.14436385267056639492e+00} *$ var_x6)))))) *$ (var_x2 *$ {low = 2.38998251791974380964e+00; high = 2.38998251791974425373e+00}))) +$ (({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.19670243212563066334e-05; high = 1.19670243212563066334e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = -5.32784755377304275470e+00; high = -5.32784755377304186652e+00} *$ var_x0) +$ ({low = -5.47124355906576553821e+00; high = -5.47124355906576465003e+00} *$ var_x1)) +$ ({low = 6.80154433190718332725e+00; high = 6.80154433190718421542e+00} *$ var_x2)) +$ ({low = 4.78116840139809351484e+00; high = 4.78116840139809440302e+00} *$ var_x3)) +$ ({low = -9.96020213804437304361e+00; high = -9.96020213804437126726e+00} *$ var_x4)) +$ ({low = 7.55875017476922916870e+00; high = 7.55875017476923005688e+00} *$ var_x5)) +$ ({low = -6.14436385267056728310e+00; high = -6.14436385267056639492e+00} *$ var_x6)))))) *$ (var_x3 *$ {low = -9.97369474973696101827e-01; high = -9.97369474973695990805e-01}))) +$ (({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.19670243212563066334e-05; high = 1.19670243212563066334e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = -5.32784755377304275470e+00; high = -5.32784755377304186652e+00} *$ var_x0) +$ ({low = -5.47124355906576553821e+00; high = -5.47124355906576465003e+00} *$ var_x1)) +$ ({low = 6.80154433190718332725e+00; high = 6.80154433190718421542e+00} *$ var_x2)) +$ ({low = 4.78116840139809351484e+00; high = 4.78116840139809440302e+00} *$ var_x3)) +$ ({low = -9.96020213804437304361e+00; high = -9.96020213804437126726e+00} *$ var_x4)) +$ ({low = 7.55875017476922916870e+00; high = 7.55875017476923005688e+00} *$ var_x5)) +$ ({low = -6.14436385267056728310e+00; high = -6.14436385267056639492e+00} *$ var_x6)))))) *$ (var_x4 *$ {low = 1.32636773659443196749e+00; high = 1.32636773659443218953e+00}))) +$ (({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.19670243212563066334e-05; high = 1.19670243212563066334e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = -5.32784755377304275470e+00; high = -5.32784755377304186652e+00} *$ var_x0) +$ ({low = -5.47124355906576553821e+00; high = -5.47124355906576465003e+00} *$ var_x1)) +$ ({low = 6.80154433190718332725e+00; high = 6.80154433190718421542e+00} *$ var_x2)) +$ ({low = 4.78116840139809351484e+00; high = 4.78116840139809440302e+00} *$ var_x3)) +$ ({low = -9.96020213804437304361e+00; high = -9.96020213804437126726e+00} *$ var_x4)) +$ ({low = 7.55875017476922916870e+00; high = 7.55875017476923005688e+00} *$ var_x5)) +$ ({low = -6.14436385267056728310e+00; high = -6.14436385267056639492e+00} *$ var_x6)))))) *$ (var_x5 *$ {low = 3.72141121863679980031e-01; high = 3.72141121863680035542e-01}))) +$ (({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.19670243212563066334e-05; high = 1.19670243212563066334e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = -5.32784755377304275470e+00; high = -5.32784755377304186652e+00} *$ var_x0) +$ ({low = -5.47124355906576553821e+00; high = -5.47124355906576465003e+00} *$ var_x1)) +$ ({low = 6.80154433190718332725e+00; high = 6.80154433190718421542e+00} *$ var_x2)) +$ ({low = 4.78116840139809351484e+00; high = 4.78116840139809440302e+00} *$ var_x3)) +$ ({low = -9.96020213804437304361e+00; high = -9.96020213804437126726e+00} *$ var_x4)) +$ ({low = 7.55875017476922916870e+00; high = 7.55875017476923005688e+00} *$ var_x5)) +$ ({low = -6.14436385267056728310e+00; high = -6.14436385267056639492e+00} *$ var_x6)))))) *$ (var_x6 *$ {low = 4.61153720598527994134e-01; high = 4.61153720598528049646e-01})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.19670243212563066334e-05; high = 1.19670243212563066334e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = -5.32784755377304275470e+00; high = -5.32784755377304186652e+00} *$ var_x0) +$ ({low = -5.47124355906576553821e+00; high = -5.47124355906576465003e+00} *$ var_x1)) +$ ({low = 6.80154433190718332725e+00; high = 6.80154433190718421542e+00} *$ var_x2)) +$ ({low = 4.78116840139809351484e+00; high = 4.78116840139809440302e+00} *$ var_x3)) +$ ({low = -9.96020213804437304361e+00; high = -9.96020213804437126726e+00} *$ var_x4)) +$ ({low = 7.55875017476922916870e+00; high = 7.55875017476923005688e+00} *$ var_x5)) +$ ({low = -6.14436385267056728310e+00; high = -6.14436385267056639492e+00} *$ var_x6)))))) *$ ({low = -5.32784755377304275470e+00; high = -5.32784755377304186652e+00} *$ floor_power2_I(var_x0)))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.19670243212563066334e-05; high = 1.19670243212563066334e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = -5.32784755377304275470e+00; high = -5.32784755377304186652e+00} *$ var_x0) +$ ({low = -5.47124355906576553821e+00; high = -5.47124355906576465003e+00} *$ var_x1)) +$ ({low = 6.80154433190718332725e+00; high = 6.80154433190718421542e+00} *$ var_x2)) +$ ({low = 4.78116840139809351484e+00; high = 4.78116840139809440302e+00} *$ var_x3)) +$ ({low = -9.96020213804437304361e+00; high = -9.96020213804437126726e+00} *$ var_x4)) +$ ({low = 7.55875017476922916870e+00; high = 7.55875017476923005688e+00} *$ var_x5)) +$ ({low = -6.14436385267056728310e+00; high = -6.14436385267056639492e+00} *$ var_x6)))))) *$ floor_power2_I((({low = -5.32784755377304275470e+00; high = -5.32784755377304186652e+00} *$ var_x0) +$ {low = -2.31781348824331267641e-07; high = 2.31781348824331267641e-07})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.19670243212563066334e-05; high = 1.19670243212563066334e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = -5.32784755377304275470e+00; high = -5.32784755377304186652e+00} *$ var_x0) +$ ({low = -5.47124355906576553821e+00; high = -5.47124355906576465003e+00} *$ var_x1)) +$ ({low = 6.80154433190718332725e+00; high = 6.80154433190718421542e+00} *$ var_x2)) +$ ({low = 4.78116840139809351484e+00; high = 4.78116840139809440302e+00} *$ var_x3)) +$ ({low = -9.96020213804437304361e+00; high = -9.96020213804437126726e+00} *$ var_x4)) +$ ({low = 7.55875017476922916870e+00; high = 7.55875017476923005688e+00} *$ var_x5)) +$ ({low = -6.14436385267056728310e+00; high = -6.14436385267056639492e+00} *$ var_x6)))))) *$ ({low = -5.47124355906576553821e+00; high = -5.47124355906576465003e+00} *$ floor_power2_I(var_x1)))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.19670243212563066334e-05; high = 1.19670243212563066334e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = -5.32784755377304275470e+00; high = -5.32784755377304186652e+00} *$ var_x0) +$ ({low = -5.47124355906576553821e+00; high = -5.47124355906576465003e+00} *$ var_x1)) +$ ({low = 6.80154433190718332725e+00; high = 6.80154433190718421542e+00} *$ var_x2)) +$ ({low = 4.78116840139809351484e+00; high = 4.78116840139809440302e+00} *$ var_x3)) +$ ({low = -9.96020213804437304361e+00; high = -9.96020213804437126726e+00} *$ var_x4)) +$ ({low = 7.55875017476922916870e+00; high = 7.55875017476923005688e+00} *$ var_x5)) +$ ({low = -6.14436385267056728310e+00; high = -6.14436385267056639492e+00} *$ var_x6)))))) *$ floor_power2_I((({low = -5.47124355906576553821e+00; high = -5.47124355906576465003e+00} *$ var_x1) +$ {low = -3.40621291060119394297e-07; high = 3.40621291060119394297e-07})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.19670243212563066334e-05; high = 1.19670243212563066334e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = -5.32784755377304275470e+00; high = -5.32784755377304186652e+00} *$ var_x0) +$ ({low = -5.47124355906576553821e+00; high = -5.47124355906576465003e+00} *$ var_x1)) +$ ({low = 6.80154433190718332725e+00; high = 6.80154433190718421542e+00} *$ var_x2)) +$ ({low = 4.78116840139809351484e+00; high = 4.78116840139809440302e+00} *$ var_x3)) +$ ({low = -9.96020213804437304361e+00; high = -9.96020213804437126726e+00} *$ var_x4)) +$ ({low = 7.55875017476922916870e+00; high = 7.55875017476923005688e+00} *$ var_x5)) +$ ({low = -6.14436385267056728310e+00; high = -6.14436385267056639492e+00} *$ var_x6)))))) *$ floor_power2_I(((({low = -5.32784755377304275470e+00; high = -5.32784755377304186652e+00} *$ var_x0) +$ ({low = -5.47124355906576553821e+00; high = -5.47124355906576465003e+00} *$ var_x1)) +$ {low = -1.04923979808757600604e-06; high = 1.04923979808757600604e-06})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.19670243212563066334e-05; high = 1.19670243212563066334e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = -5.32784755377304275470e+00; high = -5.32784755377304186652e+00} *$ var_x0) +$ ({low = -5.47124355906576553821e+00; high = -5.47124355906576465003e+00} *$ var_x1)) +$ ({low = 6.80154433190718332725e+00; high = 6.80154433190718421542e+00} *$ var_x2)) +$ ({low = 4.78116840139809351484e+00; high = 4.78116840139809440302e+00} *$ var_x3)) +$ ({low = -9.96020213804437304361e+00; high = -9.96020213804437126726e+00} *$ var_x4)) +$ ({low = 7.55875017476922916870e+00; high = 7.55875017476923005688e+00} *$ var_x5)) +$ ({low = -6.14436385267056728310e+00; high = -6.14436385267056639492e+00} *$ var_x6)))))) *$ ({low = 6.80154433190718332725e+00; high = 6.80154433190718421542e+00} *$ floor_power2_I(var_x2)))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.19670243212563066334e-05; high = 1.19670243212563066334e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = -5.32784755377304275470e+00; high = -5.32784755377304186652e+00} *$ var_x0) +$ ({low = -5.47124355906576553821e+00; high = -5.47124355906576465003e+00} *$ var_x1)) +$ ({low = 6.80154433190718332725e+00; high = 6.80154433190718421542e+00} *$ var_x2)) +$ ({low = 4.78116840139809351484e+00; high = 4.78116840139809440302e+00} *$ var_x3)) +$ ({low = -9.96020213804437304361e+00; high = -9.96020213804437126726e+00} *$ var_x4)) +$ ({low = 7.55875017476922916870e+00; high = 7.55875017476923005688e+00} *$ var_x5)) +$ ({low = -6.14436385267056728310e+00; high = -6.14436385267056639492e+00} *$ var_x6)))))) *$ floor_power2_I((({low = 6.80154433190718332725e+00; high = 6.80154433190718421542e+00} *$ var_x2) +$ {low = -3.45155880159161446640e-07; high = 3.45155880159161446640e-07})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.19670243212563066334e-05; high = 1.19670243212563066334e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = -5.32784755377304275470e+00; high = -5.32784755377304186652e+00} *$ var_x0) +$ ({low = -5.47124355906576553821e+00; high = -5.47124355906576465003e+00} *$ var_x1)) +$ ({low = 6.80154433190718332725e+00; high = 6.80154433190718421542e+00} *$ var_x2)) +$ ({low = 4.78116840139809351484e+00; high = 4.78116840139809440302e+00} *$ var_x3)) +$ ({low = -9.96020213804437304361e+00; high = -9.96020213804437126726e+00} *$ var_x4)) +$ ({low = 7.55875017476922916870e+00; high = 7.55875017476923005688e+00} *$ var_x5)) +$ ({low = -6.14436385267056728310e+00; high = -6.14436385267056639492e+00} *$ var_x6)))))) *$ floor_power2_I((((({low = -5.32784755377304275470e+00; high = -5.32784755377304186652e+00} *$ var_x0) +$ ({low = -5.47124355906576553821e+00; high = -5.47124355906576465003e+00} *$ var_x1)) +$ ({low = 6.80154433190718332725e+00; high = 6.80154433190718421542e+00} *$ var_x2)) +$ {low = -2.10965141555142558796e-06; high = 2.10965141555142558796e-06})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.19670243212563066334e-05; high = 1.19670243212563066334e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = -5.32784755377304275470e+00; high = -5.32784755377304186652e+00} *$ var_x0) +$ ({low = -5.47124355906576553821e+00; high = -5.47124355906576465003e+00} *$ var_x1)) +$ ({low = 6.80154433190718332725e+00; high = 6.80154433190718421542e+00} *$ var_x2)) +$ ({low = 4.78116840139809351484e+00; high = 4.78116840139809440302e+00} *$ var_x3)) +$ ({low = -9.96020213804437304361e+00; high = -9.96020213804437126726e+00} *$ var_x4)) +$ ({low = 7.55875017476922916870e+00; high = 7.55875017476923005688e+00} *$ var_x5)) +$ ({low = -6.14436385267056728310e+00; high = -6.14436385267056639492e+00} *$ var_x6)))))) *$ ({low = 4.78116840139809351484e+00; high = 4.78116840139809440302e+00} *$ floor_power2_I(var_x3)))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.19670243212563066334e-05; high = 1.19670243212563066334e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = -5.32784755377304275470e+00; high = -5.32784755377304186652e+00} *$ var_x0) +$ ({low = -5.47124355906576553821e+00; high = -5.47124355906576465003e+00} *$ var_x1)) +$ ({low = 6.80154433190718332725e+00; high = 6.80154433190718421542e+00} *$ var_x2)) +$ ({low = 4.78116840139809351484e+00; high = 4.78116840139809440302e+00} *$ var_x3)) +$ ({low = -9.96020213804437304361e+00; high = -9.96020213804437126726e+00} *$ var_x4)) +$ ({low = 7.55875017476922916870e+00; high = 7.55875017476923005688e+00} *$ var_x5)) +$ ({low = -6.14436385267056728310e+00; high = -6.14436385267056639492e+00} *$ var_x6)))))) *$ floor_power2_I((({low = 4.78116840139809351484e+00; high = 4.78116840139809440302e+00} *$ var_x3) +$ {low = -2.01937777125636932652e-07; high = 2.01937777125636932652e-07})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.19670243212563066334e-05; high = 1.19670243212563066334e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = -5.32784755377304275470e+00; high = -5.32784755377304186652e+00} *$ var_x0) +$ ({low = -5.47124355906576553821e+00; high = -5.47124355906576465003e+00} *$ var_x1)) +$ ({low = 6.80154433190718332725e+00; high = 6.80154433190718421542e+00} *$ var_x2)) +$ ({low = 4.78116840139809351484e+00; high = 4.78116840139809440302e+00} *$ var_x3)) +$ ({low = -9.96020213804437304361e+00; high = -9.96020213804437126726e+00} *$ var_x4)) +$ ({low = 7.55875017476922916870e+00; high = 7.55875017476923005688e+00} *$ var_x5)) +$ ({low = -6.14436385267056728310e+00; high = -6.14436385267056639492e+00} *$ var_x6)))))) *$ floor_power2_I(((((({low = -5.32784755377304275470e+00; high = -5.32784755377304186652e+00} *$ var_x0) +$ ({low = -5.47124355906576553821e+00; high = -5.47124355906576465003e+00} *$ var_x1)) +$ ({low = 6.80154433190718332725e+00; high = 6.80154433190718421542e+00} *$ var_x2)) +$ ({low = 4.78116840139809351484e+00; high = 4.78116840139809440302e+00} *$ var_x3)) +$ {low = -3.50368208818487536472e-06; high = 3.50368208818487536472e-06})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.19670243212563066334e-05; high = 1.19670243212563066334e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = -5.32784755377304275470e+00; high = -5.32784755377304186652e+00} *$ var_x0) +$ ({low = -5.47124355906576553821e+00; high = -5.47124355906576465003e+00} *$ var_x1)) +$ ({low = 6.80154433190718332725e+00; high = 6.80154433190718421542e+00} *$ var_x2)) +$ ({low = 4.78116840139809351484e+00; high = 4.78116840139809440302e+00} *$ var_x3)) +$ ({low = -9.96020213804437304361e+00; high = -9.96020213804437126726e+00} *$ var_x4)) +$ ({low = 7.55875017476922916870e+00; high = 7.55875017476923005688e+00} *$ var_x5)) +$ ({low = -6.14436385267056728310e+00; high = -6.14436385267056639492e+00} *$ var_x6)))))) *$ ({low = -9.96020213804437304361e+00; high = -9.96020213804437126726e+00} *$ floor_power2_I(var_x4)))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.19670243212563066334e-05; high = 1.19670243212563066334e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = -5.32784755377304275470e+00; high = -5.32784755377304186652e+00} *$ var_x0) +$ ({low = -5.47124355906576553821e+00; high = -5.47124355906576465003e+00} *$ var_x1)) +$ ({low = 6.80154433190718332725e+00; high = 6.80154433190718421542e+00} *$ var_x2)) +$ ({low = 4.78116840139809351484e+00; high = 4.78116840139809440302e+00} *$ var_x3)) +$ ({low = -9.96020213804437304361e+00; high = -9.96020213804437126726e+00} *$ var_x4)) +$ ({low = 7.55875017476922916870e+00; high = 7.55875017476923005688e+00} *$ var_x5)) +$ ({low = -6.14436385267056728310e+00; high = -6.14436385267056639492e+00} *$ var_x6)))))) *$ floor_power2_I((({low = -9.96020213804437304361e+00; high = -9.96020213804437126726e+00} *$ var_x4) +$ {low = -3.75894835301962986368e-07; high = 3.75894835301962986368e-07})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.19670243212563066334e-05; high = 1.19670243212563066334e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = -5.32784755377304275470e+00; high = -5.32784755377304186652e+00} *$ var_x0) +$ ({low = -5.47124355906576553821e+00; high = -5.47124355906576465003e+00} *$ var_x1)) +$ ({low = 6.80154433190718332725e+00; high = 6.80154433190718421542e+00} *$ var_x2)) +$ ({low = 4.78116840139809351484e+00; high = 4.78116840139809440302e+00} *$ var_x3)) +$ ({low = -9.96020213804437304361e+00; high = -9.96020213804437126726e+00} *$ var_x4)) +$ ({low = 7.55875017476922916870e+00; high = 7.55875017476923005688e+00} *$ var_x5)) +$ ({low = -6.14436385267056728310e+00; high = -6.14436385267056639492e+00} *$ var_x6)))))) *$ floor_power2_I((((((({low = -5.32784755377304275470e+00; high = -5.32784755377304186652e+00} *$ var_x0) +$ ({low = -5.47124355906576553821e+00; high = -5.47124355906576465003e+00} *$ var_x1)) +$ ({low = 6.80154433190718332725e+00; high = 6.80154433190718421542e+00} *$ var_x2)) +$ ({low = 4.78116840139809351484e+00; high = 4.78116840139809440302e+00} *$ var_x3)) +$ ({low = -9.96020213804437304361e+00; high = -9.96020213804437126726e+00} *$ var_x4)) +$ {low = -5.31008839809621515103e-06; high = 5.31008839809621515103e-06})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.19670243212563066334e-05; high = 1.19670243212563066334e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = -5.32784755377304275470e+00; high = -5.32784755377304186652e+00} *$ var_x0) +$ ({low = -5.47124355906576553821e+00; high = -5.47124355906576465003e+00} *$ var_x1)) +$ ({low = 6.80154433190718332725e+00; high = 6.80154433190718421542e+00} *$ var_x2)) +$ ({low = 4.78116840139809351484e+00; high = 4.78116840139809440302e+00} *$ var_x3)) +$ ({low = -9.96020213804437304361e+00; high = -9.96020213804437126726e+00} *$ var_x4)) +$ ({low = 7.55875017476922916870e+00; high = 7.55875017476923005688e+00} *$ var_x5)) +$ ({low = -6.14436385267056728310e+00; high = -6.14436385267056639492e+00} *$ var_x6)))))) *$ ({low = 7.55875017476922916870e+00; high = 7.55875017476923005688e+00} *$ floor_power2_I(var_x5)))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.19670243212563066334e-05; high = 1.19670243212563066334e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = -5.32784755377304275470e+00; high = -5.32784755377304186652e+00} *$ var_x0) +$ ({low = -5.47124355906576553821e+00; high = -5.47124355906576465003e+00} *$ var_x1)) +$ ({low = 6.80154433190718332725e+00; high = 6.80154433190718421542e+00} *$ var_x2)) +$ ({low = 4.78116840139809351484e+00; high = 4.78116840139809440302e+00} *$ var_x3)) +$ ({low = -9.96020213804437304361e+00; high = -9.96020213804437126726e+00} *$ var_x4)) +$ ({low = 7.55875017476922916870e+00; high = 7.55875017476923005688e+00} *$ var_x5)) +$ ({low = -6.14436385267056728310e+00; high = -6.14436385267056639492e+00} *$ var_x6)))))) *$ floor_power2_I((({low = 7.55875017476922916870e+00; high = 7.55875017476923005688e+00} *$ var_x5) +$ {low = -2.47449649592576315131e-07; high = 2.47449649592576315131e-07})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.19670243212563066334e-05; high = 1.19670243212563066334e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = -5.32784755377304275470e+00; high = -5.32784755377304186652e+00} *$ var_x0) +$ ({low = -5.47124355906576553821e+00; high = -5.47124355906576465003e+00} *$ var_x1)) +$ ({low = 6.80154433190718332725e+00; high = 6.80154433190718421542e+00} *$ var_x2)) +$ ({low = 4.78116840139809351484e+00; high = 4.78116840139809440302e+00} *$ var_x3)) +$ ({low = -9.96020213804437304361e+00; high = -9.96020213804437126726e+00} *$ var_x4)) +$ ({low = 7.55875017476922916870e+00; high = 7.55875017476923005688e+00} *$ var_x5)) +$ ({low = -6.14436385267056728310e+00; high = -6.14436385267056639492e+00} *$ var_x6)))))) *$ floor_power2_I(((((((({low = -5.32784755377304275470e+00; high = -5.32784755377304186652e+00} *$ var_x0) +$ ({low = -5.47124355906576553821e+00; high = -5.47124355906576465003e+00} *$ var_x1)) +$ ({low = 6.80154433190718332725e+00; high = 6.80154433190718421542e+00} *$ var_x2)) +$ ({low = 4.78116840139809351484e+00; high = 4.78116840139809440302e+00} *$ var_x3)) +$ ({low = -9.96020213804437304361e+00; high = -9.96020213804437126726e+00} *$ var_x4)) +$ ({low = 7.55875017476922916870e+00; high = 7.55875017476923005688e+00} *$ var_x5)) +$ {low = -7.70330525960285550141e-06; high = 7.70330525960285550141e-06})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.19670243212563066334e-05; high = 1.19670243212563066334e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = -5.32784755377304275470e+00; high = -5.32784755377304186652e+00} *$ var_x0) +$ ({low = -5.47124355906576553821e+00; high = -5.47124355906576465003e+00} *$ var_x1)) +$ ({low = 6.80154433190718332725e+00; high = 6.80154433190718421542e+00} *$ var_x2)) +$ ({low = 4.78116840139809351484e+00; high = 4.78116840139809440302e+00} *$ var_x3)) +$ ({low = -9.96020213804437304361e+00; high = -9.96020213804437126726e+00} *$ var_x4)) +$ ({low = 7.55875017476922916870e+00; high = 7.55875017476923005688e+00} *$ var_x5)) +$ ({low = -6.14436385267056728310e+00; high = -6.14436385267056639492e+00} *$ var_x6)))))) *$ ({low = -6.14436385267056728310e+00; high = -6.14436385267056639492e+00} *$ floor_power2_I(var_x6)))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.19670243212563066334e-05; high = 1.19670243212563066334e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = -5.32784755377304275470e+00; high = -5.32784755377304186652e+00} *$ var_x0) +$ ({low = -5.47124355906576553821e+00; high = -5.47124355906576465003e+00} *$ var_x1)) +$ ({low = 6.80154433190718332725e+00; high = 6.80154433190718421542e+00} *$ var_x2)) +$ ({low = 4.78116840139809351484e+00; high = 4.78116840139809440302e+00} *$ var_x3)) +$ ({low = -9.96020213804437304361e+00; high = -9.96020213804437126726e+00} *$ var_x4)) +$ ({low = 7.55875017476922916870e+00; high = 7.55875017476923005688e+00} *$ var_x5)) +$ ({low = -6.14436385267056728310e+00; high = -6.14436385267056639492e+00} *$ var_x6)))))) *$ floor_power2_I((({low = -6.14436385267056728310e+00; high = -6.14436385267056639492e+00} *$ var_x6) +$ {low = -2.10603216926888446734e-07; high = 2.10603216926888446734e-07})))) +$ abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -1.19670243212563066334e-05; high = 1.19670243212563066334e-05}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = -5.32784755377304275470e+00; high = -5.32784755377304186652e+00} *$ var_x0) +$ ({low = -5.47124355906576553821e+00; high = -5.47124355906576465003e+00} *$ var_x1)) +$ ({low = 6.80154433190718332725e+00; high = 6.80154433190718421542e+00} *$ var_x2)) +$ ({low = 4.78116840139809351484e+00; high = 4.78116840139809440302e+00} *$ var_x3)) +$ ({low = -9.96020213804437304361e+00; high = -9.96020213804437126726e+00} *$ var_x4)) +$ ({low = 7.55875017476922916870e+00; high = 7.55875017476923005688e+00} *$ var_x5)) +$ ({low = -6.14436385267056728310e+00; high = -6.14436385267056639492e+00} *$ var_x6)))))) *$ floor_power2_I((((((((({low = -5.32784755377304275470e+00; high = -5.32784755377304186652e+00} *$ var_x0) +$ ({low = -5.47124355906576553821e+00; high = -5.47124355906576465003e+00} *$ var_x1)) +$ ({low = 6.80154433190718332725e+00; high = 6.80154433190718421542e+00} *$ var_x2)) +$ ({low = 4.78116840139809351484e+00; high = 4.78116840139809440302e+00} *$ var_x3)) +$ ({low = -9.96020213804437304361e+00; high = -9.96020213804437126726e+00} *$ var_x4)) +$ ({low = 7.55875017476922916870e+00; high = 7.55875017476923005688e+00} *$ var_x5)) +$ ({low = -6.14436385267056728310e+00; high = -6.14436385267056639492e+00} *$ var_x6)) +$ {low = -1.00596756884438066334e-05; high = 1.00596756884438066334e-05}))))))))))))))))))))))))

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
