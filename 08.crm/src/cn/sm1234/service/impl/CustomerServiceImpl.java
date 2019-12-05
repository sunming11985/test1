package cn.sm1234.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.sm1234.dao.CustomerMapper;
import cn.sm1234.domain.Customer;
import cn.sm1234.domain.Students;
import cn.sm1234.service.CustomerService;

@Service("customerService")
@Transactional
public class CustomerServiceImpl implements CustomerService {

	//娉ㄥ叆Mapper鎺ュ彛瀵硅薄
	@Resource
	private CustomerMapper customerMapper;
	
	public List<Students> findAll() {
		return customerMapper.findAl();
	}

	public void save(Students students) {
		//鍒ゆ柇鏄坊鍔犺繕鏄慨鏀�
		if(students.getStu_id()!=null){
			//淇敼
			customerMapper.update(students);
		}else{
			//澧炲姞
			customerMapper.save(students);
		}
	}

	public Students findById(Integer id) {
		return customerMapper.findById(id);
	}

	public void delete(Integer[] id) {
		customerMapper.delete(id);
	}


	public void update(Students students) {
		// TODO Auto-generated method stub
		customerMapper.update(students);
	}

}
