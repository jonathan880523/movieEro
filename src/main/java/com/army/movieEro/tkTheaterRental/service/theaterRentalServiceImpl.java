package com.army.movieEro.tkTheaterRental.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.army.movieEro.tkTheaterRental.dao.theaterRentalDaoImpl;
import com.army.movieEro.tkTheaterRental.vo.theaterImageVo;
import com.army.movieEro.tkTheaterRental.vo.theaterVO;

@Service("theaterRentalServiceImpl")
public class theaterRentalServiceImpl implements theaterRentalService {

	@Autowired 
	theaterRentalDaoImpl theaterRentalServiceImpl;
	
	@Override
	public ArrayList<theaterVO> selectList() {
		// TODO Auto-generated method stub
		return theaterRentalServiceImpl.selectList();
	}

	@Override
	public ArrayList<theaterImageVo> selectImage() {
		// TODO Auto-generated method stub
		return theaterRentalServiceImpl.selectImage();
	}

	@Override
	public theaterVO selectView(int bnum) {
		// TODO Auto-generated method stub
		return theaterRentalServiceImpl.selectView(bnum);
	}

	@Override
	public ArrayList<theaterImageVo> selectImageView(int bnum) {
		// TODO Auto-generated method stub
		return theaterRentalServiceImpl.selectImageView(bnum);
	}


}
