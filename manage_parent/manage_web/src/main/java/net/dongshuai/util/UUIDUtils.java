package net.dongshuai.util;

import java.util.UUID;

/**
 * @author chenjiabin
 * @Function
 * @DATE 2018/6/18 14:17
 */
public class UUIDUtils {
    public  static String uuid(){
        String s = UUID.randomUUID().toString();
        String uuid = s.replace("-", "");
        return uuid;
    }

    public static void main(String[] args) {
        System.out.println(UUIDUtils.uuid());
    }
}
