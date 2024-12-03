

void main(List<String> arguments) {
  print(swapNumber(0));
  print(swapNumber(1));
  print(swapNumber(3));

  print(checkLetters("toosmallword"));
  print(checkLetters("abcdefghijklmNOPQRSTUVWXYZ"));
  print(checkLetters("The quick brown fox jumps over three meter and better than a lazy dog"));

  countLetters("mississippi");
  countLetters("successful");
}
  //swapNumber function 
  int swapNumber(int number){
    if (number!=0 && number!=1){
      print("input must be 1 or 0 only");
      return -1;
    }
   int swapped=0;
   if(number==0){
    swapped=1;}

   return swapped;
  }

//String count function
bool checkLetters(String sentnce){
  final letters =<String>{}; //create set to store unique letters 
  for (var char in sentnce.split('')){
if(RegExp(r'[a-zA-Z]').hasMatch(char)){ // Check if the character is a letter
letters.add(char.toLowerCase());}
  }
 return letters.length == 26;

}

//Map count letters
void countLetters(String str){
  Map<String, int> countMap={};
for (var char in str.toLowerCase().split('')){
  if(RegExp(r'[a-zA-Z]').hasMatch(char)){

    if (countMap.containsKey(char)) { 
        countMap[char] = countMap[char]! + 1; 
      } else {
        countMap[char]=1;
      }
  }
}
  print(countMap);
}
