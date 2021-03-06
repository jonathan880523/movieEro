package com.army.movieEro.jkNoticeBoard.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.*;
import org.springframework.web.servlet.ModelAndView;

import com.army.movieEro.jkNoticeBoard.service.noticeService;
import com.army.movieEro.jkNoticeBoard.vo.noticeVO;
import com.army.movieEro.jkNoticeBoard.vo.paymentVO;
import com.army.movieEro.rentalQnA.vo.RentalQnAVO;


@Controller
public class noticeBoardController {
	
	@Autowired
	private noticeService NTService;

	
	// 컨트롤러 페이지만 보여주기위한 컨트롤러(ajax)
	@RequestMapping(value = "notice.do")
	public String notice(Model model, @RequestParam(value = "page", required = false) Integer page) {
		
		int currentPage = 1;

		int limit = 6;

		if (page != null)
			currentPage = page;

		System.out.println("getListCount 도착전");
		int listCount = NTService.getListCount();
		System.out.println("getListCount 도착       "+listCount);

		// 임시 listCount
		// int listCount = 1;

		int maxPage = (int) ((double) listCount / limit + 0.9);
		int startPage = (((int) ((double) currentPage / limit + 0.9)) - 1) * limit + 1;
		int endPage = startPage + limit - 1;
		if (maxPage < endPage)
			endPage = maxPage;
		
		System.out.println("selectListUser 도착전==="+currentPage);
		ArrayList<noticeVO> list = NTService.selectListUser(currentPage, limit);
		System.out.println("selectListUser 도착" + list);
		
		model.addAttribute("list", list);
		return "jkNoticeBoard/noticeBoardListUser";
	}
		
	//ajax데이터 불러오는 컨트롤러
	@RequestMapping(value = "noticeMore.do")
	@ResponseBody
	public ArrayList<noticeVO> testInit(@RequestParam(value = "page", required = false) Integer page) {
		System.out.println("넘어온 page값 확인"+page);
		
		int currentPage = 1;

		int limit = 3;

		if (page != null)
			currentPage = page;

		System.out.println("getListCount 도착전");
		int listCount = NTService.getListCount();
		System.out.println("getListCount 도착       "+listCount);

		// 임시 listCount
		// int listCount = 1;

		int maxPage = (int) ((double) listCount / limit + 0.9);
		int startPage = (((int) ((double) currentPage / limit + 0.9)) - 1) * limit + 1;
		int endPage = startPage + limit - 1;
		if (maxPage < endPage)
			endPage = maxPage;

		System.out.println("selectListUser 도착전==="+currentPage);
		ArrayList<noticeVO> list = NTService.selectListUser(currentPage, limit);
		System.out.println("selectListUser 도착" + list);
		
		return list;
	}
	
	
	
	
	

	// 공지사항 관리자페이지 리스트 불러오기
	@RequestMapping(value = "noticeAdmin.do")
	public ModelAndView noticeBoardAdmin(ModelAndView mv,
			@RequestParam(value = "page", required = false) Integer page) {
		System.out.println("noticeBoardAdmin Controller 도착!!");

		int currentPage = 1;

		int limit = 10;

		if (page != null)
			currentPage = page;

		System.out.println("getListCount 도착전");
		int listCount = NTService.getListCount();
		System.out.println("getListCount 도착       "+listCount);

		// 임시 listCount
		// int listCount = 1;

		int maxPage = (int) ((double) listCount / limit + 0.9);
		int startPage = (((int) ((double) currentPage / limit + 0.9)) - 1) * limit + 1;
		int endPage = startPage + limit - 1;
		if (maxPage < endPage)
			endPage = maxPage;

		System.out.println("selectListAdmin 도착전");
		ArrayList<noticeVO> list = NTService.selectListAdmin(currentPage, limit);
		System.out.println("selectListAdmin 도착" + list);
		
		if (list != null && list.size() > 0) {

			mv.addObject("list", list)
			.addObject("currentPage", currentPage)
			.addObject("maxPage", maxPage)
			.addObject("startPage", startPage)
			.addObject("endPage", endPage)
			.addObject("listCount", listCount)
			.setViewName("jkNoticeBoard/noticeBoardListAdmin");

			System.out.println("mv에 값들 정상적으로 들어가서 리스트로 뿌려짐");
		} else {
			mv.addObject("error", "게시글 전체 조회 실패");
			mv.setViewName("jkNoticeBoard/noticeBoardListAdmin");
			System.out.println("게시글 조회 실패");
		}
		return mv;
	}

	
	
	
	// 리스트에서 글쓰기위해 글쓰기 버튼 클릭시 작동하는 컨트롤러
	@RequestMapping(value = "noticeInsertForm.do")
	public String testInitInsertForm(Model model) {
		System.out.println("noticeInsertController 도착!!");

		return "jkNoticeBoard/noticeInsertForm";
	}
	
	// 글을 작성해서 데이터베이스에 넣기위한 컨트롤러
	@RequestMapping(value = "noticeInsert.do")
	public ModelAndView testInitInsert(HttpServletRequest request,
			 ModelAndView mv, noticeVO noticeVO)
			throws IOException {
		System.out.println("작성하기 버튼 눌러서 컨트롤러 도착");

		
		//파일 관련 소스
		/**String root = request.getSession().getServletContext().getRealPath("resource");

		// " 안에 파일이 저장될 폴더명과 경로연결 적어넣기 "
		String savePath = root + "    ";

		if (file != null && file.isEmpty()) {
			if (!new File(savePath).exists()) {
				new File(savePath).mkdir();
			}
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			String originFileName = file.getOriginalFilename();
			String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis())) + "."
					+ originFileName.substring(originFileName.lastIndexOf(".") + 1);

			File renameFile = new File(savePath + "\\" + renameFileName);
			file.transferTo(renameFile);

			// 아리 2줄 데이터베이스 바꾸면서 originFileName이랑 renameFileName으로 바꿀것.
			noticeVO.setNOTICE_BOARD_PICTURE(originFileName);
			noticeVO.setNOTICE_BOARD_PICTURE(originFileName);
		}**/

		System.out.println("insertNoticeBoard 실행 전");
		if (NTService.insertNoticeBoard(noticeVO) > 0) {
			System.out.println("insertNoticeBoard 실행 완료");
			mv.setViewName("redirect:notice.do");
		} else {
			System.out.println("insertNoticeBoard 실행 실패");
			mv.addObject("error", "공지사항 글 작성 실패");
		}
		return mv;
	}
	
	//상세보기 맵핑
	@RequestMapping(value = "noticeDetail.do")
	public ModelAndView noticeDetail(ModelAndView mv, @RequestParam("NOTICE_BOARD_NO") int NOTICE_BOARD_NO
			,@RequestParam(value = "page", required = false) Integer page) {
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		System.out.println("받아온 게시글의 번호 >>>>>>>>" + NOTICE_BOARD_NO);
		NTService.addReadCount(NOTICE_BOARD_NO);
		System.out.println("조회수 업데이트 성공");
		
		
		noticeVO noticeVO = NTService.selectBoardDetail(NOTICE_BOARD_NO);
		System.out.println("상세값 가져오기 성공" + noticeVO);
		if(noticeVO != null ) {
			System.out.println("상세값 가져오기 성공 뿌려주기 성공" + noticeVO);
			mv.addObject("noticeVO",noticeVO)
			.addObject("currentPage",currentPage)
			.setViewName("jkNoticeBoard/noticeBoardDetail");
		}else {
			System.out.println("상세값 가져오기 성공 뿌려주기 실패" + noticeVO);
			mv.addObject("error","상세조회 실패")
			.setViewName("redirect:noticeBoardListUser");
		}
		return mv;
	}
	
	//수정하기 페이지에 작성된 글을 가져가기위한 컨트롤러
	@RequestMapping(value = "noticeModifyForm.do")
	public ModelAndView noticeModifyForm(ModelAndView mv, @RequestParam("NOTICE_BOARD_NO") int NOTICE_BOARD_NO) {
		System.out.println("noticeModifyForm.do 실행");
		noticeVO noticeVO = NTService.selectBoardDetail(NOTICE_BOARD_NO);
		System.out.println("noticeModifyForm.do 실행후 selectBoardDetail실행"+noticeVO);
		
		if(noticeVO != null) {
			System.out.println("noticeModifyForm.do 실행후 들어갔나??"+noticeVO);
			mv.addObject("noticeVO", noticeVO)
			.setViewName("jkNoticeBoard/noticeBoardModifyForm");
		}else {
			System.out.println("수정하기 불러오기 실패");
			mv.addObject("error","수정하기 폼 불러오기 실패")
			//밑에 Admin은 User로 바꾸던가 조건문으로 권한에따라 다르게 바꿀것.
			.setViewName("redirect:noticeBoardListAdmin.do");
		}
		return mv;
	}
	
	//수정 작업을 수행하는 컨트롤러
	@RequestMapping(value = "noticeBoardModify.do")
	public ModelAndView noticeBoardModify(HttpServletRequest request,
			 ModelAndView mv, noticeVO noticeVO, @RequestParam("NOTICE_BOARD_NO") int NOTICE_BOARD_NO) {
		System.out.println("noticeBoardModify 도착");
		
		System.out.println(noticeVO.getNOTICE_BOARD_CONTENT());
		
		if(NTService.modifyNoticeBoard(noticeVO) > 0) {
			System.out.println("noticeBoardModify 쿼리문 실행 완료");
			System.out.println("수정 완료");
			mv.setViewName("redirect:noticeAdmin.do");
		}else {
			mv.setViewName("redirect:noticeAdmin.do");
		}
		return mv;
	}
	  
	//삭제 작업을 수행하는 컨트롤러
	@RequestMapping(value = "noticeDeleteForm.do")
	public ModelAndView noticeBoardDelete(HttpServletRequest request,
			 ModelAndView mv, noticeVO noticeVO, @RequestParam("NOTICE_BOARD_NO") int NOTICE_BOARD_NO) {
		
		
		if(NTService.deleteNoticeBoard(NOTICE_BOARD_NO)>0) {
			System.out.println("삭제 성공");
			mv.setViewName("redirect:noticeUser.do");
		}else {
			System.out.println("삭제 실패");
			mv.setViewName("redirect:noticeUser.do");
		}
		return mv;
	}
	
	@RequestMapping(value="noticeBoardImgInsert.do")
	public void noticeBoardImgInsert(HttpServletRequest request, HttpServletResponse response,
			@RequestParam MultipartFile upload, ModelAndView mv, noticeVO noticeVO) {
		
		OutputStream out = null;
		PrintWriter printWriter = null;
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			String fileName = upload.getOriginalFilename();
			String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis())) + "."
					+ fileName.substring(fileName.lastIndexOf(".") + 1);

			byte[] bytes = upload.getBytes();
			String uploadPath = "D:\\springWorkspace\\movieEro\\src\\main\\webapp\\resources\\img\\ckeditor\\"
					+ renameFileName;// 저장경로

			out = new FileOutputStream(new File(uploadPath));
			out.write(bytes);
			String callback = request.getParameter("CKEditorFuncNum");

			printWriter = response.getWriter();
			String fileUrl = "resources/img/ckeditor/" + renameFileName;// url경로
			System.out.println(fileUrl);

			printWriter.println("<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction(" + callback
					+ ",'" + fileUrl + "','이미지 업로드 완료.'" + ")</script>");
			printWriter.flush();

		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if (out != null) {
					out.close();
				}
				if (printWriter != null) {
					printWriter.close();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	
	

}