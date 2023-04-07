package com.demo.springBatchDbtoCsv.config;

import org.springframework.batch.core.Job;
import org.springframework.batch.core.JobParameters;
import org.springframework.batch.core.JobParametersBuilder;
import org.springframework.batch.core.launch.JobLauncher;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@RequiredArgsConstructor
@Slf4j
@Component
@EnableScheduling
public class TaskScheduler {
    
    private final JobLauncher jobLauncher;
    private final Job job;

    /**
     * Run job to save created staff to file.
     * 
     */
    @Scheduled(cron = "0 * * * * *")
    public void saveCreatedStaffToCsvFile() {
        try {
            JobParameters jobParameters = new JobParametersBuilder()
                    .addLong("startAt", System.currentTimeMillis()).toJobParameters();
            jobLauncher.run(job, jobParameters);
        } catch (Exception e) {
            log.error(e.getMessage());
        }
    }
}
