package com.agungwicaksonoputro.queuemanagementservice.model.entity;

import com.agungwicaksonoputro.corelib.model.base.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.sql.Timestamp;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Entity
@Table(name = "virtual_queue")
public class VirtualQueue extends BaseEntity {

    @Column(name = "customer_id")
    private String customerId;

    @Column(name = "train_id")
    private String trainId;

    @Column(name = "class_id")
    private String classId;

    @Column(name = "queue_status")
    private String queueStatus;

    @Column(name = "booking_date")
    private Timestamp bookingDate;

    @Column(name = "estimated_waiting_time")
    private Integer estimatedWaitingTime;

    @Column(name = "priority_number")
    private Integer priorityNumber;

    @Column(name = "booking_reference")
    private String bookingReference;
}
