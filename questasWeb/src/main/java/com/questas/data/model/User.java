package com.questas.data.model;

import java.util.Date;

public class User {
		private String username;
		private String password;
		private boolean enabled;
		private String role;
		private String lastLocation;
		private Date lastAccess;
		
		public String getPassword() {
			return password;
		}

		public boolean isEnabled() {
			return enabled;
		}

		public String getUsername() {
			return username;
		}

		public String getUserRole() {
			return role;
		}

		public String getRole() {
			return role;
		}

		public void setRole(String role) {
			this.role = role;
		}

		public void setUsername(String username) {
			this.username = username;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		public void setEnabled(boolean enabled) {
			this.enabled = enabled;
		}

		public String getLastLocation() {
			return lastLocation;
		}

		public void setLastLocation(String lastLocation) {
			this.lastLocation = lastLocation;
		}

		public Date getLastAccess() {
			return lastAccess;
		}

		public void setLastAccess(Date lastAccess) {
			this.lastAccess = lastAccess;
		}
}
