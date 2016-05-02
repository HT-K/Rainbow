package com.rainbow.web.mapper;

import java.util.List;
import org.springframework.stereotype.Repository;
import com.rainbow.web.admin.AdminDTO;

@Repository
public interface AdminMapper {
	public AdminDTO login(AdminDTO admin);
}
