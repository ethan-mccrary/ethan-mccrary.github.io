package com.personal.personal_website;

import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "OnSearch", value = "/OnSearch")
public class OnSearch extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        //get Query
        String query = request.getParameter("term");
        //get data from file
        Data data = new Data();
        List<String> projects = data.getData(query);
        for(String project:projects) {
            response.getWriter().write(new Gson().toJson(projects));
        }
    }
}
