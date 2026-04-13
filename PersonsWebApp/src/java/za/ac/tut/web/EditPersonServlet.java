/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
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
public class EditPersonServlet extends HttpServlet {

 


  @EJB PersonFacadeLocal pfl;
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id=Long.parseLong(request.getParameter("id"));
        String surname=request.getParameter("surname");
        Person person=createPerson(id,surname);
        pfl.edit(person);
        request.setAttribute("surname", surname);
        request.setAttribute("id", id);
        request.getRequestDispatcher("edit_person_outcome.jsp").forward(request, response);
     
    }

    private Person createPerson(Long id, String surname) {
        Person person =pfl.find(id);
        person.setSurname(surname);
        return person;
        
    }

 

}
