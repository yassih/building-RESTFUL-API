var CategoriesList = React.createClass({
    getInitialState: function() {
        return { categories: this.props.initialCategories };
    },

    render: function() {
        var categories = this.state.categories.map(function(category) {
            // Foe every recipe a component called Recipe is being created
            return <Category key={category.id} category={category} />;
        });

        return (
            <div className="categories">
                {categories}
            </div>
        );
    }
});