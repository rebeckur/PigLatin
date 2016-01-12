import java.util.*;

public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println("New word: " + pigLatin(lines[i]));
	}
}
public void draw()
{
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	if (sWord.equals(" "))
	{
		System.out.println("There is no word.");
		return 0;
	}
	for (int i = 0; i < sWord.length()-1; i++)
	{
		if (sWord.charAt(i) == 'a')
		{
			System.out.println("The word is: " + sWord + ". the index of a is " + i);
			return i;
		}
		if (sWord.charAt(i) == 'e')
		{
			System.out.println("The word is: " + sWord + ". the index of e is " + i);
			return i;
		}
		if (sWord.charAt(i) == 'i')
		{
			System.out.println("The word is: " + sWord + ". the index of i is " + i);
			return i;
		}
		if (sWord.charAt(i) == 'o')
		{
			System.out.println("The word is: " + sWord + ". the index of o is " + i);
			return i;
		}
		if (sWord.charAt(i) == 'u') //need to add a qu case
		{
			System.out.println("The word is: " + sWord + ". the index of u is " + i);
			return i;
		}
	}
	return -1;
	
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	int vowelIndex = findFirstVowel(sWord);
	if (findFirstVowel(sWord) >= 1)
	{
		return sWord.substring(vowelIndex, sWord.length()) + sWord.substring(0, vowelIndex) + "ay";
	}
	else if(vowelIndex == -1)
	{
		return sWord + "ay";
	}
	else
	{
		return "ERROR!";
	}
}
