<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kumon</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="index.jsp">Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#tips">Tips</a>
      </li>
    </ul>
  </div>
</nav>

<div class="container" id="tips">
            <center>
             
                <div class="thumbnail">
                   
                </div>
                <h4>Lista de tips sobre la IA</h4>
                <br>
            </center>  
                <%@include file="conexion.jsp"%>
               
                <div class="row col-md-12" >
                <table class="table table-striped table-bordered table-hover" style="text-align: center">
                    <thead>
                        <tr>
                            <th style="text-align: center">ID</th>
                        </tr>
                    </thead>
                    <tbody>
                       
                        <%
                          st=conexion.prepareStatement("select * from consejos_ia");
                          rs=st.executeQuery();
                          while(rs.next()){//inicia while
                        %> 
                        <tr>
                            <td><%= rs.getInt("id-consejo") %></td>
                        </tr>
                        <%
                          }//termina while  
                        %>
                    </tbody>
                </table>
            </div>
        </div>   
        
        <footer class="py-3 my-4"> 
            <ul class="nav justify-content-center border-bottom pb-3 mb-3"> 
                <li class="nav-item"><a href="index.jsp" class="nav-link px-2 text-body-secondary">Home</a></li> 
                <li class="nav-item"><a href="#tips" class="nav-link px-2 text-body-secondary">tips</a></li> 
            </ul> 
            <p class="text-center text-body-secondary"> 2026 Kumon, Todos los derechos reservados</p> 
        </footer>

    <script src="js/bootstrap.js"></script>
</body>
</html>