package UIT.SE325H22.Group2.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import UIT.SE325H22.Group2.dao.impl.SongOnlineDao;
import UIT.SE325H22.Group2.dao.intf.IGenericDao;
import UIT.SE325H22.Group2.dao.intf.ISongOnlineDao;
import UIT.SE325H22.Group2.model.SongOnline;
import UIT.SE325H22.Group2.service.intf.ISongOnlineService;

@Service
// ("songOnlineService")
public class SongOnlineService extends GenericServiceImpl<SongOnline, Integer> implements ISongOnlineService {
	private ISongOnlineDao songOnlineDao;

	public SongOnlineService() {
	}
	 @Autowired
	public SongOnlineService(@Qualifier("songOnlineDao") IGenericDao<SongOnline, Integer> genericDao) {
		super(genericDao);
		this.songOnlineDao = (SongOnlineDao) genericDao;

	}
}
