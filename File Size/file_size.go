package main

import (
   "fmt"
   "os"
   "strconv"
)

func main(){
 content, err := os.Open(os.Args[1])
 if err != nil {
    // handle the error here
    return
  }
  defer content.Close()

  stat, err := content.Stat()
   if err != nil {
       return
   }

   fmt.Println(strconv.Itoa( int(stat.Size())))
}

