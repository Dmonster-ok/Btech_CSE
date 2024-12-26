import java.util.Stack;

public class EvaluatePostfix {
    static Stack<String> stack = new Stack<String>();

    static boolean isOperator(char c) {
        return c == '+' || c == '-' || c == '*' || c == '/';
    }

    static int evaluatePostfix(String exp) {
        int len = exp.length();
        for (int i = 0; i < len; i++) {
            char c = exp.charAt(i);
            if (isOperator(c)) {
                int b = Integer.parseInt(stack.pop());
                int a = Integer.parseInt(stack.pop());
                int result = 0;
                switch (c) {
                    case '+':
                        result = a + b;
                        break;
                    case '-':
                        result = a - b;
                        break;
                    case '*':
                        result = a * b;
                        break;
                    case '/':
                        result = a / b;
                        break;
                }
                stack.push(Integer.toString(result));
            } else {
                stack.push(Character.toString(c));
            }
        }
        return Integer.parseInt(stack.pop());
    }
    
    public static void main(String[] args) {
        String infixExpression = "42+87-*";

        System.out.println(evaluatePostfix(infixExpression));
    }
}