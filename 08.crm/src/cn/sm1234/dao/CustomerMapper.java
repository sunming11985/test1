package cn.sm1234.dao;

import java.util.List;

import cn.sm1234.domain.Customer;
import cn.sm1234.domain.Students;

public interface CustomerMapper {

	/**
	 * 鏌ヨ鎵�鏈夋暟鎹�
	 */
	public List<Students> findAl();

	/**
	 * 淇濆瓨鏁版嵁
	 * @param customer
	 */
	public void save(Students students);

	/**
	 * 鏍规嵁id 鏌ヨ瀵硅薄
	 * @param id
	 * @return
	 */
	public Students findById(Integer id);
	
	/**
	 * 淇敼瀵硅薄鏁版嵁
	 * @param customer
	 */
	public void update(Students students);

	/**
	 * 鍒犻櫎鏁版嵁
	 * @param id
	 */
	public void delete(Integer[] id);
}
