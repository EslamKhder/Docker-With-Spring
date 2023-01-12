package com.spring.student.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class Student {

    @Value("${name}")
    private String name;

    @Value("${age}")
    private String age;

    @Value("${PHASE}")
    private String phase;

    @Value("${server.port}")
    private String port;

    @GetMapping("/student")
    public String student(){
        return "Hi Student " + name + " With age " + age + " WITH " + phase + " With " + port;
    }
}
