open Interval
open Opt_func


let start_interval = Array.init 6 (function
| 0 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 1 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 2 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 3 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 4 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| 5 -> {low = -1.00000000000000000000e+00; high = 1.00000000000000000000e+00}
| _ -> failwith "Out of boundaries"
)

let f_X input_array = 
  let var_x0 = input_array.(0) in
  let var_x1 = input_array.(1) in
  let var_x2 = input_array.(2) in
  let var_x3 = input_array.(3) in
  let var_x4 = input_array.(4) in
  let var_x5 = input_array.(5) in
(abs_I(((((((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.80481450848322576069e-06; high = 9.80481450848322576069e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((({low = -9.07137498758308424840e+00; high = -9.07137498758308247204e+00} *$ var_x0) +$ ({low = 4.30908852617427040599e+00; high = 4.30908852617427129417e+00} *$ var_x1)) +$ ({low = -9.20775312447659111115e+00; high = -9.20775312447658933479e+00} *$ var_x2)) +$ ({low = -4.81086242805027186620e+00; high = -4.81086242805027097802e+00} *$ var_x3)) +$ ({low = -5.85677127289484378281e+00; high = -5.85677127289484289463e+00} *$ var_x4)) +$ ({low = 2.29526913412489674826e+00; high = 2.29526913412489719235e+00} *$ var_x5)))))) *$ (var_x0 *$ {low = -1.58367871821414407663e+00; high = -1.58367871821414385458e+00})) +$ (({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.80481450848322576069e-06; high = 9.80481450848322576069e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((({low = -9.07137498758308424840e+00; high = -9.07137498758308247204e+00} *$ var_x0) +$ ({low = 4.30908852617427040599e+00; high = 4.30908852617427129417e+00} *$ var_x1)) +$ ({low = -9.20775312447659111115e+00; high = -9.20775312447658933479e+00} *$ var_x2)) +$ ({low = -4.81086242805027186620e+00; high = -4.81086242805027097802e+00} *$ var_x3)) +$ ({low = -5.85677127289484378281e+00; high = -5.85677127289484289463e+00} *$ var_x4)) +$ ({low = 2.29526913412489674826e+00; high = 2.29526913412489719235e+00} *$ var_x5)))))) *$ (var_x1 *$ {low = -3.03325260179046418685e+00; high = -3.03325260179046374276e+00}))) +$ (({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.80481450848322576069e-06; high = 9.80481450848322576069e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((({low = -9.07137498758308424840e+00; high = -9.07137498758308247204e+00} *$ var_x0) +$ ({low = 4.30908852617427040599e+00; high = 4.30908852617427129417e+00} *$ var_x1)) +$ ({low = -9.20775312447659111115e+00; high = -9.20775312447658933479e+00} *$ var_x2)) +$ ({low = -4.81086242805027186620e+00; high = -4.81086242805027097802e+00} *$ var_x3)) +$ ({low = -5.85677127289484378281e+00; high = -5.85677127289484289463e+00} *$ var_x4)) +$ ({low = 2.29526913412489674826e+00; high = 2.29526913412489719235e+00} *$ var_x5)))))) *$ (var_x2 *$ {low = 9.55981362626559971751e-01; high = 9.55981362626560082774e-01}))) +$ (({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.80481450848322576069e-06; high = 9.80481450848322576069e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((({low = -9.07137498758308424840e+00; high = -9.07137498758308247204e+00} *$ var_x0) +$ ({low = 4.30908852617427040599e+00; high = 4.30908852617427129417e+00} *$ var_x1)) +$ ({low = -9.20775312447659111115e+00; high = -9.20775312447658933479e+00} *$ var_x2)) +$ ({low = -4.81086242805027186620e+00; high = -4.81086242805027097802e+00} *$ var_x3)) +$ ({low = -5.85677127289484378281e+00; high = -5.85677127289484289463e+00} *$ var_x4)) +$ ({low = 2.29526913412489674826e+00; high = 2.29526913412489719235e+00} *$ var_x5)))))) *$ (var_x3 *$ {low = 1.89831614457446384847e+00; high = 1.89831614457446407052e+00}))) +$ (({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.80481450848322576069e-06; high = 9.80481450848322576069e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((({low = -9.07137498758308424840e+00; high = -9.07137498758308247204e+00} *$ var_x0) +$ ({low = 4.30908852617427040599e+00; high = 4.30908852617427129417e+00} *$ var_x1)) +$ ({low = -9.20775312447659111115e+00; high = -9.20775312447658933479e+00} *$ var_x2)) +$ ({low = -4.81086242805027186620e+00; high = -4.81086242805027097802e+00} *$ var_x3)) +$ ({low = -5.85677127289484378281e+00; high = -5.85677127289484289463e+00} *$ var_x4)) +$ ({low = 2.29526913412489674826e+00; high = 2.29526913412489719235e+00} *$ var_x5)))))) *$ (var_x4 *$ {low = 3.29204827370291175370e+00; high = 3.29204827370291219779e+00}))) +$ (({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.80481450848322576069e-06; high = 9.80481450848322576069e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((({low = -9.07137498758308424840e+00; high = -9.07137498758308247204e+00} *$ var_x0) +$ ({low = 4.30908852617427040599e+00; high = 4.30908852617427129417e+00} *$ var_x1)) +$ ({low = -9.20775312447659111115e+00; high = -9.20775312447658933479e+00} *$ var_x2)) +$ ({low = -4.81086242805027186620e+00; high = -4.81086242805027097802e+00} *$ var_x3)) +$ ({low = -5.85677127289484378281e+00; high = -5.85677127289484289463e+00} *$ var_x4)) +$ ({low = 2.29526913412489674826e+00; high = 2.29526913412489719235e+00} *$ var_x5)))))) *$ (var_x5 *$ {low = -1.95865363205324816143e+00; high = -1.95865363205324793938e+00})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.80481450848322576069e-06; high = 9.80481450848322576069e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((({low = -9.07137498758308424840e+00; high = -9.07137498758308247204e+00} *$ var_x0) +$ ({low = 4.30908852617427040599e+00; high = 4.30908852617427129417e+00} *$ var_x1)) +$ ({low = -9.20775312447659111115e+00; high = -9.20775312447658933479e+00} *$ var_x2)) +$ ({low = -4.81086242805027186620e+00; high = -4.81086242805027097802e+00} *$ var_x3)) +$ ({low = -5.85677127289484378281e+00; high = -5.85677127289484289463e+00} *$ var_x4)) +$ ({low = 2.29526913412489674826e+00; high = 2.29526913412489719235e+00} *$ var_x5)))))) *$ ({low = -9.07137498758308424840e+00; high = -9.07137498758308247204e+00} *$ floor_power2_I(var_x0)))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.80481450848322576069e-06; high = 9.80481450848322576069e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((({low = -9.07137498758308424840e+00; high = -9.07137498758308247204e+00} *$ var_x0) +$ ({low = 4.30908852617427040599e+00; high = 4.30908852617427129417e+00} *$ var_x1)) +$ ({low = -9.20775312447659111115e+00; high = -9.20775312447658933479e+00} *$ var_x2)) +$ ({low = -4.81086242805027186620e+00; high = -4.81086242805027097802e+00} *$ var_x3)) +$ ({low = -5.85677127289484378281e+00; high = -5.85677127289484289463e+00} *$ var_x4)) +$ ({low = 2.29526913412489674826e+00; high = 2.29526913412489719235e+00} *$ var_x5)))))) *$ floor_power2_I((({low = -9.07137498758308424840e+00; high = -9.07137498758308247204e+00} *$ var_x0) +$ {low = -3.64742652130305173622e-07; high = 3.64742652130305173622e-07})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.80481450848322576069e-06; high = 9.80481450848322576069e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((({low = -9.07137498758308424840e+00; high = -9.07137498758308247204e+00} *$ var_x0) +$ ({low = 4.30908852617427040599e+00; high = 4.30908852617427129417e+00} *$ var_x1)) +$ ({low = -9.20775312447659111115e+00; high = -9.20775312447658933479e+00} *$ var_x2)) +$ ({low = -4.81086242805027186620e+00; high = -4.81086242805027097802e+00} *$ var_x3)) +$ ({low = -5.85677127289484378281e+00; high = -5.85677127289484289463e+00} *$ var_x4)) +$ ({low = 2.29526913412489674826e+00; high = 2.29526913412489719235e+00} *$ var_x5)))))) *$ ({low = 4.30908852617427040599e+00; high = 4.30908852617427129417e+00} *$ floor_power2_I(var_x1)))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.80481450848322576069e-06; high = 9.80481450848322576069e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((({low = -9.07137498758308424840e+00; high = -9.07137498758308247204e+00} *$ var_x0) +$ ({low = 4.30908852617427040599e+00; high = 4.30908852617427129417e+00} *$ var_x1)) +$ ({low = -9.20775312447659111115e+00; high = -9.20775312447658933479e+00} *$ var_x2)) +$ ({low = -4.81086242805027186620e+00; high = -4.81086242805027097802e+00} *$ var_x3)) +$ ({low = -5.85677127289484378281e+00; high = -5.85677127289484289463e+00} *$ var_x4)) +$ ({low = 2.29526913412489674826e+00; high = 2.29526913412489719235e+00} *$ var_x5)))))) *$ floor_power2_I((({low = 4.30908852617427040599e+00; high = 4.30908852617427129417e+00} *$ var_x1) +$ {low = -3.09216794686053517628e-07; high = 3.09216794686053517628e-07})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.80481450848322576069e-06; high = 9.80481450848322576069e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((({low = -9.07137498758308424840e+00; high = -9.07137498758308247204e+00} *$ var_x0) +$ ({low = 4.30908852617427040599e+00; high = 4.30908852617427129417e+00} *$ var_x1)) +$ ({low = -9.20775312447659111115e+00; high = -9.20775312447658933479e+00} *$ var_x2)) +$ ({low = -4.81086242805027186620e+00; high = -4.81086242805027097802e+00} *$ var_x3)) +$ ({low = -5.85677127289484378281e+00; high = -5.85677127289484289463e+00} *$ var_x4)) +$ ({low = 2.29526913412489674826e+00; high = 2.29526913412489719235e+00} *$ var_x5)))))) *$ floor_power2_I(((({low = -9.07137498758308424840e+00; high = -9.07137498758308247204e+00} *$ var_x0) +$ ({low = 4.30908852617427040599e+00; high = 4.30908852617427129417e+00} *$ var_x1)) +$ {low = -1.38921518412104650889e-06; high = 1.38921518412104650889e-06})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.80481450848322576069e-06; high = 9.80481450848322576069e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((({low = -9.07137498758308424840e+00; high = -9.07137498758308247204e+00} *$ var_x0) +$ ({low = 4.30908852617427040599e+00; high = 4.30908852617427129417e+00} *$ var_x1)) +$ ({low = -9.20775312447659111115e+00; high = -9.20775312447658933479e+00} *$ var_x2)) +$ ({low = -4.81086242805027186620e+00; high = -4.81086242805027097802e+00} *$ var_x3)) +$ ({low = -5.85677127289484378281e+00; high = -5.85677127289484289463e+00} *$ var_x4)) +$ ({low = 2.29526913412489674826e+00; high = 2.29526913412489719235e+00} *$ var_x5)))))) *$ ({low = -9.20775312447659111115e+00; high = -9.20775312447658933479e+00} *$ floor_power2_I(var_x2)))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.80481450848322576069e-06; high = 9.80481450848322576069e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((({low = -9.07137498758308424840e+00; high = -9.07137498758308247204e+00} *$ var_x0) +$ ({low = 4.30908852617427040599e+00; high = 4.30908852617427129417e+00} *$ var_x1)) +$ ({low = -9.20775312447659111115e+00; high = -9.20775312447658933479e+00} *$ var_x2)) +$ ({low = -4.81086242805027186620e+00; high = -4.81086242805027097802e+00} *$ var_x3)) +$ ({low = -5.85677127289484378281e+00; high = -5.85677127289484289463e+00} *$ var_x4)) +$ ({low = 2.29526913412489674826e+00; high = 2.29526913412489719235e+00} *$ var_x5)))))) *$ floor_power2_I((({low = -9.20775312447659111115e+00; high = -9.20775312447658933479e+00} *$ var_x2) +$ {low = -3.31393358311374244608e-07; high = 3.31393358311374244608e-07})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.80481450848322576069e-06; high = 9.80481450848322576069e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((({low = -9.07137498758308424840e+00; high = -9.07137498758308247204e+00} *$ var_x0) +$ ({low = 4.30908852617427040599e+00; high = 4.30908852617427129417e+00} *$ var_x1)) +$ ({low = -9.20775312447659111115e+00; high = -9.20775312447658933479e+00} *$ var_x2)) +$ ({low = -4.81086242805027186620e+00; high = -4.81086242805027097802e+00} *$ var_x3)) +$ ({low = -5.85677127289484378281e+00; high = -5.85677127289484289463e+00} *$ var_x4)) +$ ({low = 2.29526913412489674826e+00; high = 2.29526913412489719235e+00} *$ var_x5)))))) *$ floor_power2_I((((({low = -9.07137498758308424840e+00; high = -9.07137498758308247204e+00} *$ var_x0) +$ ({low = 4.30908852617427040599e+00; high = 4.30908852617427129417e+00} *$ var_x1)) +$ ({low = -9.20775312447659111115e+00; high = -9.20775312447658933479e+00} *$ var_x2)) +$ {low = -2.67428285883867128289e-06; high = 2.67428285883867128289e-06})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.80481450848322576069e-06; high = 9.80481450848322576069e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((({low = -9.07137498758308424840e+00; high = -9.07137498758308247204e+00} *$ var_x0) +$ ({low = 4.30908852617427040599e+00; high = 4.30908852617427129417e+00} *$ var_x1)) +$ ({low = -9.20775312447659111115e+00; high = -9.20775312447658933479e+00} *$ var_x2)) +$ ({low = -4.81086242805027186620e+00; high = -4.81086242805027097802e+00} *$ var_x3)) +$ ({low = -5.85677127289484378281e+00; high = -5.85677127289484289463e+00} *$ var_x4)) +$ ({low = 2.29526913412489674826e+00; high = 2.29526913412489719235e+00} *$ var_x5)))))) *$ ({low = -4.81086242805027186620e+00; high = -4.81086242805027097802e+00} *$ floor_power2_I(var_x3)))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.80481450848322576069e-06; high = 9.80481450848322576069e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((({low = -9.07137498758308424840e+00; high = -9.07137498758308247204e+00} *$ var_x0) +$ ({low = 4.30908852617427040599e+00; high = 4.30908852617427129417e+00} *$ var_x1)) +$ ({low = -9.20775312447659111115e+00; high = -9.20775312447658933479e+00} *$ var_x2)) +$ ({low = -4.81086242805027186620e+00; high = -4.81086242805027097802e+00} *$ var_x3)) +$ ({low = -5.85677127289484378281e+00; high = -5.85677127289484289463e+00} *$ var_x4)) +$ ({low = 2.29526913412489674826e+00; high = 2.29526913412489719235e+00} *$ var_x5)))))) *$ floor_power2_I((({low = -4.81086242805027186620e+00; high = -4.81086242805027097802e+00} *$ var_x3) +$ {low = -2.56523335884441731633e-07; high = 2.56523335884441731633e-07})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.80481450848322576069e-06; high = 9.80481450848322576069e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((({low = -9.07137498758308424840e+00; high = -9.07137498758308247204e+00} *$ var_x0) +$ ({low = 4.30908852617427040599e+00; high = 4.30908852617427129417e+00} *$ var_x1)) +$ ({low = -9.20775312447659111115e+00; high = -9.20775312447658933479e+00} *$ var_x2)) +$ ({low = -4.81086242805027186620e+00; high = -4.81086242805027097802e+00} *$ var_x3)) +$ ({low = -5.85677127289484378281e+00; high = -5.85677127289484289463e+00} *$ var_x4)) +$ ({low = 2.29526913412489674826e+00; high = 2.29526913412489719235e+00} *$ var_x5)))))) *$ floor_power2_I(((((({low = -9.07137498758308424840e+00; high = -9.07137498758308247204e+00} *$ var_x0) +$ ({low = 4.30908852617427040599e+00; high = 4.30908852617427129417e+00} *$ var_x1)) +$ ({low = -9.20775312447659111115e+00; high = -9.20775312447658933479e+00} *$ var_x2)) +$ ({low = -4.81086242805027186620e+00; high = -4.81086242805027097802e+00} *$ var_x3)) +$ {low = -4.12289909023092641450e-06; high = 4.12289909023092641450e-06})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.80481450848322576069e-06; high = 9.80481450848322576069e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((({low = -9.07137498758308424840e+00; high = -9.07137498758308247204e+00} *$ var_x0) +$ ({low = 4.30908852617427040599e+00; high = 4.30908852617427129417e+00} *$ var_x1)) +$ ({low = -9.20775312447659111115e+00; high = -9.20775312447658933479e+00} *$ var_x2)) +$ ({low = -4.81086242805027186620e+00; high = -4.81086242805027097802e+00} *$ var_x3)) +$ ({low = -5.85677127289484378281e+00; high = -5.85677127289484289463e+00} *$ var_x4)) +$ ({low = 2.29526913412489674826e+00; high = 2.29526913412489719235e+00} *$ var_x5)))))) *$ ({low = -5.85677127289484378281e+00; high = -5.85677127289484289463e+00} *$ floor_power2_I(var_x4)))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.80481450848322576069e-06; high = 9.80481450848322576069e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((({low = -9.07137498758308424840e+00; high = -9.07137498758308247204e+00} *$ var_x0) +$ ({low = 4.30908852617427040599e+00; high = 4.30908852617427129417e+00} *$ var_x1)) +$ ({low = -9.20775312447659111115e+00; high = -9.20775312447658933479e+00} *$ var_x2)) +$ ({low = -4.81086242805027186620e+00; high = -4.81086242805027097802e+00} *$ var_x3)) +$ ({low = -5.85677127289484378281e+00; high = -5.85677127289484289463e+00} *$ var_x4)) +$ ({low = 2.29526913412489674826e+00; high = 2.29526913412489719235e+00} *$ var_x5)))))) *$ floor_power2_I((({low = -5.85677127289484378281e+00; high = -5.85677127289484289463e+00} *$ var_x4) +$ {low = -3.70766759411157283468e-07; high = 3.70766759411157283468e-07})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.80481450848322576069e-06; high = 9.80481450848322576069e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((({low = -9.07137498758308424840e+00; high = -9.07137498758308247204e+00} *$ var_x0) +$ ({low = 4.30908852617427040599e+00; high = 4.30908852617427129417e+00} *$ var_x1)) +$ ({low = -9.20775312447659111115e+00; high = -9.20775312447658933479e+00} *$ var_x2)) +$ ({low = -4.81086242805027186620e+00; high = -4.81086242805027097802e+00} *$ var_x3)) +$ ({low = -5.85677127289484378281e+00; high = -5.85677127289484289463e+00} *$ var_x4)) +$ ({low = 2.29526913412489674826e+00; high = 2.29526913412489719235e+00} *$ var_x5)))))) *$ floor_power2_I((((((({low = -9.07137498758308424840e+00; high = -9.07137498758308247204e+00} *$ var_x0) +$ ({low = 4.30908852617427040599e+00; high = 4.30908852617427129417e+00} *$ var_x1)) +$ ({low = -9.20775312447659111115e+00; high = -9.20775312447658933479e+00} *$ var_x2)) +$ ({low = -4.81086242805027186620e+00; high = -4.81086242805027097802e+00} *$ var_x3)) +$ ({low = -5.85677127289484378281e+00; high = -5.85677127289484289463e+00} *$ var_x4)) +$ {low = -5.68575874514989730970e-06; high = 5.68575874514989730970e-06})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.80481450848322576069e-06; high = 9.80481450848322576069e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((({low = -9.07137498758308424840e+00; high = -9.07137498758308247204e+00} *$ var_x0) +$ ({low = 4.30908852617427040599e+00; high = 4.30908852617427129417e+00} *$ var_x1)) +$ ({low = -9.20775312447659111115e+00; high = -9.20775312447658933479e+00} *$ var_x2)) +$ ({low = -4.81086242805027186620e+00; high = -4.81086242805027097802e+00} *$ var_x3)) +$ ({low = -5.85677127289484378281e+00; high = -5.85677127289484289463e+00} *$ var_x4)) +$ ({low = 2.29526913412489674826e+00; high = 2.29526913412489719235e+00} *$ var_x5)))))) *$ ({low = 2.29526913412489674826e+00; high = 2.29526913412489719235e+00} *$ floor_power2_I(var_x5)))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.80481450848322576069e-06; high = 9.80481450848322576069e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((({low = -9.07137498758308424840e+00; high = -9.07137498758308247204e+00} *$ var_x0) +$ ({low = 4.30908852617427040599e+00; high = 4.30908852617427129417e+00} *$ var_x1)) +$ ({low = -9.20775312447659111115e+00; high = -9.20775312447658933479e+00} *$ var_x2)) +$ ({low = -4.81086242805027186620e+00; high = -4.81086242805027097802e+00} *$ var_x3)) +$ ({low = -5.85677127289484378281e+00; high = -5.85677127289484289463e+00} *$ var_x4)) +$ ({low = 2.29526913412489674826e+00; high = 2.29526913412489719235e+00} *$ var_x5)))))) *$ floor_power2_I((({low = 2.29526913412489674826e+00; high = 2.29526913412489719235e+00} *$ var_x5) +$ {low = -1.85149208157546751008e-07; high = 1.85149208157546751008e-07})))) +$ abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.80481450848322576069e-06; high = 9.80481450848322576069e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ (((((({low = -9.07137498758308424840e+00; high = -9.07137498758308247204e+00} *$ var_x0) +$ ({low = 4.30908852617427040599e+00; high = 4.30908852617427129417e+00} *$ var_x1)) +$ ({low = -9.20775312447659111115e+00; high = -9.20775312447658933479e+00} *$ var_x2)) +$ ({low = -4.81086242805027186620e+00; high = -4.81086242805027097802e+00} *$ var_x3)) +$ ({low = -5.85677127289484378281e+00; high = -5.85677127289484289463e+00} *$ var_x4)) +$ ({low = 2.29526913412489674826e+00; high = 2.29526913412489719235e+00} *$ var_x5)))))) *$ floor_power2_I(((((((({low = -9.07137498758308424840e+00; high = -9.07137498758308247204e+00} *$ var_x0) +$ ({low = 4.30908852617427040599e+00; high = 4.30908852617427129417e+00} *$ var_x1)) +$ ({low = -9.20775312447659111115e+00; high = -9.20775312447658933479e+00} *$ var_x2)) +$ ({low = -4.81086242805027186620e+00; high = -4.81086242805027097802e+00} *$ var_x3)) +$ ({low = -5.85677127289484378281e+00; high = -5.85677127289484289463e+00} *$ var_x4)) +$ ({low = 2.29526913412489674826e+00; high = 2.29526913412489719235e+00} *$ var_x5)) +$ {low = -7.89746587567072576069e-06; high = 7.89746587567072576069e-06})))))))))))))))))))))

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
