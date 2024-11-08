package com.springbatch.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AppController {

	@GetMapping("hi")
	public String returnHi() {
		return "Hi";
	}

	@GetMapping("bye")
	public String returnBye() {
		return "Bye";
	}

}
