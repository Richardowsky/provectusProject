package com.example.controler;

import com.example.domain.Book;
import com.example.repos.BookRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class AdminController {
    @Autowired
    private BookRepo bookRepo;



    @PostMapping("/newbook")
    public String newbook(@RequestParam Integer id,
                            @RequestParam String name,
                          @RequestParam String description,
                          @RequestParam String author,
                          @RequestParam String genre,
                          @RequestParam Double price,
                          Map<String, Object> model) {
        Book book = new Book();
        book.setId(id);
        book.setName(name);
        book.setDescription(description);
        book.setAuthor(author);
        book.setGenre(genre);
        book.setPrice(price);
        bookRepo.save(book);

        Iterable<Book> books = bookRepo.findAll();
        model.put("books", books);
        return "newbook";
    }

    @GetMapping("/newbook")
    public String main(Map<String, Object> model){
            Iterable<Book> books = bookRepo.findAll();
        model.put("books", books);
        return "newbook";
    }




}


