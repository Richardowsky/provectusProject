package com.example.controler;

import com.example.domain.Client;
import com.example.repos.ClientRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Map;
@Controller
public class ClientController {
    @Autowired
    private ClientRepo clientRepo;


    @GetMapping("/clientlist")
    public String clientList(Map<String, Object> model) {
        Iterable<Client> clients = clientRepo.findAll();
        model.put("clients", clients);
        return "clientlist";
    }
}
