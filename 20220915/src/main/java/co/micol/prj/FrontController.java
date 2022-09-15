package co.micol.prj;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;
import co.micol.prj.member.command.MemberJoinForm;
import co.micol.prj.member.command.MemberSelect;
import co.micol.prj.member.command.MemberSelectList;
import co.micol.prj.member.command.memberInsert;

/**
 * Servlet implementation class FrontController
 * 모든 .do 요청을 분석하고 처리한다.
 */
@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String, Command> map = new HashMap<String, Command>(); // 요청한 값을 저장하기 위해서 해쉬맵 사용.
       
    public FrontController() {
        super();
        
    }

	public void init(ServletConfig config) throws ServletException {
		// 모든 요청을 등록하는 곳.
		map.put("/main.do", new MainCommand()); //처음 시작하는 페이지. Command에 new MainCommand()가 넘어감.
		map.put("/memberSelectList.do", new MemberSelectList()); // 멤버 목록 보기
		map.put("/memberSelect.do", new MemberSelect()); // 멤버 상세 조회.
		map.put("/memberJoinForm.do", new MemberJoinForm()); // 멤버 입력 화면
		map.put("/memberInsert.do", new memberInsert()); // 멤버 입력 처리
		
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 요청을 분석하고, 처리하고, 결과를 돌려주는 곳.
		request.setCharacterEncoding("utf-8"); // 한글 깨짐 방지를 위해서.
		String uri = request.getRequestURI();  // 도메인을 제외한 실제 요청 정보를 구하는 것. contextPath를 빼줘야 실제 요청을 알 수 있음.
		String contextPath = request.getContextPath(); // ContextPath 구함.
		String page = uri.substring(contextPath.length()); // uri 에서 contextPath를 빼면 처리할 요청명 구해짐.
		System.out.println("url= " + request.getRequestURL());
		System.out.println("uri= " + uri);
		System.out.println("contextPath= " + contextPath);
		System.out.println("page= " +page);
		System.out.println(request.getRemoteUser());
		
		Command command = map.get(page); // 처리할 Command를 찾음.
		String viewPage = command.exec(request, response); // Command를 실행하고 돌려줄 페이지를 받음.
		
		if(!viewPage.endsWith(".do")) {
			viewPage = "/WEB-INF/views/" + viewPage + ".jsp";
			
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		} else {
			response.sendRedirect(viewPage);
		}
	}

}
