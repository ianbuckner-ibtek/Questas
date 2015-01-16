package com.questas.data.model;

public class User {
		private String username;
		private String password;
		private boolean enabled;
		private String role;
		
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
}
