package net.dongshuai.aop;

import com.alibaba.fastjson.JSON;
import net.dongshuai.utils.HttpContextUtils;
import net.dongshuai.utils.IPUtils;
import net.dongshuai.utils.ShiroUtils;
import net.dongshuai.service.SysLogService;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;
import java.util.Date;


/**
 * 系统日志，切面处理类
 * 
 * @author
 * @email
 * @date 2018年3月8日 上午11:07:35
 */
@Aspect
@Component
public class SysLogAspect {
	@Autowired
	private SysLogService sysLogService;
	
	@Pointcut("@annotation(net.dongshuai.annotation.SysLog)")
	public void logPointCut() { 
		
	}
	
	@Before("logPointCut()")
	public void saveSysLog(JoinPoint joinPoint) {
		MethodSignature signature = (MethodSignature) joinPoint.getSignature();
		Method method = signature.getMethod();
		
		net.dongshuai.entity.SysLog sysLog = new net.dongshuai.entity.SysLog();
		net.dongshuai.annotation.SysLog syslog = method.getAnnotation(net.dongshuai.annotation.SysLog.class);
		if(syslog != null){
			//注解上的描述 
			sysLog.setOperation(syslog.value());
		}
		
		//请求的方法名
		String className = joinPoint.getTarget().getClass().getName();
		String methodName = signature.getName();
		sysLog.setMethod(className + "." + methodName + "()");
		
		//请求的参数
		Object[] args = joinPoint.getArgs();
		String params = JSON.toJSONString(args[0]);
		sysLog.setParams(params);
		
		//获取request
		HttpServletRequest request = HttpContextUtils.getHttpServletRequest();
		//设置IP地址
		sysLog.setIp(IPUtils.getIpAddr(request));
		
		//用户名
		String username = ShiroUtils.getUserEntity().getUsername();
		sysLog.setUsername(username);
		
		sysLog.setCreateDate(new Date());
		//保存系统日志
		sysLogService.save(sysLog);
	}
	
}
