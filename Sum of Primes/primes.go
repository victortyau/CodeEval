package main

import ("fmt"
         "math/big"
)

func main(){
  count := 0
  pr := 0
  i := 2
  for   {
    if big.NewInt(int64(i)).ProbablyPrime(20){
      count += i
      pr += 1
    }
    if pr == 1000 {
      break
    }
    i += 1
  }
   fmt.Println(count)
}
