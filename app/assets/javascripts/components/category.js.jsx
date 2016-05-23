// Category Name
var Category = React.createClass({
    render: function() {
        return (
            <div className="category-name">
            	<CategoryName category={this.props.category} />
            </div>
        );
    }
});


// Recipe Header Component
var CategoryName = React.createClass({
    render: function() {
        return (
            <div>
                {this.props.category.name}
            </div>
        );
    }
});
