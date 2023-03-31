package com.demo.springBatchDbtoCsv.config;

import javax.sql.DataSource;

import org.springframework.batch.core.Job;
import org.springframework.batch.core.Step;
import org.springframework.batch.core.configuration.annotation.EnableBatchProcessing;
import org.springframework.batch.core.configuration.annotation.JobBuilderFactory;
import org.springframework.batch.core.configuration.annotation.StepBuilderFactory;
import org.springframework.batch.core.job.builder.FlowJobBuilder;
import org.springframework.batch.core.job.builder.JobBuilder;
import org.springframework.batch.core.launch.support.RunIdIncrementer;
import org.springframework.batch.core.step.builder.SimpleStepBuilder;
import org.springframework.batch.core.step.builder.StepBuilder;
import org.springframework.batch.item.database.JdbcCursorItemReader;
import org.springframework.batch.item.file.FlatFileItemWriter;
import org.springframework.batch.item.file.transform.BeanWrapperFieldExtractor;
import org.springframework.batch.item.file.transform.DelimitedLineAggregator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.FileSystemResource;

import com.demo.springBatchDbtoCsv.entity.Staff;

/**
 * Spring Batch Config.
 * 
 * @author QuynhNN
 */
@EnableBatchProcessing
@Configuration
public class SpringBatchConfig {

    @Autowired
    private JobBuilderFactory jobBuilderFactory;

    @Autowired
    private StepBuilderFactory stepBuilderFactory;

    @Autowired
    private DataSource dataSource;

    /**
     * Configure reader.
     * 
     * @return reader
     */
    @Bean
    public JdbcCursorItemReader<Staff> reader() {
        JdbcCursorItemReader<Staff> reader = new JdbcCursorItemReader<>();
        reader.setSql("select id, name, address, phone_number, date_of_birth, create_date_time from staff");
        reader.setDataSource(dataSource);
        reader.setFetchSize(100);
        reader.setRowMapper(new StaffResultRowMapper());
        return reader;
    }

    /**
     * Configure writer.
     * 
     * @return writer
     */
    @Bean
    public FlatFileItemWriter<Staff> writer() {
        FlatFileItemWriter<Staff> writer = new FlatFileItemWriter<>();
        writer.setResource(new FileSystemResource("data.csv"));
        writer.setLineAggregator(getDelimitedLineAggregator());
        return writer;
    }

    /**
     * Configure delimited line aggregator.
     * 
     * @return aggregator
     */
    private DelimitedLineAggregator<Staff> getDelimitedLineAggregator() {
        BeanWrapperFieldExtractor<Staff> beanWrapperFieldExtractor = new BeanWrapperFieldExtractor<>();
        beanWrapperFieldExtractor
                .setNames(new String[] { "id", "name", "address", "phoneNumber", "dateOfBirth", "createDateTime" });
        DelimitedLineAggregator<Staff> aggregator = new DelimitedLineAggregator<>();
        aggregator.setDelimiter(", ");
        aggregator.setFieldExtractor(beanWrapperFieldExtractor);
        return aggregator;
    }

    /**
     * Configure step.
     * 
     * @return step
     */
    @Bean
    public Step getDbToCsvStep() {
        StepBuilder stepBuilder = stepBuilderFactory.get("getDbToCsvStep");
        SimpleStepBuilder<Staff, Staff> simpleStepBuilder = stepBuilder.chunk(1);
        return simpleStepBuilder.reader(reader()).processor(new StaffItemProcessor()).writer(writer()).build();
    }

    /**
     * Configure job.
     * 
     * @return job
     */
    @Bean
    public Job dbToCsvJob() {
        JobBuilder jobBuilder = jobBuilderFactory.get("dbToCsvJob");
        jobBuilder.incrementer(new RunIdIncrementer());
        FlowJobBuilder flowJobBuilder = jobBuilder.flow(getDbToCsvStep()).end();
        return flowJobBuilder.build();
    }
}
