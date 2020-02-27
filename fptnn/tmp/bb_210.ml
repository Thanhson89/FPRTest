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
(abs_I((((((((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.86971185288544836122e-06; high = 9.86971185288544836122e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = 4.10332283324026292348e+00; high = 4.10332283324026381166e+00} *$ var_x0) +$ ({low = 8.04864344884228799515e+00; high = 8.04864344884228977151e+00} *$ var_x1)) +$ ({low = 4.84480845772058188459e+00; high = 4.84480845772058277277e+00} *$ var_x2)) +$ ({low = -6.88858708674356390311e-01; high = -6.88858708674356279289e-01} *$ var_x3)) +$ ({low = 5.54916465861885921385e+00; high = 5.54916465861886010202e+00} *$ var_x4)) +$ ({low = 4.32528384917743213833e+00; high = 4.32528384917743302651e+00} *$ var_x5)) +$ ({low = 6.11531202718899180582e+00; high = 6.11531202718899269399e+00} *$ var_x6)))))) *$ (var_x0 *$ {low = -2.50899612775219216232e+00; high = -2.50899612775219171823e+00})) +$ (({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.86971185288544836122e-06; high = 9.86971185288544836122e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = 4.10332283324026292348e+00; high = 4.10332283324026381166e+00} *$ var_x0) +$ ({low = 8.04864344884228799515e+00; high = 8.04864344884228977151e+00} *$ var_x1)) +$ ({low = 4.84480845772058188459e+00; high = 4.84480845772058277277e+00} *$ var_x2)) +$ ({low = -6.88858708674356390311e-01; high = -6.88858708674356279289e-01} *$ var_x3)) +$ ({low = 5.54916465861885921385e+00; high = 5.54916465861886010202e+00} *$ var_x4)) +$ ({low = 4.32528384917743213833e+00; high = 4.32528384917743302651e+00} *$ var_x5)) +$ ({low = 6.11531202718899180582e+00; high = 6.11531202718899269399e+00} *$ var_x6)))))) *$ (var_x1 *$ {low = 5.64821201571020736765e+00; high = 5.64821201571020825583e+00}))) +$ (({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.86971185288544836122e-06; high = 9.86971185288544836122e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = 4.10332283324026292348e+00; high = 4.10332283324026381166e+00} *$ var_x0) +$ ({low = 8.04864344884228799515e+00; high = 8.04864344884228977151e+00} *$ var_x1)) +$ ({low = 4.84480845772058188459e+00; high = 4.84480845772058277277e+00} *$ var_x2)) +$ ({low = -6.88858708674356390311e-01; high = -6.88858708674356279289e-01} *$ var_x3)) +$ ({low = 5.54916465861885921385e+00; high = 5.54916465861886010202e+00} *$ var_x4)) +$ ({low = 4.32528384917743213833e+00; high = 4.32528384917743302651e+00} *$ var_x5)) +$ ({low = 6.11531202718899180582e+00; high = 6.11531202718899269399e+00} *$ var_x6)))))) *$ (var_x2 *$ {low = -2.02619492814028800964e+00; high = -2.02619492814028756555e+00}))) +$ (({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.86971185288544836122e-06; high = 9.86971185288544836122e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = 4.10332283324026292348e+00; high = 4.10332283324026381166e+00} *$ var_x0) +$ ({low = 8.04864344884228799515e+00; high = 8.04864344884228977151e+00} *$ var_x1)) +$ ({low = 4.84480845772058188459e+00; high = 4.84480845772058277277e+00} *$ var_x2)) +$ ({low = -6.88858708674356390311e-01; high = -6.88858708674356279289e-01} *$ var_x3)) +$ ({low = 5.54916465861885921385e+00; high = 5.54916465861886010202e+00} *$ var_x4)) +$ ({low = 4.32528384917743213833e+00; high = 4.32528384917743302651e+00} *$ var_x5)) +$ ({low = 6.11531202718899180582e+00; high = 6.11531202718899269399e+00} *$ var_x6)))))) *$ (var_x3 *$ {low = -3.48910749306060807839e-01; high = -3.48910749306060752328e-01}))) +$ (({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.86971185288544836122e-06; high = 9.86971185288544836122e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = 4.10332283324026292348e+00; high = 4.10332283324026381166e+00} *$ var_x0) +$ ({low = 8.04864344884228799515e+00; high = 8.04864344884228977151e+00} *$ var_x1)) +$ ({low = 4.84480845772058188459e+00; high = 4.84480845772058277277e+00} *$ var_x2)) +$ ({low = -6.88858708674356390311e-01; high = -6.88858708674356279289e-01} *$ var_x3)) +$ ({low = 5.54916465861885921385e+00; high = 5.54916465861886010202e+00} *$ var_x4)) +$ ({low = 4.32528384917743213833e+00; high = 4.32528384917743302651e+00} *$ var_x5)) +$ ({low = 6.11531202718899180582e+00; high = 6.11531202718899269399e+00} *$ var_x6)))))) *$ (var_x4 *$ {low = -1.90278512410624012219e+00; high = -1.90278512410623990014e+00}))) +$ (({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.86971185288544836122e-06; high = 9.86971185288544836122e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = 4.10332283324026292348e+00; high = 4.10332283324026381166e+00} *$ var_x0) +$ ({low = 8.04864344884228799515e+00; high = 8.04864344884228977151e+00} *$ var_x1)) +$ ({low = 4.84480845772058188459e+00; high = 4.84480845772058277277e+00} *$ var_x2)) +$ ({low = -6.88858708674356390311e-01; high = -6.88858708674356279289e-01} *$ var_x3)) +$ ({low = 5.54916465861885921385e+00; high = 5.54916465861886010202e+00} *$ var_x4)) +$ ({low = 4.32528384917743213833e+00; high = 4.32528384917743302651e+00} *$ var_x5)) +$ ({low = 6.11531202718899180582e+00; high = 6.11531202718899269399e+00} *$ var_x6)))))) *$ (var_x5 *$ {low = -2.60103878423347234516e+00; high = -2.60103878423347190108e+00}))) +$ (({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.86971185288544836122e-06; high = 9.86971185288544836122e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = 4.10332283324026292348e+00; high = 4.10332283324026381166e+00} *$ var_x0) +$ ({low = 8.04864344884228799515e+00; high = 8.04864344884228977151e+00} *$ var_x1)) +$ ({low = 4.84480845772058188459e+00; high = 4.84480845772058277277e+00} *$ var_x2)) +$ ({low = -6.88858708674356390311e-01; high = -6.88858708674356279289e-01} *$ var_x3)) +$ ({low = 5.54916465861885921385e+00; high = 5.54916465861886010202e+00} *$ var_x4)) +$ ({low = 4.32528384917743213833e+00; high = 4.32528384917743302651e+00} *$ var_x5)) +$ ({low = 6.11531202718899180582e+00; high = 6.11531202718899269399e+00} *$ var_x6)))))) *$ (var_x6 *$ {low = -1.21245240839372803165e+00; high = -1.21245240839372780961e+00})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.86971185288544836122e-06; high = 9.86971185288544836122e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = 4.10332283324026292348e+00; high = 4.10332283324026381166e+00} *$ var_x0) +$ ({low = 8.04864344884228799515e+00; high = 8.04864344884228977151e+00} *$ var_x1)) +$ ({low = 4.84480845772058188459e+00; high = 4.84480845772058277277e+00} *$ var_x2)) +$ ({low = -6.88858708674356390311e-01; high = -6.88858708674356279289e-01} *$ var_x3)) +$ ({low = 5.54916465861885921385e+00; high = 5.54916465861886010202e+00} *$ var_x4)) +$ ({low = 4.32528384917743213833e+00; high = 4.32528384917743302651e+00} *$ var_x5)) +$ ({low = 6.11531202718899180582e+00; high = 6.11531202718899269399e+00} *$ var_x6)))))) *$ ({low = 4.10332283324026292348e+00; high = 4.10332283324026381166e+00} *$ floor_power2_I(var_x0)))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.86971185288544836122e-06; high = 9.86971185288544836122e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = 4.10332283324026292348e+00; high = 4.10332283324026381166e+00} *$ var_x0) +$ ({low = 8.04864344884228799515e+00; high = 8.04864344884228977151e+00} *$ var_x1)) +$ ({low = 4.84480845772058188459e+00; high = 4.84480845772058277277e+00} *$ var_x2)) +$ ({low = -6.88858708674356390311e-01; high = -6.88858708674356279289e-01} *$ var_x3)) +$ ({low = 5.54916465861885921385e+00; high = 5.54916465861886010202e+00} *$ var_x4)) +$ ({low = 4.32528384917743213833e+00; high = 4.32528384917743302651e+00} *$ var_x5)) +$ ({low = 6.11531202718899180582e+00; high = 6.11531202718899269399e+00} *$ var_x6)))))) *$ floor_power2_I((({low = 4.10332283324026292348e+00; high = 4.10332283324026381166e+00} *$ var_x0) +$ {low = -2.71836377331390117118e-07; high = 2.71836377331390117118e-07})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.86971185288544836122e-06; high = 9.86971185288544836122e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = 4.10332283324026292348e+00; high = 4.10332283324026381166e+00} *$ var_x0) +$ ({low = 8.04864344884228799515e+00; high = 8.04864344884228977151e+00} *$ var_x1)) +$ ({low = 4.84480845772058188459e+00; high = 4.84480845772058277277e+00} *$ var_x2)) +$ ({low = -6.88858708674356390311e-01; high = -6.88858708674356279289e-01} *$ var_x3)) +$ ({low = 5.54916465861885921385e+00; high = 5.54916465861886010202e+00} *$ var_x4)) +$ ({low = 4.32528384917743213833e+00; high = 4.32528384917743302651e+00} *$ var_x5)) +$ ({low = 6.11531202718899180582e+00; high = 6.11531202718899269399e+00} *$ var_x6)))))) *$ ({low = 8.04864344884228799515e+00; high = 8.04864344884228977151e+00} *$ floor_power2_I(var_x1)))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.86971185288544836122e-06; high = 9.86971185288544836122e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = 4.10332283324026292348e+00; high = 4.10332283324026381166e+00} *$ var_x0) +$ ({low = 8.04864344884228799515e+00; high = 8.04864344884228977151e+00} *$ var_x1)) +$ ({low = 4.84480845772058188459e+00; high = 4.84480845772058277277e+00} *$ var_x2)) +$ ({low = -6.88858708674356390311e-01; high = -6.88858708674356279289e-01} *$ var_x3)) +$ ({low = 5.54916465861885921385e+00; high = 5.54916465861886010202e+00} *$ var_x4)) +$ ({low = 4.32528384917743213833e+00; high = 4.32528384917743302651e+00} *$ var_x5)) +$ ({low = 6.11531202718899180582e+00; high = 6.11531202718899269399e+00} *$ var_x6)))))) *$ floor_power2_I((({low = 8.04864344884228799515e+00; high = 8.04864344884228977151e+00} *$ var_x1) +$ {low = -5.76527947691749949560e-07; high = 5.76527947691749949560e-07})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.86971185288544836122e-06; high = 9.86971185288544836122e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = 4.10332283324026292348e+00; high = 4.10332283324026381166e+00} *$ var_x0) +$ ({low = 8.04864344884228799515e+00; high = 8.04864344884228977151e+00} *$ var_x1)) +$ ({low = 4.84480845772058188459e+00; high = 4.84480845772058277277e+00} *$ var_x2)) +$ ({low = -6.88858708674356390311e-01; high = -6.88858708674356279289e-01} *$ var_x3)) +$ ({low = 5.54916465861885921385e+00; high = 5.54916465861886010202e+00} *$ var_x4)) +$ ({low = 4.32528384917743213833e+00; high = 4.32528384917743302651e+00} *$ var_x5)) +$ ({low = 6.11531202718899180582e+00; high = 6.11531202718899269399e+00} *$ var_x6)))))) *$ floor_power2_I(((({low = 4.10332283324026292348e+00; high = 4.10332283324026381166e+00} *$ var_x0) +$ ({low = 8.04864344884228799515e+00; high = 8.04864344884228977151e+00} *$ var_x1)) +$ {low = -1.56362006232782809607e-06; high = 1.56362006232782809607e-06})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.86971185288544836122e-06; high = 9.86971185288544836122e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = 4.10332283324026292348e+00; high = 4.10332283324026381166e+00} *$ var_x0) +$ ({low = 8.04864344884228799515e+00; high = 8.04864344884228977151e+00} *$ var_x1)) +$ ({low = 4.84480845772058188459e+00; high = 4.84480845772058277277e+00} *$ var_x2)) +$ ({low = -6.88858708674356390311e-01; high = -6.88858708674356279289e-01} *$ var_x3)) +$ ({low = 5.54916465861885921385e+00; high = 5.54916465861886010202e+00} *$ var_x4)) +$ ({low = 4.32528384917743213833e+00; high = 4.32528384917743302651e+00} *$ var_x5)) +$ ({low = 6.11531202718899180582e+00; high = 6.11531202718899269399e+00} *$ var_x6)))))) *$ ({low = 4.84480845772058188459e+00; high = 4.84480845772058277277e+00} *$ floor_power2_I(var_x2)))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.86971185288544836122e-06; high = 9.86971185288544836122e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = 4.10332283324026292348e+00; high = 4.10332283324026381166e+00} *$ var_x0) +$ ({low = 8.04864344884228799515e+00; high = 8.04864344884228977151e+00} *$ var_x1)) +$ ({low = 4.84480845772058188459e+00; high = 4.84480845772058277277e+00} *$ var_x2)) +$ ({low = -6.88858708674356390311e-01; high = -6.88858708674356279289e-01} *$ var_x3)) +$ ({low = 5.54916465861885921385e+00; high = 5.54916465861886010202e+00} *$ var_x4)) +$ ({low = 4.32528384917743213833e+00; high = 4.32528384917743302651e+00} *$ var_x5)) +$ ({low = 6.11531202718899180582e+00; high = 6.11531202718899269399e+00} *$ var_x6)))))) *$ floor_power2_I((({low = 4.84480845772058188459e+00; high = 4.84480845772058277277e+00} *$ var_x2) +$ {low = -2.65157176100366945415e-07; high = 2.65157176100366945415e-07})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.86971185288544836122e-06; high = 9.86971185288544836122e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = 4.10332283324026292348e+00; high = 4.10332283324026381166e+00} *$ var_x0) +$ ({low = 8.04864344884228799515e+00; high = 8.04864344884228977151e+00} *$ var_x1)) +$ ({low = 4.84480845772058188459e+00; high = 4.84480845772058277277e+00} *$ var_x2)) +$ ({low = -6.88858708674356390311e-01; high = -6.88858708674356279289e-01} *$ var_x3)) +$ ({low = 5.54916465861885921385e+00; high = 5.54916465861886010202e+00} *$ var_x4)) +$ ({low = 4.32528384917743213833e+00; high = 4.32528384917743302651e+00} *$ var_x5)) +$ ({low = 6.11531202718899180582e+00; high = 6.11531202718899269399e+00} *$ var_x6)))))) *$ floor_power2_I((((({low = 4.10332283324026292348e+00; high = 4.10332283324026381166e+00} *$ var_x0) +$ ({low = 8.04864344884228799515e+00; high = 8.04864344884228977151e+00} *$ var_x1)) +$ ({low = 4.84480845772058188459e+00; high = 4.84480845772058277277e+00} *$ var_x2)) +$ {low = -2.54403297573288296501e-06; high = 2.54403297573288296501e-06})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.86971185288544836122e-06; high = 9.86971185288544836122e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = 4.10332283324026292348e+00; high = 4.10332283324026381166e+00} *$ var_x0) +$ ({low = 8.04864344884228799515e+00; high = 8.04864344884228977151e+00} *$ var_x1)) +$ ({low = 4.84480845772058188459e+00; high = 4.84480845772058277277e+00} *$ var_x2)) +$ ({low = -6.88858708674356390311e-01; high = -6.88858708674356279289e-01} *$ var_x3)) +$ ({low = 5.54916465861885921385e+00; high = 5.54916465861886010202e+00} *$ var_x4)) +$ ({low = 4.32528384917743213833e+00; high = 4.32528384917743302651e+00} *$ var_x5)) +$ ({low = 6.11531202718899180582e+00; high = 6.11531202718899269399e+00} *$ var_x6)))))) *$ ({low = -6.88858708674356390311e-01; high = -6.88858708674356279289e-01} *$ floor_power2_I(var_x3)))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.86971185288544836122e-06; high = 9.86971185288544836122e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = 4.10332283324026292348e+00; high = 4.10332283324026381166e+00} *$ var_x0) +$ ({low = 8.04864344884228799515e+00; high = 8.04864344884228977151e+00} *$ var_x1)) +$ ({low = 4.84480845772058188459e+00; high = 4.84480845772058277277e+00} *$ var_x2)) +$ ({low = -6.88858708674356390311e-01; high = -6.88858708674356279289e-01} *$ var_x3)) +$ ({low = 5.54916465861885921385e+00; high = 5.54916465861886010202e+00} *$ var_x4)) +$ ({low = 4.32528384917743213833e+00; high = 4.32528384917743302651e+00} *$ var_x5)) +$ ({low = 6.11531202718899180582e+00; high = 6.11531202718899269399e+00} *$ var_x6)))))) *$ floor_power2_I((({low = -6.88858708674356390311e-01; high = -6.88858708674356279289e-01} *$ var_x3) +$ {low = -4.13262912059777786435e-08; high = 4.13262912059777786435e-08})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.86971185288544836122e-06; high = 9.86971185288544836122e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = 4.10332283324026292348e+00; high = 4.10332283324026381166e+00} *$ var_x0) +$ ({low = 8.04864344884228799515e+00; high = 8.04864344884228977151e+00} *$ var_x1)) +$ ({low = 4.84480845772058188459e+00; high = 4.84480845772058277277e+00} *$ var_x2)) +$ ({low = -6.88858708674356390311e-01; high = -6.88858708674356279289e-01} *$ var_x3)) +$ ({low = 5.54916465861885921385e+00; high = 5.54916465861886010202e+00} *$ var_x4)) +$ ({low = 4.32528384917743213833e+00; high = 4.32528384917743302651e+00} *$ var_x5)) +$ ({low = 6.11531202718899180582e+00; high = 6.11531202718899269399e+00} *$ var_x6)))))) *$ floor_power2_I(((((({low = 4.10332283324026292348e+00; high = 4.10332283324026381166e+00} *$ var_x0) +$ ({low = 8.04864344884228799515e+00; high = 8.04864344884228977151e+00} *$ var_x1)) +$ ({low = 4.84480845772058188459e+00; high = 4.84480845772058277277e+00} *$ var_x2)) +$ ({low = -6.88858708674356390311e-01; high = -6.88858708674356279289e-01} *$ var_x3)) +$ {low = -3.56883590573280604953e-06; high = 3.56883590573280604953e-06})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.86971185288544836122e-06; high = 9.86971185288544836122e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = 4.10332283324026292348e+00; high = 4.10332283324026381166e+00} *$ var_x0) +$ ({low = 8.04864344884228799515e+00; high = 8.04864344884228977151e+00} *$ var_x1)) +$ ({low = 4.84480845772058188459e+00; high = 4.84480845772058277277e+00} *$ var_x2)) +$ ({low = -6.88858708674356390311e-01; high = -6.88858708674356279289e-01} *$ var_x3)) +$ ({low = 5.54916465861885921385e+00; high = 5.54916465861886010202e+00} *$ var_x4)) +$ ({low = 4.32528384917743213833e+00; high = 4.32528384917743302651e+00} *$ var_x5)) +$ ({low = 6.11531202718899180582e+00; high = 6.11531202718899269399e+00} *$ var_x6)))))) *$ ({low = 5.54916465861885921385e+00; high = 5.54916465861886010202e+00} *$ floor_power2_I(var_x4)))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.86971185288544836122e-06; high = 9.86971185288544836122e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = 4.10332283324026292348e+00; high = 4.10332283324026381166e+00} *$ var_x0) +$ ({low = 8.04864344884228799515e+00; high = 8.04864344884228977151e+00} *$ var_x1)) +$ ({low = 4.84480845772058188459e+00; high = 4.84480845772058277277e+00} *$ var_x2)) +$ ({low = -6.88858708674356390311e-01; high = -6.88858708674356279289e-01} *$ var_x3)) +$ ({low = 5.54916465861885921385e+00; high = 5.54916465861886010202e+00} *$ var_x4)) +$ ({low = 4.32528384917743213833e+00; high = 4.32528384917743302651e+00} *$ var_x5)) +$ ({low = 6.11531202718899180582e+00; high = 6.11531202718899269399e+00} *$ var_x6)))))) *$ floor_power2_I((({low = 5.54916465861885921385e+00; high = 5.54916465861886010202e+00} *$ var_x4) +$ {low = -2.78792828924839870298e-07; high = 2.78792828924839870298e-07})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.86971185288544836122e-06; high = 9.86971185288544836122e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = 4.10332283324026292348e+00; high = 4.10332283324026381166e+00} *$ var_x0) +$ ({low = 8.04864344884228799515e+00; high = 8.04864344884228977151e+00} *$ var_x1)) +$ ({low = 4.84480845772058188459e+00; high = 4.84480845772058277277e+00} *$ var_x2)) +$ ({low = -6.88858708674356390311e-01; high = -6.88858708674356279289e-01} *$ var_x3)) +$ ({low = 5.54916465861885921385e+00; high = 5.54916465861886010202e+00} *$ var_x4)) +$ ({low = 4.32528384917743213833e+00; high = 4.32528384917743302651e+00} *$ var_x5)) +$ ({low = 6.11531202718899180582e+00; high = 6.11531202718899269399e+00} *$ var_x6)))))) *$ floor_power2_I((((((({low = 4.10332283324026292348e+00; high = 4.10332283324026381166e+00} *$ var_x0) +$ ({low = 8.04864344884228799515e+00; high = 8.04864344884228977151e+00} *$ var_x1)) +$ ({low = 4.84480845772058188459e+00; high = 4.84480845772058277277e+00} *$ var_x2)) +$ ({low = -6.88858708674356390311e-01; high = -6.88858708674356279289e-01} *$ var_x3)) +$ ({low = 5.54916465861885921385e+00; high = 5.54916465861886010202e+00} *$ var_x4)) +$ {low = -5.03972163016546037859e-06; high = 5.03972163016546037859e-06})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.86971185288544836122e-06; high = 9.86971185288544836122e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = 4.10332283324026292348e+00; high = 4.10332283324026381166e+00} *$ var_x0) +$ ({low = 8.04864344884228799515e+00; high = 8.04864344884228977151e+00} *$ var_x1)) +$ ({low = 4.84480845772058188459e+00; high = 4.84480845772058277277e+00} *$ var_x2)) +$ ({low = -6.88858708674356390311e-01; high = -6.88858708674356279289e-01} *$ var_x3)) +$ ({low = 5.54916465861885921385e+00; high = 5.54916465861886010202e+00} *$ var_x4)) +$ ({low = 4.32528384917743213833e+00; high = 4.32528384917743302651e+00} *$ var_x5)) +$ ({low = 6.11531202718899180582e+00; high = 6.11531202718899269399e+00} *$ var_x6)))))) *$ ({low = 4.32528384917743213833e+00; high = 4.32528384917743302651e+00} *$ floor_power2_I(var_x5)))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.86971185288544836122e-06; high = 9.86971185288544836122e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = 4.10332283324026292348e+00; high = 4.10332283324026381166e+00} *$ var_x0) +$ ({low = 8.04864344884228799515e+00; high = 8.04864344884228977151e+00} *$ var_x1)) +$ ({low = 4.84480845772058188459e+00; high = 4.84480845772058277277e+00} *$ var_x2)) +$ ({low = -6.88858708674356390311e-01; high = -6.88858708674356279289e-01} *$ var_x3)) +$ ({low = 5.54916465861885921385e+00; high = 5.54916465861886010202e+00} *$ var_x4)) +$ ({low = 4.32528384917743213833e+00; high = 4.32528384917743302651e+00} *$ var_x5)) +$ ({low = 6.11531202718899180582e+00; high = 6.11531202718899269399e+00} *$ var_x6)))))) *$ floor_power2_I((({low = 4.32528384917743213833e+00; high = 4.32528384917743302651e+00} *$ var_x5) +$ {low = -2.83937501093100647919e-07; high = 2.83937501093100647919e-07})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.86971185288544836122e-06; high = 9.86971185288544836122e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = 4.10332283324026292348e+00; high = 4.10332283324026381166e+00} *$ var_x0) +$ ({low = 8.04864344884228799515e+00; high = 8.04864344884228977151e+00} *$ var_x1)) +$ ({low = 4.84480845772058188459e+00; high = 4.84480845772058277277e+00} *$ var_x2)) +$ ({low = -6.88858708674356390311e-01; high = -6.88858708674356279289e-01} *$ var_x3)) +$ ({low = 5.54916465861885921385e+00; high = 5.54916465861886010202e+00} *$ var_x4)) +$ ({low = 4.32528384917743213833e+00; high = 4.32528384917743302651e+00} *$ var_x5)) +$ ({low = 6.11531202718899180582e+00; high = 6.11531202718899269399e+00} *$ var_x6)))))) *$ floor_power2_I(((((((({low = 4.10332283324026292348e+00; high = 4.10332283324026381166e+00} *$ var_x0) +$ ({low = 8.04864344884228799515e+00; high = 8.04864344884228977151e+00} *$ var_x1)) +$ ({low = 4.84480845772058188459e+00; high = 4.84480845772058277277e+00} *$ var_x2)) +$ ({low = -6.88858708674356390311e-01; high = -6.88858708674356279289e-01} *$ var_x3)) +$ ({low = 5.54916465861885921385e+00; high = 5.54916465861886010202e+00} *$ var_x4)) +$ ({low = 4.32528384917743213833e+00; high = 4.32528384917743302651e+00} *$ var_x5)) +$ {low = -6.51575202676637400297e-06; high = 6.51575202676637400297e-06})))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.86971185288544836122e-06; high = 9.86971185288544836122e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = 4.10332283324026292348e+00; high = 4.10332283324026381166e+00} *$ var_x0) +$ ({low = 8.04864344884228799515e+00; high = 8.04864344884228977151e+00} *$ var_x1)) +$ ({low = 4.84480845772058188459e+00; high = 4.84480845772058277277e+00} *$ var_x2)) +$ ({low = -6.88858708674356390311e-01; high = -6.88858708674356279289e-01} *$ var_x3)) +$ ({low = 5.54916465861885921385e+00; high = 5.54916465861886010202e+00} *$ var_x4)) +$ ({low = 4.32528384917743213833e+00; high = 4.32528384917743302651e+00} *$ var_x5)) +$ ({low = 6.11531202718899180582e+00; high = 6.11531202718899269399e+00} *$ var_x6)))))) *$ ({low = 6.11531202718899180582e+00; high = 6.11531202718899269399e+00} *$ floor_power2_I(var_x6)))) +$ (abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.86971185288544836122e-06; high = 9.86971185288544836122e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = 4.10332283324026292348e+00; high = 4.10332283324026381166e+00} *$ var_x0) +$ ({low = 8.04864344884228799515e+00; high = 8.04864344884228977151e+00} *$ var_x1)) +$ ({low = 4.84480845772058188459e+00; high = 4.84480845772058277277e+00} *$ var_x2)) +$ ({low = -6.88858708674356390311e-01; high = -6.88858708674356279289e-01} *$ var_x3)) +$ ({low = 5.54916465861885921385e+00; high = 5.54916465861886010202e+00} *$ var_x4)) +$ ({low = 4.32528384917743213833e+00; high = 4.32528384917743302651e+00} *$ var_x5)) +$ ({low = 6.11531202718899180582e+00; high = 6.11531202718899269399e+00} *$ var_x6)))))) *$ floor_power2_I((({low = 6.11531202718899180582e+00; high = 6.11531202718899269399e+00} *$ var_x6) +$ {low = -2.54518297798760058310e-07; high = 2.54518297798760058310e-07})))) +$ abs_I((({low = 5.00000000000000000000e-01; high = 5.00000000000000000000e-01} *$ ({low = 1.00000000000000000000e+00; high = 1.00000000000000000000e+00} -$ abs_err_I({low = -9.86971185288544836122e-06; high = 9.86971185288544836122e-06}, ({low = 0.00000000000000000000e+00; high = 0.00000000000000000000e+00} -$ ((((((({low = 4.10332283324026292348e+00; high = 4.10332283324026381166e+00} *$ var_x0) +$ ({low = 8.04864344884228799515e+00; high = 8.04864344884228977151e+00} *$ var_x1)) +$ ({low = 4.84480845772058188459e+00; high = 4.84480845772058277277e+00} *$ var_x2)) +$ ({low = -6.88858708674356390311e-01; high = -6.88858708674356279289e-01} *$ var_x3)) +$ ({low = 5.54916465861885921385e+00; high = 5.54916465861886010202e+00} *$ var_x4)) +$ ({low = 4.32528384917743213833e+00; high = 4.32528384917743302651e+00} *$ var_x5)) +$ ({low = 6.11531202718899180582e+00; high = 6.11531202718899269399e+00} *$ var_x6)))))) *$ floor_power2_I((((((((({low = 4.10332283324026292348e+00; high = 4.10332283324026381166e+00} *$ var_x0) +$ ({low = 8.04864344884228799515e+00; high = 8.04864344884228977151e+00} *$ var_x1)) +$ ({low = 4.84480845772058188459e+00; high = 4.84480845772058277277e+00} *$ var_x2)) +$ ({low = -6.88858708674356390311e-01; high = -6.88858708674356279289e-01} *$ var_x3)) +$ ({low = 5.54916465861885921385e+00; high = 5.54916465861886010202e+00} *$ var_x4)) +$ ({low = 4.32528384917743213833e+00; high = 4.32528384917743302651e+00} *$ var_x5)) +$ ({low = 6.11531202718899180582e+00; high = 6.11531202718899269399e+00} *$ var_x6)) +$ {low = -7.96236322007294836122e-06; high = 7.96236322007294836122e-06}))))))))))))))))))))))))

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
