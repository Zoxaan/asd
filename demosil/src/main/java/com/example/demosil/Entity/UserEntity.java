package com.example.demosil.Entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Set;

@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "users")
public class UserEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String username;
    private String password;

    @CollectionTable(name = "role" , joinColumns = @JoinColumn(name = "users_id"))
    @ElementCollection(targetClass = Role.class , fetch = FetchType.EAGER)
    @Enumerated(EnumType.STRING)
    private Set<Role> role;

}
