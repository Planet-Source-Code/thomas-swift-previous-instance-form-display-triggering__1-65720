VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Hide Me"
      Height          =   405
      Left            =   435
      TabIndex        =   0
      Top             =   225
      Width           =   1665
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   3135
      Top             =   435
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Me.Visible = False
End Sub
Private Sub Form_Load()
If App.PrevInstance Then
SaveSetting "TAS Example Program", "Settings", "Show Your Running", "True"
End
End If
End Sub
Private Sub Timer1_Timer()
If GetSetting("TAS Example Program", "Settings", "Show Your Running", "False") = "True" Then
SaveSetting "TAS Example Program", "Settings", "Show Your Running", "False"
Me.Visible = True
End If
End Sub
