package com.dobby.project.ming.dao;

import com.dobby.project.ming.domain.User;
import junit.framework.TestCase;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;

import static org.junit.Assert.assertTrue;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class UserDaoImplTest {
        @Autowired
            UserDao userDao;
    public void testDeleteUser() {
    }

    public void testSelectUser() {
    }

    public void testInsertUser() {
    }

    public void testDeleteAll() {
    }
}
