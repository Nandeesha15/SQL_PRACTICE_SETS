class Solution {
    public boolean containsDuplicate(int[] nums) {
        HashSet<Integer> numberseen = new HashSet<>();

        for(int num:nums){
            if(numberseen.contains(num)){
                return true;
            }
            numberseen.add(num);
        }
        return false;
        
    }
    public static void main(String args[]){
        Solution s = new Solution();
        int array[] = {1,2,3,1};
        s.containsDuplicate(array);

    }
}