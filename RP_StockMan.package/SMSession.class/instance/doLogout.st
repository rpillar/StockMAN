as yet unclassified
doLogout
	 
	| url |
	url := '/StockMAN'.
	self user: nil.
	self unregister.
	self requestContext redirectTo: url.