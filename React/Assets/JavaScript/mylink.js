var MyLink = React.createClass({
	render: function(){
		return React.DOM.a({href: this.props.link, target:"_blank"},"***" + this.props.link);
	}
});
var MyLinkFactory = React.createFactory(MyLink);
ReactDOM.render(MyLinkFactory({'link':'www.google.com'}),document.getElementById("container1"));