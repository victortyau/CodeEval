package main

import (
  "fmt"
 "math/big"
  "io/ioutil"
   "strings"
   "os" 
  "strconv" 
)

func main(){
 content, err := ioutil.ReadFile(os.Args[1]) 
 lines := strings.Split(strings.Trim(string(content),"\n"),"\n")
 if err != nil {
     fmt.Println("Problems to read file")
     return
  }
  count_primes(lines)
}

func count_primes(lines []string){
  for i:= 0; i < len(lines); i++ {
   n := strings.Split(lines[i],",")
   temp1, err := strconv.ParseInt(n[0],10,64)
   temp2, err2 := strconv.ParseInt(n[1],10,64)
   if err != nil {  break  }
   if err2 != nil {  break  }
   first := int(temp1)
   last := int(temp2)
   count := 0
   for j := first; j <= last; j++{
     if big.NewInt(int64(j)).ProbablyPrime(20) {
      count++
     } 
   }
   fmt.Println(count)
  }
}
