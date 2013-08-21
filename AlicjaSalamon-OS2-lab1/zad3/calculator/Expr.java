package calculator;

public interface Expr {
	
	public double eval();
	public Expr simplify_expr();

}
