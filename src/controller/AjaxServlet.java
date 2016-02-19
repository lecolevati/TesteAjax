package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import model.Produto;

@WebServlet("/ajaxservlet")
public class AjaxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AjaxServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		List<Produto> produtos = new ArrayList<Produto>();
		for (int i = 1 ; i <= 5 ; i++){
			Produto p = new Produto();
			p.setId(i);
			p.setNome("Produto "+i);
			p.setValor(i * 1.5);
			produtos.add(p);
		}
	    String json = new Gson().toJson(produtos);

	    response.setContentType("application/json");
	    response.setCharacterEncoding("UTF-8");
	    response.getWriter().write(json);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	}

}
