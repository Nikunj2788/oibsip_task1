<%@page import="com.Dao.BookingpageDao"%>
<%@page import="java.util.List"%>
<%@page import="com.Bean.Bookingpage"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup Form</title>
    <link rel="stylesheet" href="CSS/register.css">
    <!--BOOTSTRAP LINK-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="BookingPageController">

 
        <div class="signup-form bg-dark">

            <div class="Signup-head bg-warning">
                <h1>Update  Your Ticket</h1>
            </div>
			
			  <input type="hidden" name="id" value=<%=d.getId()%> class="tarikh bg-dark text-white">
          	
				
            <label class="text-white" style="margin-left:10px;">First Name</label>
            <input type="text" name="fname" value=<%=d.getFname()%> class="tarikh bg-dark text-white">
          
            <label class="text-white" style="margin-left:10px;">Last Name</label>
            <input type="text" name="lname" value=<%=d.getLname() %> class="tarikh bg-dark text-white" >
          
            <label class="text-white" style="margin-left:10px;">Contact No</label>
            <input type="text" name="contactno" value=<%=d.getContactno()%> class="tarikh bg-dark text-white" >
          
            <label class="text-white" style="margin-left:10px;">Train No</label>
            <input type="text" name="trainno" value=<%=d.getTrainno() %> class="tarikh bg-dark text-white">
          
            <label class="text-white" style="margin-left:10px;">Train Name</label>
            <input type="text" name="trainname" value=<%=d.getTrainname() %> class="tarikh bg-dark text-white">
        

            <div class="signup-content2">
                
                <label class="text-white travel">From</label>
                <select id="from_where" class="bg-dark text-white travel2"  name="from_where">
              
                    <option value=<%=d.getFrom_where() %>><%=d.getFrom_where() %> </option>
                    <option> Ambliyasan Jn</option>
                    <option>Abohar Junction</option>
                    <option>Adra Junction</option>
                    <option>Agra Cantt</option>
                    <option>Ahmadpur Junction	</option>
                    <option>Ajmer Junction</option>
                    <option>Akola Junctio</option>
                    <option>Ahmedabad Jn</option>
                </select><br>
                <label class="text-white travel" style="margin-left: 40px;">To </label>
                <select class="bg-dark text-white travel2"  name="to_where">
                    <option value="<%=d.getTo_where() %>"><%=d.getTo_where() %> </option>
                    <option value="">Ambliyasan Jn</option>
                    <option value="">Abohar Junction</option>
                    <option value="">Adra Junction</option>
                    <option value="">Agra Cantt</option>
                    <option value="">Ahmadpur Junction	</option>
                    <option value="">Ajmer Junction</option>
                    <option value="">Akola Junctio</option>
                    <option value="">Ahmedabad Jn</option>
                </select><br>

            <label class="text-white" style="margin-left:10px;">Depart</label>
            <input type="date" class="tarikh bg-dark text-white" value=<%=d.getDepart() %> name="depart">

			<label class="text-white" style="margin-left:10px;">Adults</label>           
            <input type="number" class="bg-dark person" name="adults" value=<%=d.getAdults() %> placeholder="Adults">
            <label class="text-white" style="margin-left:10px;">Children</label>        
            <input type="number" class="bg-dark person" name="children" value=<%=d.getChildren() %> placeholder="Children"><br>

            <label class="text-white travel">Travel Class</label>
            <select class="bg-dark text-white travel2" name="tclass">
                <option><%=d.getTclass() %></option>
                <option>First Class/1A</option>
                <option>AC 2tier/2A</option>
                <option>AC 3tier/3A</option>
                <option>Executive class chair car/Economy Class</option>
                <option>AC Chair Car</option>
                <option>Sleeper Class</option>
                <option>Second Class</option>
                <option>General</option>
            </select>

               <input type="submit" value="Update" name="action" class="submit-btn bg-warning"><br>
      	
        </div>
        </div>
    </form>
    <%
	List<Bookingpage> list = BookingpageDao.getAllData();
%>
    	 <table class="table">
  <thead>
  <tr>
      <th scope="col">First Name</th>
      <th scope="col">Last Name </th>
      <th scope="col">Contact No  </th>      
      <th scope="col">Train No</th>
      <th scope="col">Train Name</th>
      <th scope="col">From </th>
      <th scope="col">To</th>
      <th scope="col">Depart</th>
      <th scope="col">Adult</th>
      <th scope="col">Children</th>
      <th scope="col">Train Class </th>
      <th scope="col">edit </th>
      <th scope="col">Delete </th>
      
    </tr>
  </thead>
 	    <%
    	for(Bookingpage d:list){
    %>                 	
  <tbody>
    <tr>
     
      <td><%=d.getFname() %></td>
      <td><%=d.getLname() %></td>
      <td><%=d.getContactno() %></td>     
      <td><%=d.getTrainno() %></td>
      <td><%=d.getTrainname() %></td>
      <td><%=d.getFrom_where()%></td>
      <td><%=d.getTo_where() %></td>
      <td><%=d.getDepart() %></td>
      <td><%=d.getAdults() %></td>
      <td><%=d.getChildren() %></td>
      <td><%=d.getTclass() %></td>
      
       <td>
        <form action="BookingPageController" method="post">
	    <input type="hidden" name="id" value=<%=d.getId() %>>
		<input type="submit" class="status_btn" name="action" value="Edit">
		</form>
      </td>
      
      <td>
	<form action="BookingPageController" method="post">
	<input type="hidden" name="id" value=<%=d.getId() %>  >
	<input type="submit" class="status_btn" name="action" value="Delete">
	</form>
	  </td>      
    </tr>
    
  </tbody>
 <%} %>
</table>

</body>
</html>