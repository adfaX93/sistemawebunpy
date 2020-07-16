<%@page import="org.json.simple.JSONObject"%>
<%@page import="controladores.RubrosControlador"%>
<%
String nombre_rubro = request.getParameter("bnombre_rubro");
int pagina = Integer.parseInt(request.getParameter("bpagina"));
String mensaje = "Búsqueda exitosa.";
String contenido = RubrosControlador.buscarNombre(nombre_rubro, pagina );
JSONObject obj = new JSONObject();
obj.put("mensaje",mensaje);
obj.put("contenido", contenido);
out.print(obj);
out.flush();
%>