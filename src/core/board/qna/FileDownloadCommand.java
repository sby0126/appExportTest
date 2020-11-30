package core.board.qna;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FileDownloadCommand extends Command {
	
	private BoardDAO boardMgr;
	private String filename;
	private boolean isReady = false;
	
	public FileDownloadCommand(BoardDAO boardDAO, String filename)  {
		super(boardDAO);
		this.filename = filename;
	}
	
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		
	}
	
}
