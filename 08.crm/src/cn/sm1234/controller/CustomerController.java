package cn.sm1234.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.afterturn.easypoi.entity.vo.BigExcelConstants;
import cn.afterturn.easypoi.excel.ExcelExportUtil;
import cn.afterturn.easypoi.excel.ExcelImportUtil;
import cn.afterturn.easypoi.excel.entity.ExportParams;
import cn.afterturn.easypoi.excel.entity.ImportParams;
import cn.afterturn.easypoi.excel.entity.enmus.ExcelType;
import cn.afterturn.easypoi.excel.entity.result.ExcelImportResult;
import cn.afterturn.easypoi.view.PoiBaseView;
import cn.sm1234.domain.Customer;
import cn.sm1234.domain.Students;
import cn.sm1234.service.CustomerService;
import cn.sm1234.service.utils.FileUtil;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	// 娉ㄥ叆service瀵硅薄
	@Resource
	private CustomerService customerService;

	/**
	 * 鏌ヨ鎵�鏈夋暟鎹紝缁欓〉闈㈣繑鍥瀓son鏍煎紡鏁版嵁 easyui鐨刣atagrid缁勪欢锛岄渶瑕佸睍绀烘暟鎻愪緵json鏁版嵁锛� [
	 * {id:1,name:xxx},{id:1,name:xxx} ]
	 */
	@RequestMapping("/list")
	@ResponseBody // 鐢ㄤ簬杞崲瀵硅薄涓簀son
	public List<Students> list() {
		// 鏌ヨ鏁版嵁
		List<Students> list = customerService.findAll();
		return list;
	}

	// 璁捐Map鑱氬悎瀛樺偍闇�瑕佺粰椤甸潰鐨勫璞℃暟鎹�
	private Map<String, Object> result = new HashMap<String, Object>();

	/**
	 * 鍒嗛〉鏌ヨ
	 */
	@RequestMapping("/listByPage")
	@ResponseBody
	public Map<String, Object> listByPage(Integer page, Integer rows) {
		// 璁剧疆鍒嗛〉鍙傛暟
		PageHelper.startPage(page, rows);
		// 鏌ヨ鎵�鏈夋暟鎹�
		List<Students> list = customerService.findAll();

		// 浣跨敤PageInfo灏佽鏌ヨ缁撴灉
		PageInfo<Students> pageInfo = new PageInfo<Students>(list);

		// 浠嶱ageInfo瀵硅薄鍙栧嚭鏌ヨ缁撴灉
		// 鎬昏褰曟暟
		long total = pageInfo.getTotal();
		// 褰撳墠椤垫暟鎹垪琛�
		List<Students> custList = pageInfo.getList();

		result.put("total", total);
		result.put("rows", custList);

		return result;
	}

	/**
	 * 淇濆瓨鏁版嵁
	 */
	@RequestMapping("/save")
	@ResponseBody
	public Map<String, Object> save(Students students) {
		System.out.println(students);
		try {
			customerService.save(students);
			result.put("success", "保存成功");
		} catch (Exception e) {
			e.printStackTrace();
			result.put("success", false);
			result.put("msg", e.getMessage());
		}
		return result;
	}

	/**
	 * 鏍规嵁id 鏌ヨ瀵硅薄
	 */
	@RequestMapping("/findById")
	@ResponseBody
	public Students findById(Integer id) {

		System.out.println(id);
		Students cust = customerService.findById(id);
		return cust;
	}

	/**
	 * 鍒犻櫎鏁版嵁
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Map<String, Object> delete(@RequestParam(value = "id[]") Integer[] id) {

		try {
			customerService.delete(id);
			result.put("success", true);
		} catch (Exception e) {
			e.printStackTrace();
			result.put("success", false);
			result.put("msg", e.getMessage());
		}
		return result;
	}

	@RequestMapping("/update")
	@ResponseBody
	public Map<String, Object> update(Students students) {

		try {
			customerService.update(students);
			result.put("success", true);
		} catch (Exception e) {
			e.printStackTrace();
			result.put("success", false);
			result.put("msg", e.getMessage());
		}
		return result;
	}

}
