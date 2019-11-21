// Initially(at hour 0), there are 48 bacteria in a test tube, and the number doubles each hour.Additionally, 'num' bacteria are added each hour.Write a function that returns the number of bacteria at hour 'h', using the prototype "numbac(h, num)".
// For example:
// numbac(0, 0) = 48
// numbac(1, 0) = 96
// numbac(2, 0) = 192
// numbac(0, 5) = 48
// numbac(1, 5) = 101
// numbac(2, 5) = 207
// Base case: h == 0
// Recursive call: 48 + numbac(h - 1, num * h)