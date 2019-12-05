package cn.sm1234.service;

import java.util.List;

import cn.sm1234.domain.Customer;
import cn.sm1234.domain.Students;


public interface CustomerService {

	/**
	 * 鏌ヨ鎵�鏈夋暟鎹�
	 */
	public List<Students> findAll();

	public void save(Students students);
	
	public void update(Students students);

	public Students findById(Integer id);

	public void delete(Integer[] id);
}
