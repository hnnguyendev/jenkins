package me.hnnguyen.jenkins.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/api/greeting")
public class GreetingController {

    @GetMapping(value = "")
    public String getGreeting() {
        return "Hello";
    }

}
