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
 primes(lines) 
}

func primes(lines []string){
  for  i:=0; i < len(lines); i++ {
    array_number := []string{}
    num, err := strconv.ParseInt(lines[i],10,64)
    if err != nil {  break  }
    temp := int(num)
     //fmt.Println(temp)
    for j := 1; j <= temp; j++{
      if big.NewInt(int64(j)).ProbablyPrime(20) {
          array_number = append(array_number,strconv.Itoa(j))
      }
    }
    fmt.Println(strings.Join(array_number, ","))
  }
}
