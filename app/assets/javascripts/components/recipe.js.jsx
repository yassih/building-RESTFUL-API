//The Recipe Thumbnail Component
var Recipe = React.createClass({
    render: function() {
        return (
            <div className="recipe-thumbnail">
            	<RecipeImage recipe={this.props.recipe} />
                <RecipeTitle recipe={this.props.recipe} />
            </div>
        );
    }
});

// Recipe Image Component
var RecipeImage = React.createClass({
    render: function() {
        return (
            <div className="recipe-image-area">
                <img src={this.props.recipe.image}/>
            </div>
        );
    }
});

// Recipe Header Component
var RecipeTitle = React.createClass({
    render: function() {
        return (
            <div className="recipe-title-area">
                {this.props.recipe.name}
            </div>
        );
    }
});

