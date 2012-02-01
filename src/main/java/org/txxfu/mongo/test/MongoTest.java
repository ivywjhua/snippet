package org.txxfu.mongo.test;

import java.io.File;
import java.io.IOException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.Mongo;
import com.mongodb.MongoException;
import com.mongodb.gridfs.GridFSDBFile;

public class MongoTest {

	public static void main(String[] args) throws UnknownHostException,
			MongoException {
		Mongo m = new Mongo("10.241.10.30", 27017);
//		test1(m);
//		test2(m);

		m.close();
	}

	private static void test1(Mongo m) {
		DB db = m.getDB("txxfu");
		DBCollection users = db.getCollection("aaa");
		DBCursor cur = users.find();
		while (cur.hasNext()) {
			DBObject next = cur.next();
			System.out.println(next.toString());
		}
	}
	
	

	private static void test2(Mongo m) {
		// 获取数据库对象,如果没mydb数据库，自动创建一个
		DB db = m.getDB("mydb");

		// 删除数据库对象
		m.dropDatabase("test");

		// 获取所有数据库名称列表
		for (String s : m.getDatabaseNames()) {
			System.out.println(s);
		}

		// 增加一个用户,密码需转换成字符数据
		 db.addUser("admin", "123456".toCharArray());
//		 System.out.println(db.authenticate("admin", "123456".toCharArray()));

		// 验证数据库用户名密码
		boolean auth = db.authenticate("admin", "123456".toCharArray());
		System.out.println("-----------" + auth);

		// 得到一个集合，可对这个集合进行CRUD操作
		DBCollection coll = db.getCollection("adminCollection");
		// DBCollection coll = db.getCollection("userCollection");

		// 统计adminCollection集合中文档数量
		System.out.println("adminCollection object count-----"
				+ coll.getCount());

		// 用到内部文档组装数据，然后用集合的insert方法插入
		DBObject object = new BasicDBObject();
		object.put("picName", "d:\\pic\\test\\1.jpg");
		object.put("content", "ssssssssss");
		coll.insert(object);
		for (int i = 0; i < 10; i++) {
			 coll.insert(new BasicDBObject().append("i", i));
		}

		// 使用findOne()查找集合中第一个文档
		DBObject myDoc = coll.findOne();
		System.out.println("the first result----" + myDoc);

		// 查询,相当于字段--值的关系
		DBObject dbObject = new BasicDBObject();
		dbObject.put("picName", "d:\\pic\\test\\1.jpg");
		// dbObject.put("_id","c5605578414d384b5e4cc200");
		DBCursor curs = coll.find(dbObject);
		while (curs.hasNext()) {
			System.out.println("query result-------"
					+ curs.next().get("_id").toString());
		}

		// 删除集合中所有的数据
//		DBObject toRemoveObject = new BasicDBObject();
//		dbObject.put("i", 0);
//		coll.remove(toRemoveObject);

		// 删除集合中某个文档数据
		DBObject toRemoveObject = new BasicDBObject();
		toRemoveObject.put("i", 5);
		DBObject ob = coll.findOne(toRemoveObject);
		if (ob != null) {
			System.out.println("---to remove-------" + ob);
			coll.remove(ob);
		}

		// coll.remove(new BasicDBObject().append("i", 1));

		// 使用光标（cursor）来获取当前集合中全部文档
		DBCursor cur = coll.find();
		while (cur.hasNext()) {
			System.out.println("------" + cur.next());
		}

		// 为当前集合相应属性创建索引,指定升序（1）或降序（-1）。
		coll.createIndex(new BasicDBObject("user", 1));

		// 获取索引列表
		List<DBObject> indexList = coll.getIndexInfo();
		for (DBObject o : indexList) {
			System.out.println("index ---------" + o);
		}
/*
		// 用DBObject存储JAVA对象
		DBCollection collection = db.getCollection("MemberCollection");
		// 创建Java中的对象
		Member member = new Member();
		member.put("userName", "admin");
		member.put("password", "admin");
		member.put("logTime", new Date());
		member.setUserName("admin");
		member.setPassword("admin");
		member.setLogTime(new Date());
		collection.insert(member);

		// 把文档转换成DBObject接口类型，要将它实例化为你的对象
		DBCollection.setObjectClass();
		collection.setObjectClass(Member);
		Member myTweet = (Member) collection.findOne();
*/
		m.dropDatabase("mydb");
	}
	
	static MongoService mongoDAO = new MongoServiceImpl("shopin_db_img", "img");

	static String basepath = MongoTest.class.getResource("/").getPath();
	
	private static void test3(Mongo m) {
		String filePath = basepath + "file/" + "186.jpg";
		File file = new File(filePath);
		if (file.exists()) {
			System.out.println("文件存在");
			try {
				mongoDAO.saveFile(file, "20090103.jpg");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		// findFile("20100103.jpg");
		// mongoDAO.removeFile(new ObjectId("4b457ba50851085297b6ec13"));
		// mongoDAO.removeAllFile();
		for (GridFSDBFile str : mongoDAO.getAllFiles()) {
			System.out.println("-----------" + str);
		}
	}
	
	// 查找图片
	public static void findFile(String filename) {
		try {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("filename", filename);
			GridFSDBFile file = mongoDAO.findFirstFile(map);
			System.out.println("-------file------" + file.getId());

			// 将查询出的对象写成图片文件
			file.writeTo(basepath + "file/fromDB.jpg");
		} catch (IOException e) {
			e.printStackTrace();
		}

		List<GridFSDBFile> list = mongoDAO.findFilesByName(filename);
		System.out.println(list.size() + "-------list---" + list);
	}

}
