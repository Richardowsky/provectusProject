package com.example.controler;

import com.example.domain.Book;
import com.example.repos.BookRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class MainController {
    @Autowired
    private BookRepo bookRepo;

    @GetMapping("/")
    public String greeting(
            Map<String, Object> model) {
        return "greeting";
    }

    @GetMapping("/main")
    public String main(@RequestParam(required = false, defaultValue = "")String filterGenre,
                       @RequestParam(required = false, defaultValue = "")String filterAuthor,
                       Model model) {
        Iterable<Book> books = bookRepo.findAll();

        if (filterGenre != null && !filterGenre.isEmpty()) {
            books = bookRepo.findByGenre(filterGenre);
        } else {
            books = bookRepo.findAll();
        }
        model.addAttribute("books", books);
        if (filterGenre != null) {
            model.addAttribute("lifterGenre", filterGenre);
        }


        if (filterAuthor != null && !filterAuthor.isEmpty()) {
            books = bookRepo.findByAuthor(filterAuthor);
        } else {
            books = bookRepo.findAll();
        }
        model.addAttribute("books", books);
        if (filterAuthor != null) {
            model.addAttribute("lifterAuthor", filterAuthor);
        }
        return "main";
    }






}

