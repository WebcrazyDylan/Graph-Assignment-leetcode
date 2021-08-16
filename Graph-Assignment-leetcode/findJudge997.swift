//
//  findJudge997.swift
//  Graph-Assignment-leetcode
//
//  Created by Dylan Park on 2021-08-15.
//

import Foundation

func findJudge(_ n: Int, _ trust: [[Int]]) -> Int {
  var inOut = [[Int]](repeating: [Int](repeating: 0, count: 2), count: n)
  
  for edge in trust {
    inOut[edge[0] - 1][1] += 1
    inOut[edge[1] - 1][0] += 1
  }
  
  for i in 0..<n {
    if inOut[i][1] == n - 1 && inOut[i][1] == 0 {
      return i + 1
    }
  }
  
  return -1
}
