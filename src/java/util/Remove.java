package util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.entities.Week;
import model.services.WeekService;

public class Remove implements Search {

    @Override
    public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
        
        int id = Integer.parseInt(req.getParameter("id"));
        
        Week w = new Week();
        w.setId(id);
        WeekService service = new WeekService();
        service.remove(w);
                       
        return "remove.jsp";
        
    }
}
