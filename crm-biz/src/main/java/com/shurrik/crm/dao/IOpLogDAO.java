
package com.shurrik.crm.dao;

import com.shurrik.common.dao.IBaseDAO;
import com.shurrik.crm.model.OpLog;

public interface IOpLogDAO extends IBaseDAO<OpLog>{

	Object addop(OpLog oplog);

}
