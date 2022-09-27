package co.jtrip.web;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;
import co.jtrip.main.Main;
import co.jtrip.mypage.command.MypageUpdate;
import co.jtrip.notice.command.NoticeSelect;
import co.jtrip.notice.command.NoticeSelectList;
import co.jtrip.notice.service.noticeSelectList;
import co.jtrip.qna.command.QNASelect;
import co.jtrip.qna.command.QNASelectList;
import co.jtrip.reservation.command.ReservationSelect;
import co.jtrip.reservation.command.ReservationSelectList;
import co.jtrip.review.command.ReviewSelect;
import co.jtrip.review.command.ReviewSelectList;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String, Command> map = new HashMap<String, Command>();

	public FrontController() {
		super();

	}

	public void init(ServletConfig config) throws ServletException {
		// 명령 집단 저장하는 곳
		map.put("/main.do", new Main());
		map.put("/mypageupdate.do", new MypageUpdate());
		map.put("/QNASelectList.do", new QNASelectList());
		map.put("/QNASelect.do", new QNASelect());
		map.put("/reviewSelectList.do", new ReviewSelectList());
		map.put("/reviewSelect.do", new ReviewSelect());
		map.put("/reservationSelectList.do", new ReservationSelectList());
		map.put("/reservationSelect.do", new ReservationSelect());
		map.put("/noticeSelectList.do", new NoticeSelectList());
		map.put("/noticeSelect.do", new NoticeSelect());

	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 실제 수행할 서비스

		request.setCharacterEncoding("utf-8"); // 한글깨짐 방지
		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		String page = uri.substring(contextPath.length());
		System.out.println(page);

		Command command = map.get(page);
		String viewPage = command.exec(request, response);

		System.out.println(viewPage);
		if (!viewPage.endsWith(".do")) {
			if (viewPage.startsWith("ajax:")) {
				response.setContentType("text/html; charset=UTF-8");
				response.getWriter().append(viewPage.substring(5)); // 유효한 값이 아니므로 ajax: 총 5글자이므로 빼달라.
				return;
			} else { // 리턴값이 보여줄 페이지를 가지고 올 때
				viewPage = "/WEB-INF/views/" + viewPage + ".jsp"; // .do가 없을시 /WEB-INF/views/main/main.jsp 출력
				RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
				dispatcher.forward(request, response);
			}
		} else {
			response.sendRedirect(viewPage); // 리턴값이 *.do로 올때 처리, main.do 다시 호출.
		}
	}

}

//
//		if (!viewPage.endsWith(".do")) {
//			if (viewPage.startsWith("ajax:")) { // ajax를 사용할 때 
//				response.setContentType("text/html; charset=UTF-8");
//				response.getWriter().append(viewPage.substring(5));
//				return;
//			} else {
//				if (viewPage.startsWith("no:")) {// tiles 사용안할때
//					viewPage = "/WEB-INF/views/" + viewPage.substring(3) + ".jsp";
//					System.out.println("viewPage_tiles 안 쓸때 경로 : " + viewPage);
//				} else {
//					viewPage = viewPage + ".tiles"; // tiles layout 사용할때
//					System.out.println("viewPage_tiles 사용할때 경로: " + viewPage);					
//				}
//				
//				RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
//				dispatcher.forward(request, response);
//			}
//		} else {
//			response.sendRedirect(viewPage); //.do return
//		}
//
//	}

//}
