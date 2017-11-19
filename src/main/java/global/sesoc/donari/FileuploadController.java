package global.sesoc.donari;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import global.sesoc.donari.ffmpeg_handler.MusicReactVideo;
import global.sesoc.donari.template.MakeVideo;
import global.sesoc.donari.template.MovieTemplate;
import global.sesoc.donari.template.TravelTemplate;
import global.sesoc.donari.util.DuplicateFile;
import global.sesoc.donari.vo.File_VO;

@Controller
public class FileuploadController {
	/*
	 * @Autowired private String path;
	 */

	private final String FILE_PATH = "C:/donari/userdata/";

	// 파일 다운로드
	@GetMapping("/download")
	public String downloadFile(HttpServletResponse response) throws IOException {
		File file = getFile();
		InputStream is = new FileInputStream(file);

		response.setHeader("Content-Disposition", "attachment; filename=" + file.getName());
		// response.setHeader("Content-Length",String.valueOf(file.length()));
		// FileCopyUtils.copy(is, response.getOutputStream());

		OutputStream os = response.getOutputStream();

		byte[] buffer = new byte[1024];
		int len = 0;

		while ((len = is.read(buffer)) != -1) {
			os.write(buffer, 0, len);
		}
		os.flush();
		os.close();
		is.close();

		return "download";
	}

	@RequestMapping(value = "uploadResult", method = RequestMethod.GET)
	public String uploadResult(Model model, String filename) {
		model.addAttribute("filename", filename);
		return "download";
	}

	private File getFile() throws FileNotFoundException {
		File file = new File(FILE_PATH);

		if (!file.exists()) {
			throw new FileNotFoundException("File Not Found with Path : " + FILE_PATH);
		}

		return file;
	}

	/**
	 * 
	 * @param multiFiles
	 * @param files
	 * @param model
	 * @param request
	 * @param session
	 * @return
	 * @throws IllegalStateException
	 * @throws IOException
	 * 
	 * mrv 사진 업로드
	 */
	@RequestMapping(value = "/fileUploads", method = { RequestMethod.POST, RequestMethod.GET })
	public String fileUploads(File_VO multiFiles, MultipartFile files, Model model, HttpServletRequest request)
	         throws IllegalStateException, IOException {
	      System.out.println(files);
	      String saveDir = request.getServletContext().getRealPath("/resources/userimage");
	      MakeVideo makeVideo = new MakeVideo("");
	      File path = new File(saveDir);
	      if (path.exists()) {
	         makeVideo.deleteDir(path.getPath());
	      }
	      path.mkdirs();

	      for (int i = 0; i < multiFiles.getFiles().length; i++) {

	         MultipartFile file = multiFiles.getFiles()[i];
	         File serverFile = DuplicateFile.getFile(saveDir, file);
	         file.transferTo(serverFile);
	         serverFile.renameTo(new File(saveDir + "/" + i + ".jpg"));
	      }

	      MusicReactVideo mrv = new MusicReactVideo();
	      mrv.makeBasicVid(saveDir + "/", request.getServletContext().getRealPath("/resources/output/outvid.mp4"),
	            request.getServletContext().getRealPath("/resources/usermusic/music.mp3"),
	            request.getServletContext().getRealPath("/"));
	         
	      
	      Calendar c = Calendar.getInstance(); 
	      String ntime = new String();
	      
	      final String[] arrMonth = {"", "January", "February", "March", "April", "May", "June", "July","August","September", "October","November","December"}; 
	      
	      ntime = arrMonth[c.get(Calendar.MONTH)+1] + " ";
	      ntime += String.valueOf(c.get(Calendar.DATE)) + ",";
	      ntime += String.valueOf(c.get(Calendar.YEAR)) ;
	      
	      model.addAttribute("today", ntime);

	      
	      
	      return "makingVideo/movieWindow";
	   }


	@RequestMapping(value = "/faceUploads", method = { RequestMethod.POST, RequestMethod.GET })
	   public String facebookWindow(File_VO multiFiles, MultipartFile files, Model model, HttpServletRequest request)
		         throws IllegalStateException, IOException {
		      
		      
		      String saveDir = request.getServletContext().getRealPath("/resources/userimage");
		      MakeVideo makeVideo = new MakeVideo("");

		      
		      MusicReactVideo mrv = new MusicReactVideo();
		      mrv.makeBasicVid(saveDir+"/", request.getServletContext().getRealPath("/resources/output/outvid.mp4"),
		            request.getServletContext().getRealPath("/resources/usermusic/music.mp3"),
		            request.getServletContext().getRealPath("/"));
		         
		      
		      Calendar c = Calendar.getInstance(); //媛앹껜 ?앹꽦 諛??꾩옱 ?쇱떆遺꾩큹...?뗮똿
		      String ntime = new String();
		      
		      final String[] arrMonth = {"", "January", "February", "March", "April", "May", "June", "July","August","September", "October","November","December"}; 
		      
		      /*ntime = String.valueOf(c.get(Calendar.MONTH)+1) + "-";*/
		      ntime = arrMonth[c.get(Calendar.MONTH)+1] + " ";
		      ntime += String.valueOf(c.get(Calendar.DATE)) + ",";
		      ntime += String.valueOf(c.get(Calendar.YEAR)) ;
		      
		      model.addAttribute("today", ntime);

		      
		      
		      return "makingVideo/movieWindow";
		   }


	/**
	 * 
	 * @param music
	 * @param model
	 * @param request
	 * @return
	 * @throws IllegalStateException
	 * @throws IOException
	 * 
	 * mrv 음악업로드
	 */
	@ResponseBody
	@RequestMapping(value = "/musicUpload", method = RequestMethod.POST)
	public String musicupload(MultipartFile music, Model model, HttpServletRequest request) throws IllegalStateException, IOException
    {
		MakeVideo makeVideo = new MakeVideo("");
		String saveDir = request.getServletContext().getRealPath("/resources/usermusic");
		File path = new File(saveDir);
		if (path.exists()) {
			makeVideo.deleteDir(path.getPath());
		}

		path.mkdirs();


		// 以묐났 ?섏? ?딅뒗 ?뚯씪 媛앹껜瑜?留뚮뱺??
		File serverFile = DuplicateFile.getFile(saveDir, music);
		// ?ㅼ젣?곸쑝濡???ν븷 ?뚯씪濡??대룞
		music.transferTo(new File(saveDir + "/music.mp3"));

		music = null;
       
       return "sucess";
    }

	// 업로드 된 원본 사진을 파일로 저장 + 이미지 리사이징 하는동안 로딩 페이지를 띄워주기 위해 로딩 페이지로 이동
	@RequestMapping(value = "/tempImg", method = RequestMethod.POST)
	public String tempImg(File_VO multiFiles, String title, MultipartFile files, Model model,
			HttpServletRequest request) throws IllegalStateException, IOException {
		String originDir = request.getServletContext().getRealPath("/resources/original_image");
		File opath = new File(originDir);
		MakeVideo mv = new MakeVideo(new MovieTemplate().getFFMPEG_PATH());
		if (opath.exists()) {
			mv.deleteDir(opath.getPath());
		}
		opath.mkdirs();

		// 올라온 파일 확인
		int i = 0;
		for (MultipartFile file : multiFiles.getFiles()) {
			// 중복 되지 않는 파일 객체를 만든다.
			File serverFile = DuplicateFile.getFile(originDir, file);
			file.transferTo(new File(originDir + "/img" + (i) + ".jpg"));

			i++;
		} // for
		String cmd = "movie";
		String width = "640";
		String height = "320";
		model.addAttribute("cmd", cmd);
		model.addAttribute("width", width);
		model.addAttribute("height", height);

		return "template/loading";
	}

	@RequestMapping(value = "tarveltempImg", method = RequestMethod.POST)
	public String traveltempImg(File_VO multiFiles, String title, MultipartFile files, Model model,
			HttpServletRequest request) throws IllegalStateException, IOException {

		System.out.println("tarvel");
		String originDir = request.getServletContext().getRealPath("/resources/original_image");
		System.out.println("server path : " + originDir);
		File opath = new File(originDir);
		MakeVideo mv = new MakeVideo(new TravelTemplate().getFFMPEG_PATH());
		if (opath.exists()) {
			mv.deleteDir(opath.getPath());
		}
		opath.mkdirs();

		// 올라온 파일 확인
		int i = 0;
		for (MultipartFile file : multiFiles.getFiles()) {
			// 중복 되지 않는 파일 객체를 만든다.
			File serverFile = DuplicateFile.getFile(originDir, file);
			file.transferTo(new File(originDir + "/img" + (i) + ".jpg"));

			i++;
		} // for
		String cmd = "travel";
		String width = "640";
		String height = "320";
		model.addAttribute("cmd", cmd);
		model.addAttribute("width", width);
		model.addAttribute("height", height);

		return "template/loading";
	}

	@RequestMapping(value = "/loaded", method = RequestMethod.GET)
	public String loaded(Model model, HttpServletRequest request, String cmd) throws Exception {
		System.out.println("loaded 실행");
		MakeVideo mv = new MakeVideo(new MovieTemplate().getFFMPEG_PATH());
		String saveDir = request.getServletContext().getRealPath("/resources/userimage");

		// 올라온 파일 확인
		ArrayList<String> botari = new ArrayList<String>();
		File[] list = mv.getFileList(saveDir);
		for (int j = 0; j < list.length; j++) {
			botari.add("resources/userimage" + "/" + cmd + (j) + ".jpg");
		}

		model.addAttribute("imgCount", botari.size());
		model.addAttribute("botari", botari);
		model.addAttribute("saveDir", saveDir);

		return "template/" + cmd;
	}

	// 로딩하는 동안 이미지 리사이징(경로 이동 : original_image -> userimage)
	@ResponseBody
	@RequestMapping(value = "/load", method = RequestMethod.GET)
	public String load(Model model, HttpServletRequest request, String cmd, String width, String height)
			throws Exception {
		// 템플릿 확인
		System.out.println("[load cmd : " + cmd + "]");

		MakeVideo mv = new MakeVideo(new MovieTemplate().getFFMPEG_PATH());

		// 원본사진 경로
		String originDir = request.getServletContext().getRealPath("/resources/original_image");
		// 저장할 폴더명
		String topath = "/resources/userimage";
		// 저장할 경로
		String saveDir = request.getServletContext().getRealPath(topath);
		// 저장할 경로 확인, 폴더 초기화 후 생성
		File path = new File(saveDir);
		if (path.exists()) {
			mv.deleteDir(path.getPath());
		}
		path.mkdirs();

		// 원본 파일 리스트
		File[] list = mv.getFileList(originDir);
		for (int j = 0; j < list.length; j++) {
			mv.reformatImg(originDir + "/img" + (j) + ".jpg", saveDir + "/" + cmd + (j) + ".jpg", width, height);
		}

		// cmd 반환
		return cmd;
	}

	@ResponseBody
    @RequestMapping(value="/reupload",method=RequestMethod.POST)
    public String reupload(MultipartFile files,String index,HttpServletRequest request, String cmd) throws IllegalStateException, IOException
    {
       MakeVideo mv = new MakeVideo(new MovieTemplate().getFFMPEG_PATH());
       System.out.println("[reupload - index : "+index+"]");
       //원본사진 경로
       String originDir = request.getServletContext().getRealPath("/resources/original_image");
       //저장할 폴더명
       String topath = "/resources/userimage";
       //저장할 경로
       String saveDir = request.getServletContext().getRealPath(topath);
       
       File temp = new File(originDir+"/temp");
       if (!temp.exists()) {
          temp.mkdirs();
       }
       
       File serverFile = DuplicateFile.getFile(temp.toString(), files);
       files.transferTo(new File(temp.toString()+"/img"+index+".jpg"));
       File originFile = new File(saveDir+"/"+index+".jpg");
       
       System.out.println(originFile.toString());
       
       if (originFile.exists()) {
          System.out.println(originFile.delete());
       }
       
       mv.reformatImg(temp.toString()+"/img"+index+".jpg", saveDir+"/"+index+".jpg", "640", "320");
       
       String toFile = "resources/userimage/"+index+".jpg";
       
       return toFile;
    }//fileUploadForms()

	@RequestMapping(value = "albumWindow", method = RequestMethod.GET)
	public String albumWindow() {
		return "makingVideo/albumList";/* "mainScreen/index"; */
	}

}// class