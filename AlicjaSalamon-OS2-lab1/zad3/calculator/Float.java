package calculator;

public class Float implements Expr {

	double e;

	Float(double e) {
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
