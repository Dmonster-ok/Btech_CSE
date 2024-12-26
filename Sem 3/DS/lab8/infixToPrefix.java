import java.util.Stack;

public class infixToPrefix {
    static Stack<Character> stack = new Stack<Character>();

    static int f(char a) {
        if (a == '+' || a == '-') {
            return 1;
        } else if (a == '*' || a == '/') {
            return 3;
        } else if (a == '^') {
            return 6;
        } else if (a == '(') {
            return 9;
        } else if (a == ')') {
            return 0;
        } else {
            return 7;
        }
    }

    static int g(char a) {
        if (a == '+' || a == '-') {
            return 2;
        } else if (a == '*' || a == '/') {
            return 4;
        } else if (a == '^') {
            return 5;
        } else if (a == '(') {
            return 0;
        } else {
            return 8;
        }
    }

    static int rf(char a) {
        if (a == '+' || a == '-' || a == '*' || a == '/' || a == '^') {
            return -1;
        } else {
            return 1;
        }
    }

    static String infixPrefix(String exp) {
        int rank = 0;
        String prefix = "";
        exp = revStr(exp);
        exp += ')';
        stack.push('(');
        int len = exp.length();
        for (int i = 0; i < len; i++) {
            while (g(stack.peek()) > f(exp.charAt(i))) {
                char tmp = stack.pop();
                prefix += tmp;
                rank += rf(tmp);
                if (rank < 1) {
                    throw new Error("Invalid infix expression");
                }
            }
            if (g(stack.peek()) != f(exp.charAt(i))) {
                stack.push(exp.charAt(i));
            } else {
                stack.pop();
            }
        }
        return revStr(prefix);
    }

    static String revStr(String str) {
        str = new StringBuilder(str).reverse().toString();
        for (int i = 0; i < str.length(); i++) {
            if (str.charAt(i) == '(') {
                str = str.substring(0, i) + ')' + str.substring(i + 1);
            } else if (str.charAt(i) == ')') {
                str = str.substring(0, i) + '(' + str.substring(i + 1);
            }
        }
        return str;
    }

    public static void main(String[] args) {
        String infixExpression = "(a+b^c^d)*(e+f/d)";
        System.out.println("Prefix: " + infixPrefix(infixExpression));
        
    }
}