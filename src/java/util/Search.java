package util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Search {

    String executa(HttpServletRequest req,
            HttpServletResponse res) throws Exception;

}
