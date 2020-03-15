
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

@WebServlet(value = "/form")
public class Form extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // private static EntityManagerFactory ENTITY_MANAGER_FACTORY =
        // Persistence.createEntityManagerFactory("jpa");

        String firstname = request.getParameter("firstname");
        PrintWriter out = response.getWriter();
        out.println(firstname);
        String lastname = request.getParameter("lastname");
        String phon = request.getParameter("phone");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        Contact contactObj = new Contact();
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
        EntityManager em = emf.createEntityManager();
        EntityTransaction et = em.getTransaction();
        et.begin();
        contactObj.setName(firstname);
        contactObj.setlastName(lastname);
        int phone = Integer.parseInt(phon);
        contactObj.setPhone(phone);
        contactObj.setMail(email);
        contactObj.setMessage(message);
        // PrintWriter kk=response.getWriter();
        // kk.println(et);

        em.persist(contactObj);
        et.commit();

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}
