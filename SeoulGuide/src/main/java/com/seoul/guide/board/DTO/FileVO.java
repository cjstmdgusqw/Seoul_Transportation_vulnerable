package com.seoul.guide.board.DTO;

import java.util.Date;

public class FileVO { 
		private Integer id;
		private String directory;
		private String name;
		private Long size;
		private String contenttype;
		private Date uploaddate;

		public Integer getId() {
			return id;
		}

		public void setId(Integer id) {
			this.id = id;
		}

		public String getDirectory() {
			return directory;
		}

		public void setDirectory(String directory) {
			this.directory = directory;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public Long getSize() {
			return size;
		}

		public void setSize(Long size) {
			this.size = size;
		}

		public String getContenttype() {
			return contenttype;
		}

		public void setContenttype(String contenttype) {
			this.contenttype = contenttype;
		}

		public Date getUploaddate() {
			return uploaddate;
		}

		public void setUploaddate(Date uploaddate) {
			this.uploaddate = uploaddate;
		}


}
