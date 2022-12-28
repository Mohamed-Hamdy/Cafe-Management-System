package com.inn.cafe.dao;

import com.inn.cafe.POJO.Category;
import com.inn.cafe.POJO.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CategoryDao extends JpaRepository<Category, Integer> {
    List<Category> getAllCategory();

}
