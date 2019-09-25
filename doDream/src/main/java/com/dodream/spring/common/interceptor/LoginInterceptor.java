/*
 * package com.dodream.spring.common.interceptor;
 * 
 * import javax.servlet.http.Cookie; import
 * javax.servlet.http.HttpServletRequest; import
 * javax.servlet.http.HttpServletResponse; import
 * javax.servlet.http.HttpSession;
 * 
 * import org.slf4j.Logger; import org.slf4j.LoggerFactory; import
 * org.springframework.ui.ModelMap; import
 * org.springframework.web.servlet.ModelAndView; import
 * org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
 * 
 * public class LoginInterceptor extends HandlerInterceptorAdapter { private
 * static final String LOGIN = "login"; private static final Logger logger =
 * LoggerFactory.getLogger(LoginInterceptor.class);
 * 
 * @Override public void postHandle(HttpServletRequest request,
 * HttpServletResponse response, Object handler, ModelAndView mv) throws
 * Exception{ HttpSession sessoin = request.getSession(); ModelMap modelmap =
 * mv.getModelMap(); Object member = modelmap.get("loginUser");
 * 
 * if(member != null) { logger.info("logIn Success!");
 * sessoin.setAttribute(LOGIN, member); response.sendRedirect("home.dr");
 * 
 * if(request.getParameter("autoLogin") != null) { logger.info("remember me!");
 * 
 * Cookie ck = new Cookie("autoLogin", sessoin.getId()); ck.setPath("/");
 * ck.setMaxAge(60*60*24*15); //15일동안 쿠키 저장
 * 
 * response.addCookie(ck); } } }
 * 
 * @Override public boolean preHandle(HttpServletRequest request,
 * HttpServletResponse response, Object handler) throws Exception{ HttpSession
 * session = request.getSession(); if(session.getAttribute(LOGIN) != null) {
 * logger.info("clear logIn data before"); session.removeAttribute(LOGIN); }
 * 
 * return true; }
 * 
 * }
 */