package main

import "fmt"

func main(){
  count := 0
  pr := 0
  i := 1
  for   {
    if i== 1 || i == 2 || i == 3 || i == 5 || i == 7 {
     count += i
     pr += 1
    }
    if i%2!=0 && i%3!=0 && i%4!=0 && i%5!=0 && i%7!=0 {
     count += i
      pr += 1
    }

    if pr == 1000{
      break
    }
    i += 1
  }
   fmt.Println(count)
}

