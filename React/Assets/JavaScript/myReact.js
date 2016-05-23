var MyComponent = React.createClass({
	render: function(){
		return React.DOM.div(null,
			[React.DOM.div(null,"hey"),
			React.DOM.button({className:"red"},"click")]
			);
	}
});
var MyComponentFactory = React.createFactory(MyComponent);
ReactDOM.render( 
		MyComponentFactory(null), 
		document.getElementById('container')
);