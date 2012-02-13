package org.txxfu.fastjson;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.serializer.SerializerFeature;

public class TestFastJson {

	public static void main(String[] args) throws IOException {
//		testEnumAndPos();
		String str = FileUtils.readFileToString(new File("data/json/json1"));
		Object json = JSON.parse(str);
		System.out.println(json);
//		System.out.println(json.to);
	}

	@SuppressWarnings("unused")
	private static void testEnumAndPos() {
		System.out.println("feature size: " + Feature.values().length);
		System.out.println("SerializerFeature size: "
				+ SerializerFeature.values().length);
		for (Feature f : Feature.values()) {
			System.out.println(f.ordinal() + "\t" + f.getMask());
		}

		for (int i = 0; i < 16; i++) {
			System.out.println(1 << i);
		}
	}
}
