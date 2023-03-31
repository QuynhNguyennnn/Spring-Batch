package com.demo.springBatchDbtoCsv.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Staff.
 * 
 * @author QuynhNN
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Staff {

    private int id;
    private String name;
    private String address;
    private String phoneNumber;
    private String dateOfBirth;
    private String createUser;
    private String createDateTime;
    private String updateUser;
    private String updateDateTime;
}
