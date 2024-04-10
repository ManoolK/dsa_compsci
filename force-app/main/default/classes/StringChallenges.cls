/**
 * Created by bjohnson on 3/16/24.
 * 
 * Implemented by Oxana Suvorova
 */

public with sharing class StringChallenges {
    public class StringChallengesException extends Exception {}
    /**
     * Given a string return the same string with all letters in upper case.
     * The string may contain integers and punctuation. They should be ignored.
     * @param str the string to upper case
     * @return the string in upper case
     */
    public static String toUpper(String str) {
        List<Integer> chars = str.getChars();
        for (Integer chr : chars) {
            if (chr >= 97 || chr <= 122) {
                chr -= 32;
            }
        }
        return String.fromCharArray(chars);
    }

    /**
     * Given a string return the same string with all letters in lower case.
     * The string may contain integers and punctuation. They should be ignored.
     * @param str the string to lower case
     * @return the string in lower case
     */
    public static String toLower(String str) {
        List<Integer> chars = str.getChars();
        for (Integer chr : chars) {
            if (chr >= 65 || chr <= 90) {
                chr += 32;
            }
        }
        return String.fromCharArray(chars);
    }

}