package net.dongshuai.dao;

import net.dongshuai.entity.SysCode;

import java.util.List;
import java.util.Map;

/**
 * 表码信息表
 * 
 * @author
 * @email
 * @date 2018-06-29 10:46:14
 */
public interface SysCodeDao extends BaseDao<SysCode> {

    List<SysCode> getCodeValues(Map<String, Object> params);

    List<SysCode> findByVerify(SysCode sysCode);
}
