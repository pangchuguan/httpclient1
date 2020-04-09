$PBExportHeader$pbrestful.sra
$PBExportComments$Generated Application Object
forward
global type pbrestful from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global variables
HttpClient 		ghc_client
end variables

global type pbrestful from application
string appname = "pbrestful"
string themepath = "C:\Program Files (x86)\Appeon\Shared\PowerBuilder\theme190"
string themename = "Do Not Use Themes"
boolean nativepdfvalid = false
boolean nativepdfincludecustomfont = false
string nativepdfappname = ""
long richtextedittype = 2
long richtexteditversion = 1
string richtexteditkey = ""
string appicon = "D:\PB\PB2019R2\RibbonBar\Demo_MDI - Copy\sdr_2.ico"
end type
global pbrestful pbrestful

on pbrestful.create
appname="pbrestful"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on pbrestful.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;//2020-4-9
If Not IsValid ( ghc_client ) Then
	ghc_client = Create HttpClient
End If

open( w_main )

end event

event close;If IsValid ( ghc_client ) Then
	DesTroy( ghc_client )
End If
end event

