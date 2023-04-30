<%@page import="com.util.ConnectionUtil"%>
<%@page import="java.util.List"%>
<%@page import="com.Dao.BookingpageDao"%>
<%@page import="com.Bean.Bookingpage"%>
<%@page import="com.Bean.Userpage"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup Form</title>
    <link rel="stylesheet" href="CSS/register.css">
    <!--BOOTSTRAP LINK-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    
</head>
<body>
  
   <c:if test="${empty booking }">
    <form id="bookingform" method="post" action="BookingPageController" >   
        <div class="signup-form bg-dark">

            <div class="Signup-head bg-warning">
                <h1>Reserve Your Ticket</h1>
            </div>
           
 
            <label class="text-white" style="margin-left:10px;">First Name</label>           
            <input type="text" name="fname" id="fname"   class="tarikh bg-dark text-white"/>                     
          
            <label class="text-white" style="margin-left:10px;">Last Name</label>
            <input type="text" name="lname" id="lname"  class="tarikh bg-dark text-white" >         
         
            <label class="text-white" style="margin-left:10px;">Contact No</label>
            <input type="text" name="contactno" id="contactno" value="${empty param.id ? '' : BookingPage.fname}" class="tarikh bg-dark text-white" >
         
          
            <label class="text-white" style="margin-left:10px;">Train No</label>
            <input type="text" name="trainno" id="trainno" value="${empty param.id ? '' : BookingPage.fname}" class="tarikh bg-dark text-white">
         
            <label class="text-white" style="margin-left:10px;">Train Name</label>
            <input type="text" name="trainname" id="trainname" value="${empty param.id ? '' : BookingPage.fname}" class="tarikh bg-dark text-white">        

            <div class="signup-content2">
                
                <label class="text-white travel">From</label>
                <select class="bg-dark text-white travel2"  name="from_where">
                    <option ></option>
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
                <select class="bg-dark text-white travel2" name="to_where">
                    <option> </option>
                    <option> Ambliyasan Jn</option>
                    <option>Abohar Junction</option>
                    <option>Adra Junction</option>
                    <option>Agra Cantt</option>
                    <option>Ahmadpur Junction	</option>
                    <option>Ajmer Junction</option>
                    <option>Akola Junctio</option>
                    <option>Ahmedabad Jn</option>
                </select><br>

            <label class="text-white" style="margin-left:10px;">Depart</label>
            <input type="date" class="tarikh bg-dark text-white"  name="depart">

			<label class="text-white" style="margin-left:10px;">Adults</label>           
            <input type="number" class="bg-dark person" name="adults"  placeholder="Adults">
            <label class="text-white" style="margin-left:10px;">Children</label>        
            <input type="number" class="bg-dark person" name="children"  placeholder="Children"><br>

            <label class="text-white travel">Travel Class</label>
            <select class="bg-dark text-white travel2" name="tclass">
                <option ></option>
                <option>First Class/1A</option>
                <option>AC 2tier/2A</option>
                <option>AC 3tier/3A</option>
                <option>Executive class chair car/Economy Class</option>
                <option>AC Chair Car</option>
                <option>Sleeper Class</option>
                <option>Second Class</option>
                <option>General</option>
            </select>

            <input type="submit" id="add" value="Booking" name="action" class="submit-btn bg-warning"><br>
      	
        </div>
        </div>
    </form>
 </c:if>
 
 
    	 <table class="table">
    	 
  <thead>
 
  <tr>
   <%
	       List<Bookingpage> list = BookingpageDao.getAllData();
      %>
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
 	                	
  <tbody>
    <%
    	for(Bookingpage d:list){
    %>
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
     <%} %>  
  </tbody>

</table>

 
 <!-- update form -->
   <c:if test="${not empty booking}">
    <form id="updateform" method="post" action="BookingPageController" >           <div class="signup-form bg-dark">

            <div class="Signup-head bg-warning">
                <h1>Update Form</h1>
            </div>
           
            <input type ="hidden" name="id" value="${booking.id }">
            <label class="text-white" style="margin-left:10px;">First Name</label>           
            <input type="text" name="fname" id="fname" value="${booking.fname }"  class="tarikh bg-dark text-white"/>                     
          
            <label class="text-white" style="margin-left:10px;">Last Name</label>
            <input type="text" name="lname" id="lname" value="${booking.lname }" class="tarikh bg-dark text-white" >         
         
            <label class="text-white" style="margin-left:10px;">Contact No</label>
            <input type="text" name="contactno" id="contactno" value="${ booking.contactno}" class="tarikh bg-dark text-white" >
         
          
            <label class="text-white" style="margin-left:10px;">Train No</label>
            <input type="text" name="trainno" id="trainno" value="${booking.trainno}" class="tarikh bg-dark text-white">
         
            <label class="text-white" style="margin-left:10px;">Train Name</label>
            <input type="text" name="trainname" id="trainname" value="${booking.trainname}" class="tarikh bg-dark text-white">        

            <div class="signup-content2">
                
                <label class="text-white travel">From</label>
                <select class="bg-dark text-white travel2"  name="from_where">
                    <option value="${booking.from_where }" ></option>
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
                <select class="bg-dark text-white travel2" name="to_where">
                    <option value="${booking.to-where }"> </option>
                    <option> Ambliyasan Jn</option>
                    <option>Abohar Junction</option>
                    <option>Adra Junction</option>
                    <option>Agra Cantt</option>
                    <option>Ahmadpur Junction	</option>
                    <option>Ajmer Junction</option>
                    <option>Akola Junctio</option>
                    <option>Ahmedabad Jn</option>
                </select><br>

            <label class="text-white" style="margin-left:10px;">Depart</label>
            <input type="date" class="tarikh bg-dark text-white" value="${booking.depart }"  name="depart">

			<label class="text-white" style="margin-left:10px;">Adults</label>           
            <input type="number" class="bg-dark person" name="adults" value="${booking.adults }" placeholder="Adults">
            <label class="text-white" style="margin-left:10px;">Children</label>        
            <input type="number" class="bg-dark person" name="children" value="${booking.children }" placeholder="Children"><br>

            <label class="text-white travel">Travel Class</label>
            <select class="bg-dark text-white travel2" name="tclass">
                <option  value="${booking.tclass }"></option>
                <option>First Class/1A</option>
                <option>AC 2tier/2A</option>
                <option>AC 3tier/3A</option>
                <option>Executive class chair car/Economy Class</option>
                <option>AC Chair Car</option>
                <option>Sleeper Class</option>
                <option>Second Class</option>
                <option>General</option>
            </select>

            <input type="submit" id="update" value="Update" name="action" class="submit-btn bg-warning"><br>
      	
        </div>
        </div>
    </form>
 </c:if>
               
   
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
      <th scope="col">Edit </th>
      <th scope="col">Delete </th>
      
    </tr>
  </thead>
        	
  <tbody>
         <c:forEach var="booking" items="${booking_data }">       
    <tr>
      
      <td>${booking.id }</td>
      <td>${booking.fname }</td>
      <td>${booking.lname }</td>
      <td>${booking.contactno }</td>
      <td>${booking.trainno }</td>
      <td>${booking.tainname }</td>
      <td>${booking.form_where }</td>
      <td>${booking.to_where }</td>
      <td>${booking.depart }</td>
      <td>${booking.adults }</td>
      <td>${booking.children }</td>
      <td>${booking.tclass }</td>
      
      <td>
        <form action="BookingPageController" method="post">
        <input type="submit" class="status_btn" name="action" value="Edit">

		</form>
      </td>
      
      <td>
	<form action="BookingPageController" method="post">
	<input type="hidden" name="id" value=  >
	<input type="submit" class="status_btn" name="action" value="Delete">
	</form>		 	
	  </td>  
	     
    </tr> 
    </c:forEach> 
  </tbody> 
 
  
</table>
 
</body>
</html>