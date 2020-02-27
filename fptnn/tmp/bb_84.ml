open Interval
open Opt_func


let start_interval = Array.init 10 (function
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
(abs_I(((((((((((cos_I((((((((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ ({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3)) +$ ({low = -5.92656660090328202273e+00; high = -5.92656660090328113455e+00} *$ var_x4)) +$ ({low = -8.56663097937564721462e+00; high = -8.56663097937564543827e+00} *$ var_x5)) +$ ({low = 9.12285201627886266351e+00; high = 9.12285201627886443987e+00} *$ var_x6)) +$ ({low = -6.59553467047272512502e+00; high = -6.59553467047272423684e+00} *$ var_x7)) +$ ({low = 8.20624845566163685362e+00; high = 8.20624845566163862998e+00} *$ var_x8)) +$ ({low = -2.03820288306146402135e+00; high = -2.03820288306146357726e+00} *$ var_x9))) *$ (var_x0 *$ {low = 1.95687162707967998720e+00; high = 1.95687162707968020925e+00})) +$ (cos_I((((((((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ ({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3)) +$ ({low = -5.92656660090328202273e+00; high = -5.92656660090328113455e+00} *$ var_x4)) +$ ({low = -8.56663097937564721462e+00; high = -8.56663097937564543827e+00} *$ var_x5)) +$ ({low = 9.12285201627886266351e+00; high = 9.12285201627886443987e+00} *$ var_x6)) +$ ({low = -6.59553467047272512502e+00; high = -6.59553467047272423684e+00} *$ var_x7)) +$ ({low = 8.20624845566163685362e+00; high = 8.20624845566163862998e+00} *$ var_x8)) +$ ({low = -2.03820288306146402135e+00; high = -2.03820288306146357726e+00} *$ var_x9))) *$ (var_x1 *$ {low = 3.27851384451891192384e+00; high = 3.27851384451891236793e+00}))) +$ (cos_I((((((((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ ({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3)) +$ ({low = -5.92656660090328202273e+00; high = -5.92656660090328113455e+00} *$ var_x4)) +$ ({low = -8.56663097937564721462e+00; high = -8.56663097937564543827e+00} *$ var_x5)) +$ ({low = 9.12285201627886266351e+00; high = 9.12285201627886443987e+00} *$ var_x6)) +$ ({low = -6.59553467047272512502e+00; high = -6.59553467047272423684e+00} *$ var_x7)) +$ ({low = 8.20624845566163685362e+00; high = 8.20624845566163862998e+00} *$ var_x8)) +$ ({low = -2.03820288306146402135e+00; high = -2.03820288306146357726e+00} *$ var_x9))) *$ (var_x2 *$ {low = -1.45549362848071694998e+00; high = -1.45549362848071672794e+00}))) +$ (cos_I((((((((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ ({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3)) +$ ({low = -5.92656660090328202273e+00; high = -5.92656660090328113455e+00} *$ var_x4)) +$ ({low = -8.56663097937564721462e+00; high = -8.56663097937564543827e+00} *$ var_x5)) +$ ({low = 9.12285201627886266351e+00; high = 9.12285201627886443987e+00} *$ var_x6)) +$ ({low = -6.59553467047272512502e+00; high = -6.59553467047272423684e+00} *$ var_x7)) +$ ({low = 8.20624845566163685362e+00; high = 8.20624845566163862998e+00} *$ var_x8)) +$ ({low = -2.03820288306146402135e+00; high = -2.03820288306146357726e+00} *$ var_x9))) *$ (var_x3 *$ {low = -1.31489116258304017393e+00; high = -1.31489116258303995188e+00}))) +$ (cos_I((((((((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ ({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3)) +$ ({low = -5.92656660090328202273e+00; high = -5.92656660090328113455e+00} *$ var_x4)) +$ ({low = -8.56663097937564721462e+00; high = -8.56663097937564543827e+00} *$ var_x5)) +$ ({low = 9.12285201627886266351e+00; high = 9.12285201627886443987e+00} *$ var_x6)) +$ ({low = -6.59553467047272512502e+00; high = -6.59553467047272423684e+00} *$ var_x7)) +$ ({low = 8.20624845566163685362e+00; high = 8.20624845566163862998e+00} *$ var_x8)) +$ ({low = -2.03820288306146402135e+00; high = -2.03820288306146357726e+00} *$ var_x9))) *$ (var_x4 *$ {low = -1.74015722291200004498e-03; high = -1.74015722291199982814e-03}))) +$ (cos_I((((((((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ ({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3)) +$ ({low = -5.92656660090328202273e+00; high = -5.92656660090328113455e+00} *$ var_x4)) +$ ({low = -8.56663097937564721462e+00; high = -8.56663097937564543827e+00} *$ var_x5)) +$ ({low = 9.12285201627886266351e+00; high = 9.12285201627886443987e+00} *$ var_x6)) +$ ({low = -6.59553467047272512502e+00; high = -6.59553467047272423684e+00} *$ var_x7)) +$ ({low = 8.20624845566163685362e+00; high = 8.20624845566163862998e+00} *$ var_x8)) +$ ({low = -2.03820288306146402135e+00; high = -2.03820288306146357726e+00} *$ var_x9))) *$ (var_x5 *$ {low = 5.66672322514124715553e+00; high = 5.66672322514124804371e+00}))) +$ (cos_I((((((((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ ({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3)) +$ ({low = -5.92656660090328202273e+00; high = -5.92656660090328113455e+00} *$ var_x4)) +$ ({low = -8.56663097937564721462e+00; high = -8.56663097937564543827e+00} *$ var_x5)) +$ ({low = 9.12285201627886266351e+00; high = 9.12285201627886443987e+00} *$ var_x6)) +$ ({low = -6.59553467047272512502e+00; high = -6.59553467047272423684e+00} *$ var_x7)) +$ ({low = 8.20624845566163685362e+00; high = 8.20624845566163862998e+00} *$ var_x8)) +$ ({low = -2.03820288306146402135e+00; high = -2.03820288306146357726e+00} *$ var_x9))) *$ (var_x6 *$ {low = -5.18685399921459211470e+00; high = -5.18685399921459122652e+00}))) +$ (cos_I((((((((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ ({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3)) +$ ({low = -5.92656660090328202273e+00; high = -5.92656660090328113455e+00} *$ var_x4)) +$ ({low = -8.56663097937564721462e+00; high = -8.56663097937564543827e+00} *$ var_x5)) +$ ({low = 9.12285201627886266351e+00; high = 9.12285201627886443987e+00} *$ var_x6)) +$ ({low = -6.59553467047272512502e+00; high = -6.59553467047272423684e+00} *$ var_x7)) +$ ({low = 8.20624845566163685362e+00; high = 8.20624845566163862998e+00} *$ var_x8)) +$ ({low = -2.03820288306146402135e+00; high = -2.03820288306146357726e+00} *$ var_x9))) *$ (var_x7 *$ {low = 2.19799027056639983968e+00; high = 2.19799027056640028377e+00}))) +$ (cos_I((((((((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ ({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3)) +$ ({low = -5.92656660090328202273e+00; high = -5.92656660090328113455e+00} *$ var_x4)) +$ ({low = -8.56663097937564721462e+00; high = -8.56663097937564543827e+00} *$ var_x5)) +$ ({low = 9.12285201627886266351e+00; high = 9.12285201627886443987e+00} *$ var_x6)) +$ ({low = -6.59553467047272512502e+00; high = -6.59553467047272423684e+00} *$ var_x7)) +$ ({low = 8.20624845566163685362e+00; high = 8.20624845566163862998e+00} *$ var_x8)) +$ ({low = -2.03820288306146402135e+00; high = -2.03820288306146357726e+00} *$ var_x9))) *$ (var_x8 *$ {low = 2.89030170686259157975e+00; high = 2.89030170686259202384e+00}))) +$ (cos_I((((((((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ ({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3)) +$ ({low = -5.92656660090328202273e+00; high = -5.92656660090328113455e+00} *$ var_x4)) +$ ({low = -8.56663097937564721462e+00; high = -8.56663097937564543827e+00} *$ var_x5)) +$ ({low = 9.12285201627886266351e+00; high = 9.12285201627886443987e+00} *$ var_x6)) +$ ({low = -6.59553467047272512502e+00; high = -6.59553467047272423684e+00} *$ var_x7)) +$ ({low = 8.20624845566163685362e+00; high = 8.20624845566163862998e+00} *$ var_x8)) +$ ({low = -2.03820288306146402135e+00; high = -2.03820288306146357726e+00} *$ var_x9))) *$ (var_x9 *$ {low = 1.97905507719577578030e+00; high = 1.97905507719577600234e+00})))) +$ (abs_I((cos_I((((((((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ ({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3)) +$ ({low = -5.92656660090328202273e+00; high = -5.92656660090328113455e+00} *$ var_x4)) +$ ({low = -8.56663097937564721462e+00; high = -8.56663097937564543827e+00} *$ var_x5)) +$ ({low = 9.12285201627886266351e+00; high = 9.12285201627886443987e+00} *$ var_x6)) +$ ({low = -6.59553467047272512502e+00; high = -6.59553467047272423684e+00} *$ var_x7)) +$ ({low = 8.20624845566163685362e+00; high = 8.20624845566163862998e+00} *$ var_x8)) +$ ({low = -2.03820288306146402135e+00; high = -2.03820288306146357726e+00} *$ var_x9))) *$ floor_power2_I((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ {low = -1.16638638203125012472e-07; high = 1.16638638203125012472e-07})))) +$ (abs_I((cos_I((((((((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ ({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3)) +$ ({low = -5.92656660090328202273e+00; high = -5.92656660090328113455e+00} *$ var_x4)) +$ ({low = -8.56663097937564721462e+00; high = -8.56663097937564543827e+00} *$ var_x5)) +$ ({low = 9.12285201627886266351e+00; high = 9.12285201627886443987e+00} *$ var_x6)) +$ ({low = -6.59553467047272512502e+00; high = -6.59553467047272423684e+00} *$ var_x7)) +$ ({low = 8.20624845566163685362e+00; high = 8.20624845566163862998e+00} *$ var_x8)) +$ ({low = -2.03820288306146402135e+00; high = -2.03820288306146357726e+00} *$ var_x9))) *$ floor_power2_I((({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1) +$ {low = -1.95414653093750021930e-07; high = 1.95414653093750021930e-07})))) +$ (abs_I((cos_I((((((((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ ({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3)) +$ ({low = -5.92656660090328202273e+00; high = -5.92656660090328113455e+00} *$ var_x4)) +$ ({low = -8.56663097937564721462e+00; high = -8.56663097937564543827e+00} *$ var_x5)) +$ ({low = 9.12285201627886266351e+00; high = 9.12285201627886443987e+00} *$ var_x6)) +$ ({low = -6.59553467047272512502e+00; high = -6.59553467047272423684e+00} *$ var_x7)) +$ ({low = 8.20624845566163685362e+00; high = 8.20624845566163862998e+00} *$ var_x8)) +$ ({low = -2.03820288306146402135e+00; high = -2.03820288306146357726e+00} *$ var_x9))) *$ floor_power2_I(((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ {low = -6.69681159949218863812e-07; high = 6.69681159949218863812e-07})))) +$ (abs_I((cos_I((((((((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ ({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3)) +$ ({low = -5.92656660090328202273e+00; high = -5.92656660090328113455e+00} *$ var_x4)) +$ ({low = -8.56663097937564721462e+00; high = -8.56663097937564543827e+00} *$ var_x5)) +$ ({low = 9.12285201627886266351e+00; high = 9.12285201627886443987e+00} *$ var_x6)) +$ ({low = -6.59553467047272512502e+00; high = -6.59553467047272423684e+00} *$ var_x7)) +$ ({low = 8.20624845566163685362e+00; high = 8.20624845566163862998e+00} *$ var_x8)) +$ ({low = -2.03820288306146402135e+00; high = -2.03820288306146357726e+00} *$ var_x9))) *$ floor_power2_I((({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2) +$ {low = -8.67541806984375089395e-08; high = 8.67541806984375089395e-08})))) +$ (abs_I((cos_I((((((((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ ({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3)) +$ ({low = -5.92656660090328202273e+00; high = -5.92656660090328113455e+00} *$ var_x4)) +$ ({low = -8.56663097937564721462e+00; high = -8.56663097937564543827e+00} *$ var_x5)) +$ ({low = 9.12285201627886266351e+00; high = 9.12285201627886443987e+00} *$ var_x6)) +$ ({low = -6.59553467047272512502e+00; high = -6.59553467047272423684e+00} *$ var_x7)) +$ ({low = 8.20624845566163685362e+00; high = 8.20624845566163862998e+00} *$ var_x8)) +$ ({low = -2.03820288306146402135e+00; high = -2.03820288306146357726e+00} *$ var_x9))) *$ floor_power2_I((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ {low = -1.35248178840156283451e-06; high = 1.35248178840156283451e-06})))) +$ (abs_I((cos_I((((((((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ ({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3)) +$ ({low = -5.92656660090328202273e+00; high = -5.92656660090328113455e+00} *$ var_x4)) +$ ({low = -8.56663097937564721462e+00; high = -8.56663097937564543827e+00} *$ var_x5)) +$ ({low = 9.12285201627886266351e+00; high = 9.12285201627886443987e+00} *$ var_x6)) +$ ({low = -6.59553467047272512502e+00; high = -6.59553467047272423684e+00} *$ var_x7)) +$ ({low = 8.20624845566163685362e+00; high = 8.20624845566163862998e+00} *$ var_x8)) +$ ({low = -2.03820288306146402135e+00; high = -2.03820288306146357726e+00} *$ var_x9))) *$ floor_power2_I((({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3) +$ {low = -7.83736206640625103669e-08; high = 7.83736206640625103669e-08})))) +$ (abs_I((cos_I((((((((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ ({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3)) +$ ({low = -5.92656660090328202273e+00; high = -5.92656660090328113455e+00} *$ var_x4)) +$ ({low = -8.56663097937564721462e+00; high = -8.56663097937564543827e+00} *$ var_x5)) +$ ({low = 9.12285201627886266351e+00; high = 9.12285201627886443987e+00} *$ var_x6)) +$ ({low = -6.59553467047272512502e+00; high = -6.59553467047272423684e+00} *$ var_x7)) +$ ({low = 8.20624845566163685362e+00; high = 8.20624845566163862998e+00} *$ var_x8)) +$ ({low = -2.03820288306146402135e+00; high = -2.03820288306146357726e+00} *$ var_x9))) *$ floor_power2_I(((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ ({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3)) +$ {low = -2.02690185681953188604e-06; high = 2.02690185681953188604e-06})))) +$ (abs_I((cos_I((((((((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ ({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3)) +$ ({low = -5.92656660090328202273e+00; high = -5.92656660090328113455e+00} *$ var_x4)) +$ ({low = -8.56663097937564721462e+00; high = -8.56663097937564543827e+00} *$ var_x5)) +$ ({low = 9.12285201627886266351e+00; high = 9.12285201627886443987e+00} *$ var_x6)) +$ ({low = -6.59553467047272512502e+00; high = -6.59553467047272423684e+00} *$ var_x7)) +$ ({low = 8.20624845566163685362e+00; high = 8.20624845566163862998e+00} *$ var_x8)) +$ ({low = -2.03820288306146402135e+00; high = -2.03820288306146357726e+00} *$ var_x9))) *$ floor_power2_I((({low = -5.92656660090328202273e+00; high = -5.92656660090328113455e+00} *$ var_x4) +$ {low = -1.03721453125000002681e-10; high = 1.03721453125000002681e-10})))) +$ (abs_I((cos_I((((((((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ ({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3)) +$ ({low = -5.92656660090328202273e+00; high = -5.92656660090328113455e+00} *$ var_x4)) +$ ({low = -8.56663097937564721462e+00; high = -8.56663097937564543827e+00} *$ var_x5)) +$ ({low = 9.12285201627886266351e+00; high = 9.12285201627886443987e+00} *$ var_x6)) +$ ({low = -6.59553467047272512502e+00; high = -6.59553467047272423684e+00} *$ var_x7)) +$ ({low = 8.20624845566163685362e+00; high = 8.20624845566163862998e+00} *$ var_x8)) +$ ({low = -2.03820288306146402135e+00; high = -2.03820288306146357726e+00} *$ var_x9))) *$ floor_power2_I((((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ ({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3)) +$ ({low = -5.92656660090328202273e+00; high = -5.92656660090328113455e+00} *$ var_x4)) +$ {low = -2.74226131557734480214e-06; high = 2.74226131557734480214e-06})))) +$ (abs_I((cos_I((((((((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ ({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3)) +$ ({low = -5.92656660090328202273e+00; high = -5.92656660090328113455e+00} *$ var_x4)) +$ ({low = -8.56663097937564721462e+00; high = -8.56663097937564543827e+00} *$ var_x5)) +$ ({low = 9.12285201627886266351e+00; high = 9.12285201627886443987e+00} *$ var_x6)) +$ ({low = -6.59553467047272512502e+00; high = -6.59553467047272423684e+00} *$ var_x7)) +$ ({low = 8.20624845566163685362e+00; high = 8.20624845566163862998e+00} *$ var_x8)) +$ ({low = -2.03820288306146402135e+00; high = -2.03820288306146357726e+00} *$ var_x9))) *$ floor_power2_I((({low = -8.56663097937564721462e+00; high = -8.56663097937564543827e+00} *$ var_x5) +$ {low = -3.37763024875000002605e-07; high = 3.37763024875000002605e-07})))) +$ (abs_I((cos_I((((((((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ ({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3)) +$ ({low = -5.92656660090328202273e+00; high = -5.92656660090328113455e+00} *$ var_x4)) +$ ({low = -8.56663097937564721462e+00; high = -8.56663097937564543827e+00} *$ var_x5)) +$ ({low = 9.12285201627886266351e+00; high = 9.12285201627886443987e+00} *$ var_x6)) +$ ({low = -6.59553467047272512502e+00; high = -6.59553467047272423684e+00} *$ var_x7)) +$ ({low = 8.20624845566163685362e+00; high = 8.20624845566163862998e+00} *$ var_x8)) +$ ({low = -2.03820288306146402135e+00; high = -2.03820288306146357726e+00} *$ var_x9))) *$ floor_power2_I(((((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ ({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3)) +$ ({low = -5.92656660090328202273e+00; high = -5.92656660090328113455e+00} *$ var_x4)) +$ ({low = -8.56663097937564721462e+00; high = -8.56663097937564543827e+00} *$ var_x5)) +$ {low = -4.51053581506172102236e-06; high = 4.51053581506172102236e-06})))) +$ (abs_I((cos_I((((((((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ ({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3)) +$ ({low = -5.92656660090328202273e+00; high = -5.92656660090328113455e+00} *$ var_x4)) +$ ({low = -8.56663097937564721462e+00; high = -8.56663097937564543827e+00} *$ var_x5)) +$ ({low = 9.12285201627886266351e+00; high = 9.12285201627886443987e+00} *$ var_x6)) +$ ({low = -6.59553467047272512502e+00; high = -6.59553467047272423684e+00} *$ var_x7)) +$ ({low = 8.20624845566163685362e+00; high = 8.20624845566163862998e+00} *$ var_x8)) +$ ({low = -2.03820288306146402135e+00; high = -2.03820288306146357726e+00} *$ var_x9))) *$ floor_power2_I((({low = 9.12285201627886266351e+00; high = 9.12285201627886443987e+00} *$ var_x6) +$ {low = -3.09160590125000006836e-07; high = 3.09160590125000006836e-07})))) +$ (abs_I((cos_I((((((((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ ({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3)) +$ ({low = -5.92656660090328202273e+00; high = -5.92656660090328113455e+00} *$ var_x4)) +$ ({low = -8.56663097937564721462e+00; high = -8.56663097937564543827e+00} *$ var_x5)) +$ ({low = 9.12285201627886266351e+00; high = 9.12285201627886443987e+00} *$ var_x6)) +$ ({low = -6.59553467047272512502e+00; high = -6.59553467047272423684e+00} *$ var_x7)) +$ ({low = 8.20624845566163685362e+00; high = 8.20624845566163862998e+00} *$ var_x8)) +$ ({low = -2.03820288306146402135e+00; high = -2.03820288306146357726e+00} *$ var_x9))) *$ floor_power2_I((((((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ ({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3)) +$ ({low = -5.92656660090328202273e+00; high = -5.92656660090328113455e+00} *$ var_x4)) +$ ({low = -8.56663097937564721462e+00; high = -8.56663097937564543827e+00} *$ var_x5)) +$ ({low = 9.12285201627886266351e+00; high = 9.12285201627886443987e+00} *$ var_x6)) +$ {low = -6.25020787979609682329e-06; high = 6.25020787979609682329e-06})))) +$ (abs_I((cos_I((((((((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ ({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3)) +$ ({low = -5.92656660090328202273e+00; high = -5.92656660090328113455e+00} *$ var_x4)) +$ ({low = -8.56663097937564721462e+00; high = -8.56663097937564543827e+00} *$ var_x5)) +$ ({low = 9.12285201627886266351e+00; high = 9.12285201627886443987e+00} *$ var_x6)) +$ ({low = -6.59553467047272512502e+00; high = -6.59553467047272423684e+00} *$ var_x7)) +$ ({low = 8.20624845566163685362e+00; high = 8.20624845566163862998e+00} *$ var_x8)) +$ ({low = -2.03820288306146402135e+00; high = -2.03820288306146357726e+00} *$ var_x9))) *$ floor_power2_I((({low = -6.59553467047272512502e+00; high = -6.59553467047272423684e+00} *$ var_x7) +$ {low = -1.31010429296875016914e-07; high = 1.31010429296875016914e-07})))) +$ (abs_I((cos_I((((((((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ ({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3)) +$ ({low = -5.92656660090328202273e+00; high = -5.92656660090328113455e+00} *$ var_x4)) +$ ({low = -8.56663097937564721462e+00; high = -8.56663097937564543827e+00} *$ var_x5)) +$ ({low = 9.12285201627886266351e+00; high = 9.12285201627886443987e+00} *$ var_x6)) +$ ({low = -6.59553467047272512502e+00; high = -6.59553467047272423684e+00} *$ var_x7)) +$ ({low = 8.20624845566163685362e+00; high = 8.20624845566163862998e+00} *$ var_x8)) +$ ({low = -2.03820288306146402135e+00; high = -2.03820288306146357726e+00} *$ var_x9))) *$ floor_power2_I(((((((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ ({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3)) +$ ({low = -5.92656660090328202273e+00; high = -5.92656660090328113455e+00} *$ var_x4)) +$ ({low = -8.56663097937564721462e+00; high = -8.56663097937564543827e+00} *$ var_x5)) +$ ({low = 9.12285201627886266351e+00; high = 9.12285201627886443987e+00} *$ var_x6)) +$ ({low = -6.59553467047272512502e+00; high = -6.59553467047272423684e+00} *$ var_x7)) +$ {low = -8.52698552100703561075e-06; high = 8.52698552100703561075e-06})))) +$ (abs_I((cos_I((((((((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ ({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3)) +$ ({low = -5.92656660090328202273e+00; high = -5.92656660090328113455e+00} *$ var_x4)) +$ ({low = -8.56663097937564721462e+00; high = -8.56663097937564543827e+00} *$ var_x5)) +$ ({low = 9.12285201627886266351e+00; high = 9.12285201627886443987e+00} *$ var_x6)) +$ ({low = -6.59553467047272512502e+00; high = -6.59553467047272423684e+00} *$ var_x7)) +$ ({low = 8.20624845566163685362e+00; high = 8.20624845566163862998e+00} *$ var_x8)) +$ ({low = -2.03820288306146402135e+00; high = -2.03820288306146357726e+00} *$ var_x9))) *$ floor_power2_I((({low = 8.20624845566163685362e+00; high = 8.20624845566163862998e+00} *$ var_x8) +$ {low = -1.72275406531250001421e-07; high = 1.72275406531250001421e-07})))) +$ (abs_I((cos_I((((((((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ ({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3)) +$ ({low = -5.92656660090328202273e+00; high = -5.92656660090328113455e+00} *$ var_x4)) +$ ({low = -8.56663097937564721462e+00; high = -8.56663097937564543827e+00} *$ var_x5)) +$ ({low = 9.12285201627886266351e+00; high = 9.12285201627886443987e+00} *$ var_x6)) +$ ({low = -6.59553467047272512502e+00; high = -6.59553467047272423684e+00} *$ var_x7)) +$ ({low = 8.20624845566163685362e+00; high = 8.20624845566163862998e+00} *$ var_x8)) +$ ({low = -2.03820288306146402135e+00; high = -2.03820288306146357726e+00} *$ var_x9))) *$ floor_power2_I((((((((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ ({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3)) +$ ({low = -5.92656660090328202273e+00; high = -5.92656660090328113455e+00} *$ var_x4)) +$ ({low = -8.56663097937564721462e+00; high = -8.56663097937564543827e+00} *$ var_x5)) +$ ({low = 9.12285201627886266351e+00; high = 9.12285201627886443987e+00} *$ var_x6)) +$ ({low = -6.59553467047272512502e+00; high = -6.59553467047272423684e+00} *$ var_x7)) +$ ({low = 8.20624845566163685362e+00; high = 8.20624845566163862998e+00} *$ var_x8)) +$ {low = -1.10834467185539111680e-05; high = 1.10834467185539111680e-05})))) +$ (abs_I((cos_I((((((((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ ({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3)) +$ ({low = -5.92656660090328202273e+00; high = -5.92656660090328113455e+00} *$ var_x4)) +$ ({low = -8.56663097937564721462e+00; high = -8.56663097937564543827e+00} *$ var_x5)) +$ ({low = 9.12285201627886266351e+00; high = 9.12285201627886443987e+00} *$ var_x6)) +$ ({low = -6.59553467047272512502e+00; high = -6.59553467047272423684e+00} *$ var_x7)) +$ ({low = 8.20624845566163685362e+00; high = 8.20624845566163862998e+00} *$ var_x8)) +$ ({low = -2.03820288306146402135e+00; high = -2.03820288306146357726e+00} *$ var_x9))) *$ floor_power2_I((({low = -2.03820288306146402135e+00; high = -2.03820288306146357726e+00} *$ var_x9) +$ {low = -1.17960874867187500140e-07; high = 1.17960874867187500140e-07})))) +$ (abs_I((cos_I((((((((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ ({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3)) +$ ({low = -5.92656660090328202273e+00; high = -5.92656660090328113455e+00} *$ var_x4)) +$ ({low = -8.56663097937564721462e+00; high = -8.56663097937564543827e+00} *$ var_x5)) +$ ({low = 9.12285201627886266351e+00; high = 9.12285201627886443987e+00} *$ var_x6)) +$ ({low = -6.59553467047272512502e+00; high = -6.59553467047272423684e+00} *$ var_x7)) +$ ({low = 8.20624845566163685362e+00; high = 8.20624845566163862998e+00} *$ var_x8)) +$ ({low = -2.03820288306146402135e+00; high = -2.03820288306146357726e+00} *$ var_x9))) *$ floor_power2_I(((((((((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ ({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3)) +$ ({low = -5.92656660090328202273e+00; high = -5.92656660090328113455e+00} *$ var_x4)) +$ ({low = -8.56663097937564721462e+00; high = -8.56663097937564543827e+00} *$ var_x5)) +$ ({low = 9.12285201627886266351e+00; high = 9.12285201627886443987e+00} *$ var_x6)) +$ ({low = -6.59553467047272512502e+00; high = -6.59553467047272423684e+00} *$ var_x7)) +$ ({low = 8.20624845566163685362e+00; high = 8.20624845566163862998e+00} *$ var_x8)) +$ ({low = -2.03820288306146402135e+00; high = -2.03820288306146357726e+00} *$ var_x9)) +$ {low = -1.32279655157843810696e-05; high = 1.32279655157843810696e-05})))) +$ abs_I(floor_power2_I((sin_I((((((((((({low = 2.80050623159835465614e+00; high = 2.80050623159835510023e+00} *$ var_x0) +$ ({low = 7.64488335123740636590e+00; high = 7.64488335123740725408e+00} *$ var_x1)) +$ ({low = 2.75648466017880267032e+00; high = 2.75648466017880311441e+00} *$ var_x2)) +$ ({low = -2.03720648973531526238e+00; high = -2.03720648973531481829e+00} *$ var_x3)) +$ ({low = -5.92656660090328202273e+00; high = -5.92656660090328113455e+00} *$ var_x4)) +$ ({low = -8.56663097937564721462e+00; high = -8.56663097937564543827e+00} *$ var_x5)) +$ ({low = 9.12285201627886266351e+00; high = 9.12285201627886443987e+00} *$ var_x6)) +$ ({low = -6.59553467047272512502e+00; high = -6.59553467047272423684e+00} *$ var_x7)) +$ ({low = 8.20624845566163685362e+00; high = 8.20624845566163862998e+00} *$ var_x8)) +$ ({low = -2.03820288306146402135e+00; high = -2.03820288306146357726e+00} *$ var_x9))) +$ {low = -1.51354286874640702409e-05; high = 1.51354286874640702409e-05})))))))))))))))))))))))

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