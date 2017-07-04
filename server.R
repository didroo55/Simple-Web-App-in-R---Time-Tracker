#
#This is the code for Server of the time tracker Application. This once instantiated, waits for requests from the UI Client and inserts
# or fetches data depending on the request
#    
#


#Setting up the environment
library(shiny)
library(RMySQL)

#The form query function inserts the time details entered by the user into the Database.  
formQuery <- function(resource, engagement,chargable,nonChargable,unAssigned,timeCategory){
  con <- dbConnect(MySQL(),user = "root",password = "admin",dbname = "gt_internal",host="10.128.42.35") #Needs to be changed to make it reuseable
  
  query <- paste("INSERT INTO TIMETRACKER VALUES ('",as.character(Sys.Date()),"','"
                 , resource, "','",engagement,"','",timeCategory,"','",chargable,"','",nonChargable,"','", unAssigned,"')",sep = "")
  dbGetQuery(con,query)
  dbDisconnect(con)
}


#The getData function is used to get historical time details
getData <- function(resource)
{
  con <- dbConnect(MySQL(),user = "root",password = "admin",dbname = "gt_internal",host="10.128.42.35")#Needs to be changed to make it reuseable
  query <- paste("select * from gt_internal.timetracker where Date = '",as.character(Sys.Date()),"' and ", "Resource = '",resource,"'",sep = "")
   data <-  dbGetQuery(con,query)
   dbDisconnect(con)
  data
  
  }

#Server funciton which is run when the server is instantiated. 
shinyServer(function(input, output) {
   

  #The series of event observes wait for user activity in the UI. Once a time is entered, the insert query is called
  observeEvent (input$s1, {
    formQuery(input$r,input$e1,input$c1,input$n1,input$u1,"6AM-10AM")
    output$message1 <-  renderText({"Success"})
  })
  
  observeEvent (input$s2, {
    formQuery(input$r,input$e2,input$c2,input$n2,input$u2,"10AM-12PM")
    output$message2 <-  renderText({"Success"})
  })
  
  observeEvent (input$s3, {
    formQuery(input$r,input$e3,input$c3,input$n3,input$u3,"12PM-2PM")
    output$message3 <-  renderText({"Success"})
  })
  
  observeEvent (input$s4, {
    formQuery(input$r,input$e4,input$c4,input$n4,input$u4,"2PM-4PM")
    output$message4 <-  renderText({"Success"})
  })
  
  observeEvent (input$s5, {
    formQuery(input$r,input$e5,input$c5,input$n5,input$u5,"4PM-6PM")
    output$message5 <-  renderText({"Success"})
  })
  
  
  observeEvent (input$s6, {
    formQuery(input$r,input$e6,input$c6,input$n6,input$u6,"6PM-8PM")
    output$message6 <-  renderText({"Success"})
  })
  
  observeEvent (input$s7, {
    formQuery(input$r,input$e7,input$c7,input$n7,input$u7,"8PM-10PM")
    output$message7 <-  renderText({"Success"})
  })
  
  observeEvent (input$s8, {
    formQuery(input$r,input$e8,input$c8,input$n8,input$u8,"10PM-6AM")
    output$message8 <-  renderText({"Success"})
  })
  
  
  observeEvent (input$s9, {
    output$mytable <-  renderDataTable({
      getData(input$r2)
      
      })
    
  })
  
  
  
  
})
