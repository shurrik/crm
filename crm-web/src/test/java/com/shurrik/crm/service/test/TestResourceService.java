package com.shurrik.crm.service.test;

import com.crv.TestBase;
import com.shurrik.crm.model.Resource;
import com.shurrik.crm.service.IResourceService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by crv on 2015-12-07.
 */
public class TestResourceService extends TestBase {

    @Autowired
    private IResourceService resourceService;

    @Test
    public void testFindAll()
    {
        List<Resource> list = resourceService.findAll();
        for(Resource res:list)
        {
            System.out.println(res.getName());
        }
    }
}
