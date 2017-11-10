package miniSrc;

import java.io.File;

public class PicFilee {

	void fileDelete(DownloadVO mem )
	{
		if(mem.updownfile!=null && !mem.updownfile.equals("")&& !mem.updownfile.equals("null"))
		{
			File ffff = new File(mem.path+"\\"+mem.updownfile);
			ffff.delete();
		}
	}
}
