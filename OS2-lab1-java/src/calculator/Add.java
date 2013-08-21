package calculator;

public class Add implements Expr {

	Expr e1 = null;
	Expr e2 = null;
	
	Add(Expr e1, Expr e2){
		this.e1 = e1;
		this.e2 = e2;
	}
	
	@Override
	public double eval() {
		return e1.eval() + e2.eval();
	}

	@Override
	public Expr simplify_expr() {
		if (e1.eval()==0) return e2.simplify_expr();
		else if (e2.eval()==0) return e2.simplify_expr();
		else return new Add(e1.simplify_expr(), e2.simplify_expr());
	}

}
