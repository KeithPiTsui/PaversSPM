//
//  Curry2.swift
//  PaversFRP
//
//  Created by Keith on 11/01/2018.
//  Copyright © 2018 Keith. All rights reserved.
//

import Foundation

//public func curry<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X>
//  (_ function: @escaping (X, W, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U) -> V)
//  -> (X) -> (W) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V {
//    return
//      { (x: X) -> (W) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//        in { (w: W) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//          in { (a: A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//            in { (b: B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//              in { (c: C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                in { (d: D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                  in { (e: E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                    in { (f: F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                      in { (g: G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                        in { (h: H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                          in { (i: I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                            in { (j: J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                              in { (k: K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                                in { (l: L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                                  in { (m: M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                                    in { (n: N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                                      in { (o: O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                                        in { (p: P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                                          in { (q: Q) -> (R) -> (S) -> (T) -> (U) -> V
//                                            in { (r: R) -> (S) -> (T) -> (U) -> V
//                                              in { (s: S) -> (T) -> (U) -> V
//                                                in { (t: T) -> (U) -> V
//                                                  in { (u: U) -> V
//                                                    in function(x, w, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u)
//                                                  } } } } } } } } } } } } } } } } } } } } } } }
//    
//}
//
//public func curry<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y>
//  (_ function: @escaping (Y, X, W, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U) -> V)
//  -> (Y) -> (X) -> (W) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V {
//    return
//      { (y: Y) -> (X) -> (W) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//      in { (x: X) -> (W) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//        in { (w: W) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//          in { (a: A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//            in { (b: B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//              in { (c: C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                in { (d: D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                  in { (e: E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                    in { (f: F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                      in { (g: G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                        in { (h: H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                          in { (i: I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                            in { (j: J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                              in { (k: K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                                in { (l: L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                                  in { (m: M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                                    in { (n: N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                                      in { (o: O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                                        in { (p: P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                                          in { (q: Q) -> (R) -> (S) -> (T) -> (U) -> V
//                                            in { (r: R) -> (S) -> (T) -> (U) -> V
//                                              in { (s: S) -> (T) -> (U) -> V
//                                                in { (t: T) -> (U) -> V
//                                                  in { (u: U) -> V
//                                                    in function(y, x, w, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u)
//                                                  } } } } } } } } } } } } } } } } } } } } } } } }
//    
//}

//public func curry<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z>
//  (_ function: @escaping (Z, Y, X, W, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U) -> V)
//  -> (Z) -> (Y) -> (X) -> (W) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V {
//    return
//      { (z: Z) -> (Y) -> (X) -> (W) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//      in { (y: Y) -> (X) -> (W) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//        in { (x: X) -> (W) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//          in { (w: W) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//            in { (a: A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//              in { (b: B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                in { (c: C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                  in { (d: D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                    in { (e: E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                      in { (f: F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                        in { (g: G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                          in { (h: H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                            in { (i: I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                              in { (j: J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                                in { (k: K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                                  in { (l: L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                                    in { (m: M) -> (N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                                      in { (n: N) -> (O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                                        in { (o: O) -> (P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                                          in { (p: P) -> (Q) -> (R) -> (S) -> (T) -> (U) -> V
//                                            in { (q: Q) -> (R) -> (S) -> (T) -> (U) -> V
//                                              in { (r: R) -> (S) -> (T) -> (U) -> V
//                                                in { (s: S) -> (T) -> (U) -> V
//                                                  in { (t: T) -> (U) -> V
//                                                    in { (u: U) -> V
//                                                      in function(z, y, x, w, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u)
//                                                    } } } } } } } } } } } } } } } } } } } } } } } } }
//
//}

