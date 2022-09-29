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
import co.jtrip.member.command.AjaxMemberIdCheck;
import co.jtrip.member.command.MemberInsert;
import co.jtrip.member.command.MemberJoin;
import co.jtrip.member.command.MemberLogin;
import co.jtrip.member.command.MemberLoginAction;
import co.jtrip.member.command.MemberLogout;
import co.jtrip.tiles.command.AdminProduct;
import co.jtrip.tiles.command.AdminProductInsert;
import co.jtrip.tiles.command.Cart;
import co.jtrip.tiles.command.FnA;
import co.jtrip.tiles.command.Home;
import co.jtrip.tiles.command.Info;

import co.jtrip.tiles.command.Notice;
import co.jtrip.tiles.command.NoticeForm;
import co.jtrip.tiles.command.NoticeSelect;
import co.jtrip.tiles.command.FnaNoticeForm;
import co.jtrip.tiles.command.FnaSelect;
import co.jtrip.tiles.command.Product;
import co.jtrip.tiles.command.ProductBusan;
import co.jtrip.tiles.command.ProductGangneung;
import co.jtrip.tiles.command.ProductJeju;
import co.jtrip.tiles.command.ProductUleungdo;
import co.jtrip.tiles.command.QnA;
import co.jtrip.tiles.command.QnaNoticeForm;
import co.jtrip.tiles.command.QnaSelect;
import co.jtrip.tiles.command.Reservation;
import co.jtrip.tiles.command.ReviewBusan;
import co.jtrip.tiles.command.ReviewGangneung;
import co.jtrip.tiles.command.ReviewJeju;
import co.jtrip.tiles.command.ReviewUlleungdo;
import co.jtrip.tiles.command.WriteForm;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String, Command> map = new HashMap<String, Command>();

	public FrontController() {
		super();
	}

	public void init(ServletConfig config) throws ServletException {
		// 명령 집단 저장하는 곳

		// main
		map.put("/main.do", new Main());
		map.put("/home.do", new Home());
		map.put("/info.do", new Info());

		map.put("/memberLogin.do", new MemberLogin()); // 로그인 폼.
		map.put("/memberLoginAction.do", new MemberLoginAction()); // 로그인 처리.
		map.put("/memberLogout.do", new MemberLogout()); // 로그아웃.
		map.put("/memberJoin.do", new MemberJoin()); // 회원가입 폼.
		map.put("/memberInsert.do", new MemberInsert()); // 회원가입 입력 처리.
		map.put("/ajaxMemberIdCheck.do", new AjaxMemberIdCheck()); //멤버 아이디 중복 확인.

		// Product 상품(패키지)
		map.put("/product.do", new Product());
		map.put("/productBusan.do", new ProductBusan());
		map.put("/productGangneung.do", new ProductGangneung());
		map.put("/productJeju.do", new ProductJeju());
		map.put("/productUleungdo.do", new ProductUleungdo());

		// Cart, Reservation
		map.put("/cart.do", new Cart());
		map.put("/reservation.do", new Reservation());
		
		//======================================================================

		// Review 리뷰 페이지
		map.put("/reviewBusan.do", new ReviewBusan());
		map.put("/reviewGangneung.do", new ReviewGangneung());
		map.put("/reviewJeju.do", new ReviewJeju());
		map.put("/reviewUlleungdo.do", new ReviewUlleungdo());
		map.put("/writeForm.do", new WriteForm());

		// Custom Center
		// 1)고객센터 메인
		map.put("/notice.do", new Notice());
		map.put("/qna.do", new QnA());
		map.put("/fna.do", new FnA());

		// 2) 등록, 수정 폼
		map.put("/noticeForm.do", new NoticeForm());
		map.put("/fnaNoticeForm.do", new FnaNoticeForm());
		map.put("/qnaNoticeForm.do", new QnaNoticeForm());

		// 3) 상세 조회 폼
		map.put("/noticeSelect.do", new NoticeSelect());
		map.put("/fnaSelect.do", new FnaSelect());
		map.put("/qnaSelect.do", new QnaSelect());
		
		//======================================================================


		// Admin
		map.put("/adminProduct.do", new AdminProduct());
		map.put("/adminProductInsert.do", new AdminProductInsert());
		
		

	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 실제 수행할 서비스

		request.setCharacterEncoding("utf-8"); // 한글깨짐 방지
		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		String page = uri.substring(contextPath.length());
		System.out.println("front의 page:" + page);
		
		Command command = map.get(page);
		String viewPage = command.exec(request, response);
		
		System.out.println("실행" +viewPage);

		if (!viewPage.endsWith(".do")) {
			
			if (viewPage.startsWith("ajax:")) { // ajax를 사용할 때
				response.setContentType("text/html; charset=UTF-8");
				response.getWriter().append(viewPage.substring(5));
				return;
			} else {
				if (viewPage.startsWith("no:")) {// tiles 사용안할때
					viewPage = "/WEB-INF/views/" + viewPage.substring(3) + ".jsp";
					System.out.println("viewPage_tiles 안 쓸때 경로 : " + viewPage);
				} else {
					viewPage = viewPage + ".tiles"; // tiles layout 사용할때
					System.out.println("viewPage_tiles 사용할때 경로: " + viewPage);
				}

				RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
				dispatcher.forward(request, response);
			}
		} else {
			response.sendRedirect(viewPage); // .do return
		}
		System.out.println("결과" + viewPage);
	}

}
