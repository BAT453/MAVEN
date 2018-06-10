package com.dimon.controller;

import com.dimon.model.Book;
import com.dimon.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BookController {
    private BookService bookService;

    @Autowired(required=true)
    @Qualifier(value="bookService")
    public void setBookService(BookService bookService) {
        this.bookService = bookService;
    }

    @RequestMapping(value="/")
    public String hello() {
        return "redirect:/music";
    }

    @RequestMapping(value="music" , method= RequestMethod.GET)
    public String listBooks(Model model) {
        model.addAttribute("book",new Book());
        model.addAttribute("listBooks",this.bookService.listBooks());
        return "books";
    }

    @RequestMapping(value="admin/add",method = RequestMethod.POST)
    public String addBook(@ModelAttribute("book") Book book){
        if(book.getId()==0) {
            this.bookService.addBook(book);
        }else{
            this.bookService.updateBook(book);
        }
        return "redirect:/books";
    }

    @RequestMapping(value="admin/add",method = RequestMethod.GET)
    public String addBook(Model model){
        model.addAttribute("book",new Book());
        return "booksAdd";
    }

    @RequestMapping(value="admin/remove/{id}")
    public String removeBook(@PathVariable("id") int id){
        this.bookService.removeBook(id);
        return "redirect:/books";
    }

    @RequestMapping(value="admin/edit/{id}",method = RequestMethod.GET)
    public String editBook(@PathVariable("id") int id, Model model){
        model.addAttribute("book",this.bookService.getBookById(id));
        model.addAttribute("listBooks",this.bookService.listBooks());
        return "booksEdit";
    }

    @RequestMapping(value="admin/edit/{id}",method = RequestMethod.POST)
    public String editBook(@ModelAttribute("book") Book book){
        return addBook(book);
    }
}

