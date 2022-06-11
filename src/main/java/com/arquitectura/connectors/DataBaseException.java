package com.arquitectura.connectors;

public class DataBaseException extends Exception{
	private static final long serialVersionUID=1L;
	public DataBaseException() {
		super();
	}
	public DataBaseException(String message) {
		super(message);
	}
	public DataBaseException(Throwable cause) {
		super(cause);
	}
	public DataBaseException(String message,Throwable cause) {
		super(message,cause);
	}
}
