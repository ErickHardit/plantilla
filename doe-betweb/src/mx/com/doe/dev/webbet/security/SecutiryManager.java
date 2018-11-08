package mx.com.doe.dev.webbet.security;

import java.security.InvalidKeyException;
import java.security.Key;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;

import org.apache.tomcat.util.codec.binary.Base64;

public class SecutiryManager {

	static String algorithm = "DESede";

	public static void main(String[] args) throws Exception {

		Key symKey = KeyGenerator.getInstance(algorithm).generateKey();

		Cipher c = Cipher.getInstance(algorithm);

		// byte[] encryptionBytes = encryptF("texttoencrypt",symKey,c);
		//
		// System.out.println(new String(encryptionBytes));
		// System.out.println(new String( Base64.encodeBase64(encryptionBytes) ));
		//
		// System.out.println( new String( Base64.decodeBase64(new String(
		// Base64.encodeBase64(encryptionBytes) ) ) ));
		//
		// System.out.println("Decrypted: " + decryptF(encryptionBytes,symKey,c));
		
		byte[] text = Base64.decodeBase64("rLMZ9Va01xrxpNNJr/KESw==");
		decryptF(text,symKey,c);

	}

	private static byte[] encryptF(String input, Key pkey, Cipher c) throws InvalidKeyException, BadPaddingException,

			IllegalBlockSizeException {

		c.init(Cipher.ENCRYPT_MODE, pkey);

		byte[] inputBytes = input.getBytes();

		return c.doFinal(inputBytes);
	}

	private static String decryptF(byte[] encryptionBytes, Key pkey, Cipher c) throws InvalidKeyException,

			BadPaddingException, IllegalBlockSizeException {

		c.init(Cipher.DECRYPT_MODE, pkey);

		byte[] decrypt = c.doFinal(encryptionBytes);

		String decrypted = new String(decrypt);

		return decrypted;
	}
}
