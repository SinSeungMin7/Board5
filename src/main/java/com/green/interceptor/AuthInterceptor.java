package com.green.interceptor;

import org.jspecify.annotations.Nullable;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;

@Slf4j // lombok의 기능
@Component
public class AuthInterceptor implements HandlerInterceptor {
	
	// Interceptor : 페이지가 이동될때 Controller 앞에서 가로채기하는 클래스
	// 1.preHandle() 전처리(로그인 체크하는것)
	@Override
	public boolean preHandle(
			HttpServletRequest request,
			HttpServletResponse response,
			Object handler
			)
			throws Exception {
		System.out.println("1.preHandle");
		
		// 요청 주소
		String requestURI = request.getRequestURI();
		System.out.println("요청주소:" + requestURI);
		
		// /Users/LoginForm , /Users/Login 의 2개의 주소는 로그인대상에서 제외한다
		if( requestURI.contains("/Users/LoginForm") ) {
			return true;
		}
		if( requestURI.contains("/Users/Login") ) {
			return true;
		}
		
		// 사용자 로그인 정보를 세션 메모리에 user 이름으로 저장
		HttpSession session = request.getSession();
		Object        login = session.getAttribute("login");
		System.out.println(login);
		if( login == null ) {
			// 로그인 되어 있지 않다 로그인 페이지로 이동해라
			response.sendRedirect("/Users/LoginForm");
			return false;
		}
		// preHandle 의 return문의 의미
		// 컨트롤러 요청 url 로 가도되나 안되나를 결정한다 가도되면 true 안되면 false
		// return true : 컨트롤러에서 지정한 url 로 가게된다 
		return true;
	}

	// 2.postHandle() 후처리
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			@Nullable ModelAndView modelAndView) throws Exception {
		System.out.println("2.postHandle");
		HandlerInterceptor.super.postHandle(request, response, handler, modelAndView);
	}
	
}
