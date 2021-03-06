package com.army.movieEro.jkNoticeBoard.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.army.movieEro.jkNoticeBoard.dao.reserveDao;
import com.army.movieEro.jkNoticeBoard.vo.paymentVO;


@Service("REService")
public class reserveServiceImpl implements reserveService{

	
	@Autowired
	reserveDao REDao;
	
	@Override
	public int reserveInsert(HashMap<String, String> map) {
		return REDao.reserveInsert(map);
	}

	@Override
	public ArrayList<String> seatList(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return REDao.seatList(map);
	}

	@Override
	public ArrayList<paymentVO> selectMypage(String MB_ID) {
		return REDao.selectMypage(MB_ID);
	}

	@Override
	public ArrayList<paymentVO> selectMypageAt(String MB_ID) {
		// TODO Auto-generated method stub
		return REDao.selectMypageAt(MB_ID);
	}

	@Override
	public int selectReserveCnt(String MB_ID) {
		// TODO Auto-generated method stub
		return REDao.selectReserveCnt(MB_ID);
	}

	
}
