package net.dongshuai.service;

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
public interface CommparaService {
	
	Commpara queryObject(Integer paraId);
	
	List<Commpara> queryList(Map<String, Object> map);
	
	int queryTotal(Map<String, Object> map);
	
	void save(Commpara commpara);
	
	void update(Commpara commpara);
	
	void delete(Integer paraId);
	
	void deleteBatch(Integer[] paraIds);

    void updateState(Integer[] ids, String stateValue);

	List<SysCode> getCodeValues(Map<String, Object> params);

    List<Commpara> findByVerify(Commpara commpara);
}
