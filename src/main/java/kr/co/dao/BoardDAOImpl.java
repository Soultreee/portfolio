package kr.co.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.vo.BoardVO;
import kr.co.vo.SearchCriteria;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Inject
	private SqlSession sqlSession;

	@Override
	public void write(BoardVO boardVO) throws Exception {
		sqlSession.insert("boardMapper.insert", boardVO);
	}

	// 게시물 목록 조회 10.게시판 페이징 구현을 위한 수정
	/* 
	 @Override
	 
	public List<BoardVO> list() throws Exception {

		return sqlSession.selectList("boardMapper.list");

	} 
	*/
	
	// 게시물 목록 조회 11 게시판 검색 기능 구현을 위한 수정
	/* @Override
	 
		public List<BoardVO> list(Criteria cri) throws Exception {

			return sqlSession.selectList("boardMapper.listPage",cri);

		} 
	 */
	// 게시물 목록 조회
	@Override
	 
	public List<BoardVO> list(SearchCriteria scri) throws Exception {

		return sqlSession.selectList("boardMapper.listPage",scri);

	} 
	
	/*  // 게시물 총 갯수 11 게시판 검색 기능 구현을 위한 수정
	 @Override
	 public int listCount() throws Exception {
		 return sqlSession.selectOne("boardMapper.listCount");
	 }
	*/
	
	// 게시물 총 갯수
	 @Override
	 public int listCount(SearchCriteria scri) throws Exception {
		 return sqlSession.selectOne("boardMapper.listCount",scri);
	 }

	// 게시물 조회
	@Override
	public BoardVO read(int bno) throws Exception {

		return sqlSession.selectOne("boardMapper.read", bno);
	}

	// 게시물 수정
	@Override
	public void update(BoardVO boardVO) throws Exception {

		sqlSession.update("boardMapper.update", boardVO);
	}

	// 게시물 삭제
	@Override
	public void delete(int bno) throws Exception {

		sqlSession.delete("boardMapper.delete", bno);
	}

}
