package com.dodream.spring.common.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.WebUtils;

import com.dodream.spring.member.model.service.MemberService;
import com.dodream.spring.member.model.vo.Member;

public class AuthenticationInterceptor extends HandlerInterceptorAdapter{
	
	@Autowired
	private MemberService mService;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		HttpSession session = request.getSession();
		Object obj = session.getAttribute("loginUser");
		
		if(obj != null){
			Cookie autoLogin = WebUtils.getCookie(request, "autoLogin");
			if(autoLogin != null){
				
				String sessionId = autoLogin.getValue();
						//session.getId();
				System.out.println(sessionId);
				Member mem = mService.checkUserWithSessionKey(sessionId);
				
				if(mem != null) {
					session.setAttribute("loginUser", mem);
					return true;
				}
				
				response.addCookie(autoLogin);
			}			
			response.sendRedirect("redirect:login.dr");
			return false;
		}
		
		return true;
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView mv) throws Exception{
		super.postHandle(request, response, handler, mv);
	}


}