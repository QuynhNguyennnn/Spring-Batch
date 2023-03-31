package com.demo.springBatchDbtoCsv.config;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import org.springframework.batch.item.ItemProcessor;
import org.springframework.lang.NonNull;

import com.demo.springBatchDbtoCsv.entity.Staff;

import lombok.extern.slf4j.Slf4j;

/**
 * Staff Item Processor.
 * 
 * @author QuynhNN
 */
@Slf4j
public class StaffItemProcessor implements ItemProcessor<Staff, Staff> {

    @Override
    public Staff process(@NonNull Staff staff) throws Exception {
        LocalDate now = LocalDate.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        if (staff.getCreateDateTime() == null) {
            log.info("Staff does not have created date. Staff id: " + staff.getId());
            return null;
        } else {
            LocalDate createdDate = LocalDate.parse(staff.getCreateDateTime(), formatter);
            if (!createdDate.equals(now)) {
                log.info("Staff is not created today. Staff id: " + staff.getId());
                return null;
            }
            return staff;
        }
    }
}
