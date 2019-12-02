package util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SearchWeek implements Search {

    @Override
    public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
        System.out.println("Performing deletion ...");
        
        System.out.println("Returning the name of the JSP page ...");
        return "remove.jsp";
    }    
}
