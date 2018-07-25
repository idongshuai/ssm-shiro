package net.dongshuai.dao;

import net.dongshuai.entity.Commpara;
import net.dongshuai.entity.SysCode;

import java.util.List;
import java.util.Map;

/**
 * 字典管理
 * 
 * @author
 * @email qq
 * @date 2018-6-06 14:49:28
 */
public interface CommparaDao extends BaseDao<Commpara> {

    List<SysCode> getCodeValues(Map<String, Object> params);

    List<Commpara> findByVerify(Commpara commpara);
}
