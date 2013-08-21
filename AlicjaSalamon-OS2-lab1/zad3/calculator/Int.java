package calculator;

public class Int implements Expr {

	double e;

	Int(int e) {
		this.e = e;
	}

	@Override
	public double eval() {
		return e;
	}

	@Override
	public Expr simplify_expr() {
		return this;
	}

}
