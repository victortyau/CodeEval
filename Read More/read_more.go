package main

import (
   "fmt"
   "io/ioutil"
   "strings"
   "regexp"
   "os"
)

func main(){

  content, err := ioutil.ReadFile(os.Args[1])
  spaces := regexp.MustCompile(`[ ]{2,}`)

  if err != nil {
     fmt.Println("Problems to read file")
     return
  }

  lines := strings.Split(strings.Trim(string(content),"\n"),"\n")

  for i := 0; i < len(lines); i++ {
    if len(lines[i]) <= 300 && !spaces.MatchString(lines[i]) {
      if len(lines[i]) <= 55 {
         fmt.Println(lines[i])
      }else if len(lines[i]) > 55{
         temp := strings.Trim(lines[i][:40],"\n")
         index := strings.LastIndex(temp," ")
         if index >= 0 {
            tempo := temp[:index]
            fmt.Println(tempo + "... <Read More>")
         }else{
            fmt.Println(temp + "... <Read More>")
         }
       }
     }
   }
}
