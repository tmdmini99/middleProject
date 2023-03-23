package com.home.middle.board;



public interface BoardService extends BbsService {

	public BoardDTO getBoardDetail(BoardDTO boardDTO) throws Exception;
	
	public BoardFileDTO getBoardFileDetail(BoardFileDTO boardFileDTO) throws Exception;
	
}
