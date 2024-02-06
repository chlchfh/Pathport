package com.pp.controller;

import com.pp.domain.Bookmark;
import com.pp.service.BookmarkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/bookmarks")
public class BookmarkController {

    private final BookmarkService bookmarkService;

    @Autowired
    public BookmarkController(BookmarkService bookmarkService) {
        this.bookmarkService = bookmarkService;
    }

    @PostMapping("/save")
    public ResponseEntity<Bookmark> saveBookmark(@RequestBody Bookmark bookmark) {
        Bookmark savedBookmark = bookmarkService.saveBookmark(bookmark);
        return new ResponseEntity<>(savedBookmark, HttpStatus.CREATED);
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<Void> deleteBookmark(@PathVariable("id") Integer id) {
        bookmarkService.deleteBookmark(id);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
}
