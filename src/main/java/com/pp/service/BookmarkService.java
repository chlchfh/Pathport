package com.pp.service;

import com.pp.domain.Bookmark;
import com.pp.domain.Des;
import com.pp.repository.BookmarkRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookmarkService {

    private final BookmarkRepository bookmarkRepository;

    @Autowired
    public BookmarkService(BookmarkRepository bookmarkRepository) {
        this.bookmarkRepository = bookmarkRepository;
    }

    public List<Bookmark> getAllBookmarks() {
        return bookmarkRepository.findAll();
    }

    public Bookmark getBookmarkById(Integer bmCode) {
        return bookmarkRepository.findById(bmCode).orElse(null);
    }

    public Bookmark saveBookmark(Bookmark bookmark) {
        return bookmarkRepository.save(bookmark);
    }

    public void deleteBookmark(Integer bmCode) {
        bookmarkRepository.deleteById(bmCode);
    }

    public Bookmark updateBookmark(Integer bmCode, Bookmark updatedBookmark) {
        Bookmark existingBookmark = bookmarkRepository.findById(bmCode).orElse(null);
        if (existingBookmark != null) {
            existingBookmark.setUserEmail(updatedBookmark.getUserEmail());
            existingBookmark.setDesCode(updatedBookmark.getDesCode());
            existingBookmark.setBmCls(updatedBookmark.getBmCls());
            existingBookmark.setBmNn(updatedBookmark.getBmNn());
            return bookmarkRepository.save(existingBookmark);
        }
        return null;
    }
}