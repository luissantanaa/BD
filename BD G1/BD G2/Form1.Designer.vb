<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form1
	Inherits System.Windows.Forms.Form

	'Form overrides dispose to clean up the component list.
	<System.Diagnostics.DebuggerNonUserCode()> _
	Protected Overrides Sub Dispose(ByVal disposing As Boolean)
		Try
			If disposing AndAlso components IsNot Nothing Then
				components.Dispose()
			End If
		Finally
			MyBase.Dispose(disposing)
		End Try
	End Sub

	'Required by the Windows Form Designer
	Private components As System.ComponentModel.IContainer

	'NOTE: The following procedure is required by the Windows Form Designer
	'It can be modified using the Windows Form Designer.  
	'Do not modify it using the code editor.
	<System.Diagnostics.DebuggerStepThrough()> _
	Private Sub InitializeComponent()
		Me.Label1 = New System.Windows.Forms.Label()
		Me.Label2 = New System.Windows.Forms.Label()
		Me.Label3 = New System.Windows.Forms.Label()
		Me.Server = New System.Windows.Forms.TextBox()
		Me.User = New System.Windows.Forms.TextBox()
		Me.TestConnect = New System.Windows.Forms.Button()
		Me.Hello = New System.Windows.Forms.Button()
		Me.password = New System.Windows.Forms.MaskedTextBox()
		Me.SuspendLayout()
		'
		'Label1
		'
		Me.Label1.AutoSize = True
		Me.Label1.Location = New System.Drawing.Point(109, 70)
		Me.Label1.Name = "Label1"
		Me.Label1.Size = New System.Drawing.Size(41, 13)
		Me.Label1.TabIndex = 0
		Me.Label1.Text = "Server:"
		'
		'Label2
		'
		Me.Label2.AutoSize = True
		Me.Label2.Location = New System.Drawing.Point(109, 104)
		Me.Label2.Name = "Label2"
		Me.Label2.Size = New System.Drawing.Size(32, 13)
		Me.Label2.TabIndex = 1
		Me.Label2.Text = "User:"
		'
		'Label3
		'
		Me.Label3.AutoSize = True
		Me.Label3.Location = New System.Drawing.Point(109, 138)
		Me.Label3.Name = "Label3"
		Me.Label3.Size = New System.Drawing.Size(56, 13)
		Me.Label3.TabIndex = 2
		Me.Label3.Text = "Password:"
		'
		'Server
		'
		Me.Server.Location = New System.Drawing.Point(194, 70)
		Me.Server.Name = "Server"
		Me.Server.Size = New System.Drawing.Size(167, 20)
		Me.Server.TabIndex = 3
		'
		'User
		'
		Me.User.Location = New System.Drawing.Point(194, 104)
		Me.User.Name = "User"
		Me.User.Size = New System.Drawing.Size(167, 20)
		Me.User.TabIndex = 4
		'
		'TestConnect
		'
		Me.TestConnect.Location = New System.Drawing.Point(195, 230)
		Me.TestConnect.Name = "TestConnect"
		Me.TestConnect.Size = New System.Drawing.Size(99, 23)
		Me.TestConnect.TabIndex = 6
		Me.TestConnect.Text = "Test Connection"
		Me.TestConnect.UseVisualStyleBackColor = True
		'
		'Hello
		'
		Me.Hello.Location = New System.Drawing.Point(364, 230)
		Me.Hello.Name = "Hello"
		Me.Hello.Size = New System.Drawing.Size(75, 23)
		Me.Hello.TabIndex = 7
		Me.Hello.Text = "Hello Table"
		Me.Hello.UseVisualStyleBackColor = True
		'
		'password
		'
		Me.password.Location = New System.Drawing.Point(195, 138)
		Me.password.Name = "password"
		Me.password.Size = New System.Drawing.Size(166, 20)
		Me.password.TabIndex = 8
		Me.password.UseSystemPasswordChar = True
		'
		'Form1
		'
		Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
		Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
		Me.ClientSize = New System.Drawing.Size(800, 450)
		Me.Controls.Add(Me.password)
		Me.Controls.Add(Me.Hello)
		Me.Controls.Add(Me.TestConnect)
		Me.Controls.Add(Me.User)
		Me.Controls.Add(Me.Server)
		Me.Controls.Add(Me.Label3)
		Me.Controls.Add(Me.Label2)
		Me.Controls.Add(Me.Label1)
		Me.Name = "Form1"
		Me.Text = "Form1"
		Me.ResumeLayout(False)
		Me.PerformLayout()

	End Sub

	Friend WithEvents Label1 As Label
	Friend WithEvents Label2 As Label
	Friend WithEvents Label3 As Label
	Friend WithEvents Server As TextBox
	Friend WithEvents User As TextBox
	Friend WithEvents TestConnect As Button
	Friend WithEvents Hello As Button
	Friend WithEvents password As MaskedTextBox
End Class
