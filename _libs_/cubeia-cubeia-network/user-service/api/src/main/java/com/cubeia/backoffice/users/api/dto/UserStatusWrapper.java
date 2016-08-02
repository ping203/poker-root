/**
 * Copyright (C) 2010 Cubeia Ltd <info@cubeia.com>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
package com.cubeia.backoffice.users.api.dto;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

import org.apache.commons.lang.builder.ToStringBuilder;

@XmlRootElement(name="UserStatusWrapper")
public class UserStatusWrapper {

	
	private UserStatus userStatus;
	
	
	public UserStatusWrapper() {}
	
	public UserStatusWrapper(UserStatus status) {
		userStatus = status;
	}

	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
	
	@XmlElement(name="userStatus")
	public UserStatus getUserStatus() {
		return userStatus;
	}
	
	public void setUserStatus(UserStatus userStatus) {
		this.userStatus = userStatus;
	}
	
}
