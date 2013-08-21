package calculator;

public class Main {
	
	public static void main(String args[])
	{
		Expr e1 = new Add(new Int(3), new Int(2));
		Expr e2 = new Sub(new Mult(new Int(5), new Add(new Float(2), new Float(3.5))), new Int(1));
		System.out.println(e1.eval());
		System.out.println(e2.eval());
		e1.simplify_expr();
		e2.simplify_expr();
		System.out.println(e1.eval());
		System.out.println(e2.eval());
		
		
	}

}
