package calculator;

public class Minus implements Expr {

	Expr e1 = null;
	
	Minus(Expr e1){
		this.e1 = e1;
	}
	
	@Override
	public double eval() {
		return e1.eval() * (-1);
	}

	@Override
	public Expr simplify_expr() {
		return e1;
	}

}
