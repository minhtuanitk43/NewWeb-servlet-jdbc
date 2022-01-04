package com.laptrinhjavaweb.dao;

import java.util.List;

import com.laptrinhjavaweb.model.NewModel;
import com.laptrinhjavaweb.paging.Pageble;

public interface INewDAO extends GenericDAO<NewModel> {
	List<NewModel> findByCategoryId(Long categoryId);

	Long save(NewModel newModel);
	void update(NewModel updateNew);
	void delete(long id);
	NewModel findOne(long id);
	List<NewModel> findAll(Pageble pageble);
	int getTotalItem();
}
