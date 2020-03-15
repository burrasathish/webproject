
//import net.bytebuddy.matcher.CollectionOneToOneMatcher;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;



@WebServlet(value="/sigupform")
public class Sigupform extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        // private static  EntityManagerFactory ENTITY_MANAGER_FACTORY = Persistence.createEntityManagerFactory("jpa");

        String name=request.getParameter("name");
        PrintWriter out=response.getWriter();
         out.println(name);
        String email=request.getParameter("email");
        String  password=request.getParameter("password");

         Signup siginObj=new Signup();
         EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
        EntityManager em = emf.createEntityManager();
        EntityTransaction et = em.getTransaction();
            et.begin();
        siginObj.setName(name);
        siginObj.setEmail(email);
        siginObj.setPassword(password);
        em.persist(siginObj);
        et.commit();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
