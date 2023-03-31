package com.demo.springBatchDbtoCsv.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.demo.springBatchDbtoCsv.service.StaffService;

import lombok.RequiredArgsConstructor;

/**
 * Staff Controller.
 * 
 * @author QuynhNN
 */
@RestController
@RequestMapping("spring-batch")
@RequiredArgsConstructor
public class StaffController {

    private final StaffService staffService;

    /**
     * Save staff created during the day to csv file.
     */
    @PostMapping("/save-to-file")
    public void addCreatedStaffToCsv() {
        staffService.saveCreatedStaffToCsvFile();
    }
}
