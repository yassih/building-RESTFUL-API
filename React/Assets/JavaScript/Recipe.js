var Recipe = React.createClass({
	getInitialState: function() {
	    return {
	      title: '',
	      image: ''
	    };
	  },
	componentDidMount: function(){
		$.ajax({
			url: 'http://localhost:3000/api/recipes/' + this.props.recipeId,
			method: 'get',
			dataType: 'json',
			crossDomain: true,
			headers:{'Access-Control-Allow-Origin': 'http://localhost:3000'},
			success: function(data){
				title = data.name;
				image = data.image;
			},
			error: function(x,status,error){
				console.log(error);
				title = '';
				image = '';
			}
		});

	},
	render: function(){
		return React.DOM.div({className:"recipe-box"},
				[
					React.DOM.img({className:"recipe-image", src: this.state.image}),
			 		React.DOM.div({className:"recipe-title"}, this.state.title)
		 		]
			 );
	}
});
var myComponentFactory = React.createFactory(Recipe);
ReactDOM.render(myComponentFactory({"recipeId":"1"}),document.getElementById("recipe-box"));

