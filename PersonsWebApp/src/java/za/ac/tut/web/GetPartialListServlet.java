/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
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
public class GetPartialListServlet extends HttpServlet {



  @EJB  PersonFacadeLocal pfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Integer startIndex=Integer.parseInt(request.getParameter("startIndex"));
        Integer endIndex=Integer.parseInt(request.getParameter("endIndex"));
        int [] range={startIndex,endIndex};
        List<Person> partiallist=pfl.findRange(range);
        request.setAttribute("endIndex", endIndex);
        request.setAttribute("startIndex", startIndex);
        request.setAttribute("partiallist", partiallist);
        request.getRequestDispatcher("get_partial_list_outcome.jsp").forward(request, response);
    }

  
}
