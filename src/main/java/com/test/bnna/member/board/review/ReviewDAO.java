package com.test.bnna.member.board.review;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewDAO implements IReviewDAO {
	
	@Autowired
	private SqlSessionTemplate template;

	/**
	 * 하나의 숙소의 리뷰를 가져오는 메서드입니다.
	 * @param list
	 * @return 리뷰정보를 담고 있는 DTO의 리스트를 반환합니다.
	 */
	@Override
	public List<ReviewDTO> list(String seq) {
		
		return template.selectList("review.onelist", seq);
	}

	/**
	 * 조회수를 올리는 메서드입니다.
	 */
	@Override
	public void readCountUp(String seq) {
		
		template.update("review.readcntup", seq);
		
	}

	/**
	 * 추천수를 올리는 메서드입니다.
	 */
	@Override
	public void recommendCountUp(String seq) {
		template.update("review.recommendcntup", seq);
		
	}

	/**
	 * 회원이 작성한 리뷰목록을 가져오는 메서드입니다.
	 */
	@Override
	public List<ReviewForMemberDTO> listForMember(String seqMember) {
		
		return template.selectList("review.listForMember", seqMember);
	}

	/**
	 * 리뷰번호로 리뷰정보를 가져오는 메서드입니다.
	 */
	@Override
	public ReviewForMemberDTO info(String seq) {
		
		return template.selectOne("review.info", seq);
	}

	/**
	 * 리뷰번호로 리뷰글을 삭제하는 메서드입니다.
	 */
	@Override
	public int del(String path, String seq) {
		
		int result=delFiles(path, seq);
		template.delete("review.delPic", seq);
		return template.delete("review.del", seq);
	}
	
	/**
	 * 리뷰번호로 리뷰글에 딸린 이미지들을 서버에서 삭제하는 메서드입니다.
  	 * @param path 파일들이 존재하는 경로입니다.
	 * @param seq 리뷰번호입니다.
	 * @return 성공하면 0이 아닌 값, 실패하면 0을 반환합니다.
	 */
	public int delFiles(String path, String seq) {
		
		int deleteCnt=0;
		
		// 파일명들을 가져온다.
		List<ReviewPicDTO> list=template.selectList("review.plist", seq);
		
		// 삭제한다.
		for(ReviewPicDTO dto:list) {
			File file=new File(path+dto.getImage());
			file.delete();
			deleteCnt++;
		}
		
		return deleteCnt;
	}

	@Override
	public int add(AddReviewDTO dto) {
		
		return template.insert("review.add", dto);
	}

	@Override
	public int addReviewPic(ArrayList<ReviewPicDTO> plist) {
		// TODO Auto-generated method stub
		return 0;
	}

	/**
	 * add()를 통해 추가된 리뷰번호를 가져오는 메서드입니다.
	 */
	@Override
	public int getCurrentReviewSeq() {
		
		return template.selectOne("review.getCurrentReviewSeq");
	}

	@Override
	public int edit(EditReviewDTO dto) {
		
		return template.update("review.edit", dto);
	}

}
