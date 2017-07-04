#
#This is the user interface for a Time Tracker application built completely using R.
#
#

#Loading Libtary and setting environment
library(shiny)
library(shinythemes)

#Getting Utility list
engagementList <- engagementListing$Engagements # Refer to the Utility Tables
resourceList <- resourceListing$Resource# Refer to the Utility Tables


#Serting theme to R Studio's "Super Hero"
shinyUI(fluidPage( theme = shinytheme("superhero"),
  
  # Application title
  titlePanel(h2("Controls Advisory Daily Time Tracker", align = "center")),
  
  navbarPage("Navigate",
  
 
  tabPanel(h6("TimeTracker"),

      
   
    
    # Main pannel for users to enter time
    mainPanel(
      
      h3(paste("Track your time for the day"), align = "center"),
      h5(paste("Currently  Tracking time for ", Sys.Date()), align = "center"),
      
      fluidRow(
        column(width =2, selectInput("r",label = h4("Resource"),choices = resourceList))
        ),
     
      
       h2("6am : 10am"),
      fluidRow(
        
        column(width =2, selectInput("e1",label = h4("Engagement"),choices = engagementList)),
        column(width = 2, numericInput("c1", label = h4("Chargeable "), min = 0, value = 0,step = 0.25)),
        column(width = 2, numericInput("n1", label = h4("Non Chargeable"), min = 0, value = 0, step = .25)),
        column(width = 2, numericInput("u1", label = h4("UnAssigned "), min = 0, value = 0, step = .25)),
        h4("Submit category "),
        column(width = 2, actionButton("s1","Submit")),
        h4(textOutput("message1"))),
      
      h2("10am : 12pm"),
      fluidRow(
        column(width =2, selectInput("e2",label = h4("Engagement"),choices = engagementList)),
        column(width = 2, numericInput("c2", label = h4("Chargeable "), min = 0, value = 0,step = 0.25)),
        column(width = 2, numericInput("n2", label = h4("Non Chargeable"), min = 0, value = 0, step = .25)),
        column(width = 2, numericInput("u2", label = h4("UnAssigned "), min = 0, value = 0, step = .25)),
        h4("Submit category "),
        column(width = 2, actionButton("s2","Submit")),
        h4(textOutput("message2"))
         ),
      
      
      h2("12pm : 2pm"),
      fluidRow(
        column(width =2, selectInput("e3",label = h4("Engagement"),choices = engagementList)),
        column(width = 2, numericInput("c3", label = h4("Chargeable "), min = 0, value = 0,step = 0.25)),
        column(width = 2, numericInput("n3", label = h4("Non Chargeable"), min = 0, value = 0, step = .25)),
        column(width = 2, numericInput("u3", label = h4("UnAssigned "), min = 0, value = 0, step = .25)),
        h4("Submit category "),
        column(width = 2, actionButton("s3","Submit")),
        h4(textOutput("message3"))
        ),
      
      h2("2pm: 4pm"),
      fluidRow(
        column(width =2, selectInput("e4",label = h4("Engagement"),choices = engagementList)),
        column(width = 2, numericInput("c4", label = h4("Chargeable "), min = 0, value = 0,step = 0.25)),
        column(width = 2, numericInput("n4", label = h4("Non Chargeable"), min = 0, value = 0, step = .25)),
        column(width = 2, numericInput("u4", label = h4("UnAssigned "), min = 0, value = 0, step = .25)),
        h4("Submit category "),
        column(width = 2, actionButton("s4","Submit")),
        h4(textOutput("message4"))
        ),
      
      
      h2("4pm : 6 pm"),
      fluidRow(
        column(width =2, selectInput("e5",label = h4("Engagement"),choices = engagementList)),
        column(width = 2, numericInput("c5", label = h4("Chargeable "), min = 0, value = 0,step = 0.25)),
        column(width = 2, numericInput("n5", label = h4("Non Chargeable"), min = 0, value = 0, step = .25)),
        column(width = 2, numericInput("u5", label = h4("UnAssigned "), min = 0, value = 0, step = .25)),
        h4("Submit category "),
        column(width = 2, actionButton("s5","Submit")),
        h4(textOutput("message5"))
        ),
      

      
      h2("6pm : 8pm"),
      fluidRow(
        column(width =2, selectInput("e6",label = h4("Engagement"),choices = engagementList)),
        column(width = 2, numericInput("c6", label = h4("Chargeable "), min = 0, value = 0,step = 0.25)),
        column(width = 2, numericInput("n6", label = h4("Non Chargeable"), min = 0, value = 0, step = .25)),
        column(width = 2, numericInput("u6", label = h4("UnAssigned "), min = 0, value = 0, step = .25)),
        h4("Submit category "),
        column(width = 2, actionButton("s6","Submit")),
        h4(textOutput("message6"))
        ),
      
      h2("8pm : 10pm"),
      fluidRow(
        column(width =2, selectInput("e7",label = h4("Engagement"),choices = engagementList)),
        column(width = 2, numericInput("c7", label = h4("Chargeable "), min = 0, value = 0,step = 0.25)),
        column(width = 2, numericInput("n7", label = h4("Non Chargeable"), min = 0, value = 0, step = .25)),
        column(width = 2, numericInput("u7", label = h4("UnAssigned "), min = 0, value = 0, step = .25)),
        h4("Submit category "),
        column(width = 2, actionButton("s7","Submit")),
        h4(textOutput("message7"))
        ),
      
      h2("10pm : 6am"),
      fluidRow(
        column(width =2, selectInput("e8",label = h4("Engagement"),choices = engagementList)),
        column(width = 2, numericInput("c8", label = h4("Chargeable "), min = 0, value = 0,step = 0.25)),
        column(width = 2, numericInput("n8", label = h4("Non Chargeable"), min = 0, value = 0, step = .25)),
        column(width = 2, numericInput("u8", label = h4("UnAssigned "), min = 0, value = 0, step = .25)),
        h4("Submit category "),
        column(width = 2, actionButton("s8","Submit")),
        h4(textOutput("message8"))
        ),
       
    width = 12)
  ),
  #Help Page
tabPanel(h6("Read Me before updating"),
         mainPanel(
           
           h3("What is this all about"),
           p("This web application aims to help us track time effectively and at the same time reduce time spent on tracking time."),
          
           h3("Why can't I enter time for the previous days"),
           p("The application only allows users to enter time on the same day. Please ensure you track time on a daily basis."),
           
           
           h3("Important Points to keep in mind"),
           p("1. Please ensure you fill the time on a daily basis. You cannot fill time for the previous days"),
           p("2. Once you click the submit button, ensure that a message 'Success' pops up. If not reach out to the application maintaner."),
           p("2. Be easy on the application, lets avoid playing fast fingers, take it slow.")),
         
        
         mainPanel(
           
           h3("Things are not working"),
          
           p("Contact Satish (satish.hariharan@us.gt.com)")
       
         
         )),

    

#Tab for users to view time entered 
tabPanel(h6("View Entered Time"),
         mainPanel(
           h3(paste("See what you entered till now"), align = "center"),
           h5(paste("Currently  Showing time for ", Sys.Date()), align = "center"),
           
             selectInput("r2",label = h4("Resource"),choices = resourceList),
           actionButton("s9","Get Time"),
          
           width =12,
           align = "center"
       
           ),
         mainPanel(
           tabsetPanel(
           tabPanel('Time Entry',
                      dataTableOutput("mytable"))),
           width =12,
           align = "center"
         )
         
)
)
))
