package presentation.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.service.WebAppSampleService;

/**
 * {@link SampleMemoServlet}
 */
@WebServlet("/high")
public class SampleServlet extends HttpServlet {

	private WebAppSampleService service = new WebAppSampleService();

	/**
	 * {@inheritDoc}
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String view = "/WEB-INF/view/highcard.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}

	/**
	* {@inheritDoc}
	*/
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//ここは無視してね
		request.setCharacterEncoding("UTF-8");

		/***********************************************:
		 *               ここから超重要                *
		 ***********************************************/

		//リクエストからデータを取り出す。
		String kake = request.getParameter("kake");
		String player = request.getParameter("player");

		//リクエストにデータをセットする。
		request.setAttribute("kake",kake);
		request.setAttribute("player",player);

		/////////10月14日追加分///////////

		int hitNum = Integer.parseInt(request.getParameter("hitNumber"));

		String[] checked= request.getParameterValues("checkbox");

		System.out.println(hitNum);
		System.out.println(checked);

		request.setAttribute("hitNumber",hitNum);

		request.setAttribute("checkbox",checked);
		////////////////////////////////////


		//リクエストを相手に送る。
		doGet(request, response);
		/************************************************
		 *             ここまで重要                     *
		 ************************************************/

	}

}