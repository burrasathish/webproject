
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
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder.In;

import java.util.List;
import javax.persistence.NoResultException;

@WebServlet(value = "/loginform")
public class Loginform extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // private static EntityManagerFactory ENTITY_MANAGER_FACTORY =
        // Persistence.createEntityManagerFactory("jpa");

        // String name=request.getParameter("name");

        String email = request.getParameter("email");
        // int s_id=Integer.parseInt(email);

        String password = request.getParameter("password");

        // Signup sk=new Signup();
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
        EntityManager em = emf.createEntityManager();

        String query = "SELECT c FROM Signup c WHERE c.email = :email";

        TypedQuery<Signup> tq = em.createQuery(query, Signup.class);

        // EntityTransaction et = null;
        // Signup cust = new Signup();
        tq.setParameter("email", email);

        Signup userinfo = null;

        try {
            userinfo = tq.getSingleResult();
            String Infoemail = userinfo.getEmail();
            System.out.println(Infoemail);
            System.out.println(email + "  get");
            String Infopassword = userinfo.getPassword();
            System.out.println(Infopassword);
            System.out.println(password + "  get");
            int infoid = userinfo.gets_Id();
            if (email.equals(Infoemail) && password.equals(Infopassword)) {
                request.getSession().setAttribute("infoid", infoid);
                response.sendRedirect("ContactDisplay.jsp");

            } else {
                System.out.println("notsecc");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            // Close EntityManager
            em.close();
        }

        // String query="signup.findAll";
        // TypedQuery<Signup> tq = em.createQuery(query, Signup.class);
        // List<Signup> custs;

        // custs = tq.getResultList();
        // custs.forEach(cust->System.out.println(cust.getName() + " " +
        // cust.getPassword()));

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}
