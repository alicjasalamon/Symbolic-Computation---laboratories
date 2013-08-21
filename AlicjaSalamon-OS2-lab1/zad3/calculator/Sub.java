package calculator;

public class Sub implements Expr {

	Expr e1 = null;
	Expr e2 = null;
	
	Sub(Expr e1, Expr e2){
		this.e1 = e1;
		this.e2 = e2;
	}
	
	@Override
	public double eval() {
		return e1.eval() - e2.eval();
	}

	@Override
	public Expr simplify_expr() {
		return new Sub(e1.simplify_expr(), e2.simplify_expr());
	}
	
}
