package com.army.movieEro.tkTheaterPayment.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.army.movieEro.tkTheaterPayment.dao.TheaterPaymentDaoImpl;
import com.army.movieEro.tkTheaterPayment.vo.TheaterPayment;
import com.army.movieEro.tkTheaterRental.vo.theaterVO;

@Service("theaterPaymentServiceImpl")
public class TheaterPaymentServiceImpl implements TheaterPaymentService {

	@Autowired
	private TheaterPaymentDaoImpl TheaterPaymentdaoImpl;
	
	@Override
	public ArrayList<TheaterPayment> selectPayList(HashMap<String, String> visualMap) {
		// TODO Auto-generated method stub
		return TheaterPaymentdaoImpl.selectPayList(visualMap);
	}

	@Override
	public int insertPayment(TheaterPayment vo) {
		// TODO Auto-generated method stub
		return TheaterPaymentdaoImpl.insertPayment(vo);
	}

	@Override
	public int updatePayment(int bnum) {
		// TODO Auto-generated method stub
		return TheaterPaymentdaoImpl.updatePayment(bnum);
	}

	@Override
	public ArrayList<TheaterPayment> selectPayList(String MB_ID) {
		// TODO Auto-generated method stub
		return TheaterPaymentdaoImpl.selectPayList(MB_ID);
	}

	@Override
	public theaterVO selectpayposition(String position) {
		// TODO Auto-generated method stub
		return TheaterPaymentdaoImpl.selectpayposition(position);
	}

	@Override
	public int countselect(String id) {
		// TODO Auto-generated method stub
		return TheaterPaymentdaoImpl.countselect(id);
	}

}
