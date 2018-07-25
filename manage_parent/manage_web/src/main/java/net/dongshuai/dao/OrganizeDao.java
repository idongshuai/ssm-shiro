package net.dongshuai.dao;

import net.dongshuai.entity.Organize;

import java.util.List;

/**
 * 记录组织机构管理信息
 * 
 * @author
 */
public interface OrganizeDao extends BaseDao<Organize> {

    List<Organize> getList();

    List<Organize> queryByParentId(String orgId);

    Organize queryByOrgCode(String orgCode);
}
