/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.sun.corba.se.impl.orbutil.ObjectWriter;
import entity.Journal;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.ObjectMapper;
import session.JournalFacade;

/**
 *
 * @author WD
 */
@WebServlet(name = "ControllerServlet", urlPatterns = {"/"})
public class ControllerServlet extends HttpServlet {

    @EJB
    JournalFacade facade;

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Journal> records = facade.findAll();   
        
        ObjectMapper mapper = new ObjectMapper();
        String json = mapper.writeValueAsString(records);
        
        response.setContentType("application/json");
        response.getWriter().write(json);
    }

}
