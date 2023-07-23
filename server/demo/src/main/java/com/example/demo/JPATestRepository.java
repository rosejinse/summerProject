package com.example.demo;

import com.example.demo.entity.TestEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface JPATestRepository extends JpaRepository<TestEntity, Integer> {
    List<TestEntity> findAll();
}
