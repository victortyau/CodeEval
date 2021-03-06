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
    counter := regexp.MustCompile(`[\!]`)
    counter_2 := regexp.MustCompile(`[\.]`)
    counter_3 := regexp.MustCompile(`[\?]`)
    var x = 0
    for i := 0 ; i < len(lines); i++ {
        number := 0
        number_2 := 0
        number_3 := 0
        //stop := 0

        if !markexp.MatchString(lines[i]) {
         current_line := strings.Split(lines[i]," ")

         for j := 0; j < len(current_line); j++ {

             if counter.MatchString(current_line[j]) {
               number++
             }else if counter_2.MatchString(current_line[j]) {
               number_2++
             }else if counter_3.MatchString(current_line[j]) {
               number_3++
             }


              if strings.Index(current_line[j],".") >= 0 && number%2 ==0 && number > 0  {
                fmt.Printf(strings.Replace(current_line[j],".",slang_array[x],1)+" ")
                x++
              }else
              if strings.Index(current_line[j],"?") >= 0 && number_3 > 0 {
                fmt.Printf(strings.Replace(current_line[j],"?",slang_array[x],1)+" ")
                x++
              }else
              if strings.Index(current_line[j],"!") >= 0 && number_2 % 2 == 0 && number_2 > 0 {
                fmt.Printf(strings.Replace(current_line[j],"!",slang_array[x],1)+" ")
                x++
              }else{
                fmt.Print(current_line[j]+" ")
              }

         }
         fmt.Println("")
      }

      if x == len(slang_array) {
        x = 0
      }

    }
}
