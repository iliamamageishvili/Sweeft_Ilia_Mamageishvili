package sweeft.java2;

import java.util.Arrays;

public class Main {
    public static void main(String[] args) {
        MyDataStructure<Integer> myDataStructure = new MyDataStructure<>();
        myDataStructure.add(2);
        myDataStructure.add(3);
        myDataStructure.add(4);
        myDataStructure.add(5);
        myDataStructure.add(6);
        myDataStructure.add(7);
        //System.out.println(myDataStructure.size());
        MyDataStructure.Element tuple = myDataStructure.headElement;
        for (int i = 0; i < myDataStructure.size() - 1; i++) {
            tuple = tuple.next;
            System.out.println(tuple.getObj());
        }
        myDataStructure.deleteLast();
        MyDataStructure.Element tuple1 = myDataStructure.headElement;
        for (int i = 0; i < myDataStructure.size() - 1; i++) {
            tuple1 = tuple1.next;
            System.out.println(tuple1.getObj());
        }

        myDataStructure.deleteLast();
        MyDataStructure.Element tuple2 = myDataStructure.headElement;
        for (int i = 0; i < myDataStructure.size() - 1; i++) {
            tuple2 = tuple2.next;
            System.out.println(tuple2.getObj());
        }

        int[] arr = new int[]{
                3, 2, 4, 5, 6, 8
        };
        System.out.println(isPalindrome("Radar") + " -Task1");
        System.out.println(minSplit(123 ) + " -Task2");
        System.out.println(notContains(arr) + " -Task3");
        System.out.println(isProperly("(())") + " -Task4");
        System.out.println(countVariants(4) + " -Task5");

    }

    static boolean isPalindrome(String text) {
        String ans = "";
        for (int i = text.length() - 1; i >= 0; i--) {
            ans = ans + text.charAt(i);
        }
        // რადგან პირობაში წერია იკითხება ორივე სტრინგი გადამყავს uppercase ში , წინააღმდეგ შემთხვევაში დიდი და პატარა
        // ასოების შემთხვევაში ერთი და იგივე სტრინგს სხვადასხვად აღიგქვამს პროგრამა
        if (ans.toUpperCase().equals(text.toUpperCase())) return true;
        return false;
    }

    static int minSplit(int amount) {
        return amount / 50 + (amount % 50) / 20 + (amount % 50 % 20) / 10 + (amount % 50 % 20 % 10) / 5 + (amount % 50 % 20 % 10 % 5) / 1;
    }

    static int notContains(int[] array) {
        int ans = 1;
        Arrays.sort(array);
        for (int i = 0; i < array.length; i++) {
            if (array[i] == ans) ans++;
        }
        return ans;
    }

    static int countVariants(int stearsCount) {
        if (stearsCount == 1) return 1;
        int[] arr = new int[stearsCount + 1];
        arr[1] = 1;
        arr[2] = 2;
        for (int i = 3; i <= stearsCount; i++) {
            arr[i] = arr[i - 1] + arr[i - 2];
        }
        return arr[stearsCount];

    }

    static Boolean isProperly(String sequence) {
        int cntr = 0;
        for (int i = 0; i < sequence.length(); i++) {
            if (sequence.charAt(i) == '(')
                cntr++;
            else
                cntr--;
            if (cntr < 0) {
                return false;
            }
        }
        if (cntr == 0)
            return true;

        return false;
    }

}

