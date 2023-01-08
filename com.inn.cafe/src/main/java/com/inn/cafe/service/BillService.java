package com.inn.cafe.service;

import org.springframework.http.ResponseEntity;

import java.util.Map;

public interface BillService {
    ResponseEntity<String> generateReport(Map<String, Object> requestMap);
}
