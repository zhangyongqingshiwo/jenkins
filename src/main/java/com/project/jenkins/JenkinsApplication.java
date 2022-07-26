package com.project.jenkins;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@SpringBootApplication
@RequestMapping("/test")
public class JenkinsApplication {

    public static void main(String[] args) {
        SpringApplication.run(JenkinsApplication.class, args);
    }

    @RequestMapping("/test1")
    public String test1() {
        return "haha";
    }

    @RequestMapping("/test2")
    public Integer test2() {
        int j = 0;
        for (int i = 0; i < 10000000; i++) {
            j++;
        }
        return j;
    }
}
