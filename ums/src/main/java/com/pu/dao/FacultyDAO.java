package com.pu.dao;

import com.pu.entities.Faculty;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class FacultyDAO {

    private JdbcTemplate jdbcTemplate;
    
    @Autowired
    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public int insertFaculty(Faculty f) {
        String sql="insert into faculty(FacultyId,FacultyName,DeptId) values('"+f.getFacultyId()+"', '"+f.getFacultyName()+"', '"+f.getDeptId()+"')";
        return jdbcTemplate.update(sql);
    }

    public int updateFaculty(Faculty f) {
        String sql = "update faculty set FacultyName = '" + f.getFacultyName() +"',DeptId = '" + f.getDeptId() +"' where FacultyId = " + f.getFacultyId();
        return jdbcTemplate.update(sql);
    }

    public int deleteFaculty(int facultyId) {
        String sql = "delete from faculty where FacultyId="+facultyId;
        return jdbcTemplate.update(sql);
    }
    
	@SuppressWarnings("deprecation")
	public Faculty getFacultyById(int facultyId) {
        String sql = "select * from faculty where FacultyId=?";
        return jdbcTemplate.queryForObject(sql, new Object[]{facultyId}, new BeanPropertyRowMapper<>(Faculty.class));
    }

    public List<Faculty> getAllFaculty() {
        String sql = "select * from faculty";
        return jdbcTemplate.query(sql, new RowMapper<Faculty>() {
            public Faculty mapRow(ResultSet rs, int row) throws SQLException {
                Faculty f = new Faculty();
                f.setFacultyId(rs.getInt("facultyId"));
                f.setFacultyName(rs.getString("facultyName"));
                f.setDeptId(rs.getInt("deptId"));
                return f;
            }
        });
    }
}

