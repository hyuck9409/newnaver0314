package programmers;

class Solution {
    public int[] solution(int n) {
        int[] answer = {};
         for(int i=1; i<=n; i++){
            if(i%2==1)
                
                answer[i]=i;
        }
        return answer;
    }
}