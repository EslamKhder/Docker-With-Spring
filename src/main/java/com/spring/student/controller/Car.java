package com.spring.student.controller;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Car {

    @Id
    private int id;

    private String name;
}
