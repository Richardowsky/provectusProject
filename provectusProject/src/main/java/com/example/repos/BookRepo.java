package com.example.repos;

import com.example.domain.Book;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface BookRepo extends CrudRepository<Book, Long> {

    List<Book> findByAuthor(String author);

    List<Book> findByGenre(String genre);

}



