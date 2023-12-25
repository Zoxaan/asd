package com.example.demogongadze.entity;

public enum Role {
    USER("Пользователь"),
    ADMIN("Администратор");

    private final String name;

    Role(String name) {
        this.name = name;
    }
}