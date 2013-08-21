package calculator;

public class Div implements Expr{
	
	Expr e1 = null;
	Expr e2 = null;
	
	Div(Expr e1, Expr e2){
		this.e1 = e1;
		this.e2 = e2;
	}
	
	@Override
	public double eval() {
		return e1.eval() / e2.eval();
	}

	@Override
	public Expr simplify_expr() {
		return new Div(e1.simplify_expr(), e2.simplify_expr());
	}

}
