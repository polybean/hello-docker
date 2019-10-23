package com.example.demo;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import reactor.core.publisher.Mono;

@RestController
@RequestMapping
public class HomeController {
    @GetMapping
    public ResponseEntity<Mono<String>> index() {
        return ResponseEntity.ok(Mono.just("Hello World!"));
    }
}
