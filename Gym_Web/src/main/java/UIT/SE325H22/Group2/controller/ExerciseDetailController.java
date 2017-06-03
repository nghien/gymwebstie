package UIT.SE325H22.Group2.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.DefaultResourceLoader;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import UIT.SE325H22.Group2.model.ExerciseDetail;
//import UIT.SE325H22.Group2.service.impl.ExerciseDetailService;
import UIT.SE325H22.Group2.service.intf.IExerciseDetailService;
import UIT.SE325H22.Group2.viewmodel.ExerciseDetailViewModel;
import UIT.SE325H22.Group2.viewmodel.Mapper;
import UIT.SE325H22.Group2.viewmodel.ScheduleLessonMapViewModel;

@RestController
public class ExerciseDetailController {
	@Autowired
	IExerciseDetailService exerciseDetailService;
	
	@RequestMapping(value = "/getAllExerciseDetails", method = RequestMethod.GET, headers = "Accept=application/json")
	public List<ExerciseDetail> getExerciseDetails() {
		List<ExerciseDetail> exerciseDetails = exerciseDetailService.getAll();
		return exerciseDetails;
	}
	

	
//	@RequestMapping(value = "/getAllExerciseDetailsHome", method = RequestMethod.GET, headers = "Accept=application/json")
//	public List<ExerciseDetailViewModel> getAllExerciseDetailsHome() {
//		List<ExerciseDetail> exerciseDetails = exerciseDetailService.getAll();
//		ArrayList<ExerciseDetailViewModel> exerciseDetail;
//	
//			exerciseDetail = Mapper.copy((ArrayList)exerciseDetails, ExerciseDetailViewModel.class, null);
//	
//		return exerciseDetail;
//	}

	@RequestMapping(value = "/getExerciseDetail/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
	public ExerciseDetail getExerciseDetailById(@PathVariable ("id") int id) {
		//return new ExerciseDetail();
		return exerciseDetailService.get(id);
	}
	
	@RequestMapping(value = "/getExerciseDetailsById/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
	public List<ExerciseDetail> getExerciseDetailsById(@PathVariable ("id") int id) {
		//return new ExerciseDetail();
		List<ExerciseDetail> exerciseDetails = exerciseDetailService.getAll();
		List<ExerciseDetail> exerciseDetailsById = new ArrayList<ExerciseDetail>();
		for(ExerciseDetail exerciseDetail : exerciseDetails ){
			if(exerciseDetail.getId() == id)
				exerciseDetailsById.add(exerciseDetail);
		}
		return exerciseDetailsById;
	}
	
	@RequestMapping(value = "/getExerciseDetailsByMuscleId/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
	public List<ExerciseDetail> getExerciseDetailsByMuscleId(@PathVariable ("id") int id) {
		//return new ExerciseDetail();
		List<ExerciseDetail> exerciseDetails = exerciseDetailService.getAll();
		List<ExerciseDetail> exerciseDetailsById = new ArrayList<ExerciseDetail>();
		for(ExerciseDetail exerciseDetail : exerciseDetails ){
			if(exerciseDetail.getMuscleTypeId() == id)
				exerciseDetailsById.add(exerciseDetail);
		}
		return exerciseDetailsById;
	}

	@RequestMapping(value = "/addExerciseDetail", method = RequestMethod.POST, headers = "Accept=application/json")
	public void addExerciseDetail(@RequestBody ExerciseDetail exerciseDetail) {	
		exerciseDetailService.insert(exerciseDetail);
	}

	@RequestMapping(value = "/updateExerciseDetail", method = RequestMethod.PUT, headers = "Accept=application/json")
	public void updateExerciseDetail(@RequestBody ExerciseDetail exerciseDetail) {
		exerciseDetailService.update(exerciseDetail);
	}

	@RequestMapping(value = "/deleteExerciseDetail/{id}", method = RequestMethod.DELETE, headers = "Accept=application/json")
	public void deleteExerciseDetail(@PathVariable("id") int id) {
		exerciseDetailService.delete(id);
	}
	

	
	public static boolean checkExists(String directory, String file) {
		File dir = new File(directory);
		File[] dir_contents = dir.listFiles();
		String temp = file;
		boolean check = new File(temp).exists();

		for (int i = 0; i < dir_contents.length; i++) {
			if (dir_contents[i].getName().equals(file))
				return true;
		}
		return false;
	}

	
	@RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
	public @ResponseBody String uploadFileHandler(@RequestParam("file") MultipartFile file) {
		String name= file.getOriginalFilename();
		if (!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();

				// Creating the directory to store file
				
				final DefaultResourceLoader loader = new DefaultResourceLoader();                            
			    org.springframework.core.io.Resource resource = loader.getResource("classpath:META-INF"); 
				
			    URL f = this.getClass().getClassLoader().getResource("/");
			    
				String rootPath = f.getFile();
				
				rootPath = rootPath.substring(0, rootPath.indexOf("WEB-INF")) + "/resources/images";
				
				//String filePath = rootPath + File.separator + "tmpFiles";
				File dir = new File(rootPath);
				
				if (!dir.exists())
					dir.mkdirs();

				int contain = 0;
				
				String selectName = name;

				
				int lastOfDot = name.lastIndexOf('.');
				String nameFile= name.substring(0,lastOfDot);
				String extendtion = name.substring(lastOfDot);
				
				selectName = nameFile;
				
				while (checkExists(rootPath, selectName + extendtion)) {
					selectName = nameFile +  " (" +contain + ")";
					contain++;
				}
				
				name = selectName + extendtion;

				

				// Create the file on server
				File serverFile = new File(dir.getAbsolutePath() + File.separator + name);
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();

			//	logger.info("Server File Location=" + serverFile.getAbsolutePath());

				return "/SpringRestHibernateExample/resources/images/" + name;
			} catch (Exception e) {
				return "You failed to upload " + name + " => " + e.getMessage();
			}
		} else {
			return "You failed to upload " + name + " because the file was empty.";
		}
	}
}
