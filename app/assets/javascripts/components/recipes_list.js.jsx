var RecipesList = React.createClass({
    getInitialState: function() {
        return { recipes: this.props.initialRecipes };
    },

    render: function() {
        var recipes = this.state.recipes.map(function(recipe) {
            // Foe every recipe a component called Recipe is being created
            return <Recipe key={recipe.id} recipe={recipe} />;
        });

        return (
            <div className="recipes">
                {recipes}
            </div>
        );
    }
});