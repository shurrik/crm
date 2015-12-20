package com.shurrik.crm.service.test;

import com.shurrik.crm.model.User;
import com.shurrik.crm.service.IUserService;
import com.crv.TestBase;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by shurrik on 2015/9/2.
 */
public class TestUserService extends TestBase{

    @Autowired
    private IUserService userService;

    @Test
    public void testFindAll()
    {
        List<User> list = userService.findAll();
        for(User user:list)
        {
            System.out.println(user.getRealName());
        }
    }
}
