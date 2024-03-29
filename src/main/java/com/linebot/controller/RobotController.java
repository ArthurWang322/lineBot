package com.linebot.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/robot")
public class RobotController {

    @GetMapping("/test")
    public ResponseEntity<String> test() {
        return new ResponseEntity<String>("Hello,20240308!!", HttpStatus.OK);
    }

}
