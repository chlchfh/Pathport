package com.pp.service;

import com.pp.domain.AboutBoard;
import com.pp.persistence.ConTactRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ContactService {

    private final ConTactRepository contactRepository;

    @Autowired
    public ContactService(ConTactRepository contactRepository) {
        this.contactRepository = contactRepository;
    }

    public void saveContact(AboutBoard supCode) {
        contactRepository.save(supCode);
    }
}
