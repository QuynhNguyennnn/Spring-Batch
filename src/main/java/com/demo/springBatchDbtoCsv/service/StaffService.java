// package com.demo.springBatchDbtoCsv.service;

// import org.springframework.batch.core.Job;
// import org.springframework.batch.core.JobParameters;
// import org.springframework.batch.core.JobParametersBuilder;
// import org.springframework.batch.core.launch.JobLauncher;
// import org.springframework.stereotype.Service;

// import lombok.RequiredArgsConstructor;
// import lombok.extern.slf4j.Slf4j;

// /**
//  * Staff Service.
//  * 
//  * @author QuynhNN
//  */
// @Service
// @RequiredArgsConstructor
// @Slf4j
// public class StaffService {

//     private final JobLauncher jobLauncher;
//     private final Job job;

//     /**
//      * Run job to save created staff to file.
//      * 
//      */
//     public void saveCreatedStaffToCsvFile() {
//         try {
//             JobParameters jobParameters = new JobParametersBuilder()
//                     .addLong("startAt", System.currentTimeMillis()).toJobParameters();
//             jobLauncher.run(job, jobParameters);
//         } catch (Exception e) {
//             log.error(e.getMessage());
//         }
//     }
// }
