package net.dongshuai.validator;

import net.dongshuai.utils.RRException;
import org.apache.commons.lang.StringUtils;

/**
 * 数据校验
 * @author
 * @email
 */
public abstract class Assert {

    public static void isBlank(String str, String message) {
        if (StringUtils.isBlank(str)) {
            throw new RRException(message);
        }
    }

    public static void isNull(Object object, String message) {
        if (object == null) {
            throw new RRException(message);
        }
    }
}
