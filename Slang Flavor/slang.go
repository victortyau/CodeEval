package main

import ( "fmt"
         "io/ioutil"
         "strings"
         "os"
         "regexp"
         )


func main(){
  getFile()
}

func getFile(){
  content, err := ioutil.ReadFile(os.Args[1])

  if err != nil {
    fmt.Println("Problems to read file")
    return
  }

  lines := strings.Split(strings.Trim(string(content),"\n"),"\n")

  if len(lines)  <= 40  {
    doSlang(lines)
  }
}


func doSlang(lines []string){

    slang_array :=  [8]string{ ", yeah!" , ", this is crazy, I tell ya.", ", can U believe this?",
                               ", eh?", ", aw yea.", ", yo.", "? No way!", ". Awesome!" }
    markexp := regexp.MustCompile(`([\.]|[\?]|[\!]){2,}`)
    for i := 0 ; i < len(lines); i++ {
        if !markexp.MatchString(lines[i]) {
         current_line := strings.Split(lines[i]," ")
         x = 0
         for j := 0; j < len(current_line); j++ {
           if strings.Index(current_line[j],".") >= 0 {
             //index := strings.Index(current_line[j],".")
             strings.Replace(current_line[j],".",slang_array[x])
             
           }
           else if  strings.Index(current_line[j],"?") >= 0 {
             index := strings.Index(current_line[j],"?")
           }
           else if strings.Index(current_line[j],"!") >= 0 {
             index := strings.Index(current_line[j],"!")
           }
         }
        }
        break
        fmt.Println("========================")
      }
}
