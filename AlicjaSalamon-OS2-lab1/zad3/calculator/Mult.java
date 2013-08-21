package calculator;

public class Mult implements Expr {

	Expr e1 = null;
	Expr e2 = null;
	
	Mult(Expr e1, Expr e2){
		this.e1 = e1;
		this.e2 = e2;
	}
	
	@Override
	public double eval() {
		return e1.eval() * e2.eval();
	}

	@Override
	public Expr simplify_expr() {
		if (e1.eval()==1) return e2.simplify_expr();
		else if (e2.eval()==1) return e2.simplify_expr();
		else return new Mult(e1.simplify_expr(), e2.simplify_expr());
	}

}
