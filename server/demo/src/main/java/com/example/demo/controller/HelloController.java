package com.example.demo.controller;

import com.example.demo.JPATestRepository;
import com.example.demo.entity.TestEntity;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Tag(name = "Hello", description = "테스트용 API")
@RestController
public class HelloController {

    @Autowired
    private JPATestRepository jpaTestRepository;

    @Operation(summary = "say HELLO!", description = "HELLO! 출력")
    @ApiResponses({
            @ApiResponse(responseCode = "200", description = "SUCCESS"),
            @ApiResponse(responseCode = "400", description = "BAD REQUEST"),
            @ApiResponse(responseCode = "404", description = "NOT FOUND"),
            @ApiResponse(responseCode = "500", description = "INTERNAL SERVER ERROR")

    })
    @GetMapping("/api/test/hello")
    @ResponseBody
    public String sayHello(){
        return "HELLO!";
    }

    @Operation(summary = "get Data from Database", description = "DB 서버 데이터 출력")
    @ApiResponse(responseCode = "200", description = "성공")
    @GetMapping("/api/test/get")
    @ResponseBody
    public List<TestEntity> getData() {
        return jpaTestRepository.findAll();
    }

    @Operation(summary = "insert Data to Database", description = "DB 서버 데이터 입력")
    @ApiResponse(responseCode = "200", description = "성공")
    @PutMapping("/api/test/insert")
    public void insertData(@RequestParam Integer integer) {
        TestEntity data = new TestEntity();
        data.setTestData(integer);
        jpaTestRepository.save(data);
    }
}