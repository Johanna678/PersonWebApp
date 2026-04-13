/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.bl.PersonFacadeLocal;
import za.ac.tut.entities.Person;

/**
 *
 * @author johan
 */
public class RemovePersonServlet extends HttpServlet {

   

  @EJB PersonFacadeLocal pfl;
  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id =Long.parseLong(request.getParameter("id"));
        Person person= createPerson(id);
        pfl.remove(person);
        request.setAttribute("person", person);
        
        RequestDispatcher disp = request.getRequestDispatcher("remove_person_outcome.jsp");
        disp.forward(request, response);
    }

    private Person createPerson(Long id) {
        Person person =new Person();
        person.setId(id);
        return person;
    }

 

}
