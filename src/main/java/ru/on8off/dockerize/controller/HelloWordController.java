package ru.on8off.dockerize.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWordController {

    @GetMapping("/")
    public String get(){
        return "Hello World";
    }

}
