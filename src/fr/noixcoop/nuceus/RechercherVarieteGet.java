package fr.noixcoop.nuceus;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RechercherVarieteGet
 */
@WebServlet("/RechercherVarieteGet")
public class RechercherVarieteGet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RechercherVarieteGet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String variete = request.getParameter("variete");
		if(variete != null){
			MetierVarietes listeVarietes = new MetierVarietes();
			if(listeVarietes.consulter(variete)!=null){
				Variete desc = listeVarietes.consulter(variete);
				response.setContentType("text/html");
				PrintWriter sortie = response.getWriter();
				sortie.println("<html><body><h1></h1></body><table border=8><tr><th>Détail</th></tr><tr><td>"+desc.getLibelle()+"</td><td>"+desc.isAoc()+"</td></tr></table></html>");
			}
			else{
				response.setContentType("text/html");
				PrintWriter sortie = response.getWriter();
				sortie.println("<html><body><h1>Variété de noix inconnue</h1></body></html>");
			}
		}
		else{
			response.setContentType("text/html");
			PrintWriter sortie = response.getWriter();
			sortie.println("<html><body><h1>Variété de noix inconnue</h1></body></html>");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
