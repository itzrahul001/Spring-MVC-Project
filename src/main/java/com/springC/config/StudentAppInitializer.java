package com.springC.config;


import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class StudentAppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {
    @Override
    protected Class<?>[] getRootConfigClasses() {
        return new Class[0];
    }

    @Override
    protected Class<?>[] getServletConfigClasses() {
        Class[] classes = {StudentAppConfig.class};
        return classes;
    }

    @Override
    protected String[] getServletMappings() {

        return new String[]{"/"};



    }
}
