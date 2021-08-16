//
//  findCircleNum547.swift
//  Graph-Assignment-leetcode
//
//  Created by Dylan Park on 2021-08-15.
//

import Foundation

func findCircleNum(_ isConnected: [[Int]]) -> Int {
  
  func dfs(_ start: Int, _ visited: inout [Bool], _ adjMatrix: [[Int]]) {
    visited[start] = true
    for v in 0..<adjMatrix.count {
      if start == v {
        continue
      }
      if !visited[v] && adjMatrix[start][v] == 1 {
        visited[v] = true
        dfs(v, &visited, adjMatrix)
      }
    }
  }
  
  if isConnected.count == 0 || isConnected[0].count == 0 {
    return 0
  }
  
  let n = isConnected.count
  var count = 0
  var visited = [Bool](repeating: false, count: n)
  for v in 0..<n {
    if !visited[v] {
      dfs(v, &visited, isConnected)
      count += 1
    }
  }
  return count
}
