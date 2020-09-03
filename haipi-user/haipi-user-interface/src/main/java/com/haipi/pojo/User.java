package com.haipi.pojo;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import tk.mybatis.mapper.annotation.KeySql;

import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Data
@Table(name = "user")
public class User implements Serializable {
    @Id
    @KeySql(useGeneratedKeys = true)
    private Long id;
    private String username;
    @JsonIgnore
    private String password;
    private String phone;
    @JsonIgnore
    private String salt;
    private Date created;
}
