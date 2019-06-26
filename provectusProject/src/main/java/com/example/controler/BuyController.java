package com.example.controler;

import com.example.domain.Book;
import com.example.domain.Client;
import com.example.repos.BookRepo;
import com.example.repos.ClientRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class BuyController {
    @Autowired
    private ClientRepo clientRepo;

    @Autowired
    private BookRepo bookRepo;

    @GetMapping("/buypage")
    public String buypage(Map<String, Object> model) {
        Iterable<Book> books = bookRepo.findAll();
        model.put("books", books);
        return "buypage";
    }

    @PostMapping("/buypage")
    public String saveClient(
            @RequestParam String name,
            @RequestParam String surname,
            @RequestParam String address,
            @RequestParam String book,
            Map<String, Object> model) {

        Client user = new Client(name, surname, address);
        user.setBook(book);
        clientRepo.save(user);

        Iterable<Book> books = bookRepo.findAll();
        model.put("books", books);
        return "buypage";
    }


}

