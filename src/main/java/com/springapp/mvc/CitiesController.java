package com.springapp.mvc;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by Administrator on 2016-04-10.
 */
@Controller
public class CitiesController {
    private static final Log log = LogFactory.getLog(CitiesController.class);

    @Autowired
    private JdbcTemplate jdbcT;

    @ResponseBody
    @RequestMapping(value="/Cities/list",
            method = RequestMethod.GET)
    public List findALL() {
        String sql = "select * from _cities";
        return jdbcT.queryForList(sql);
    }

}
