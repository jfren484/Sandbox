Object.prototype.getProperties = function (joinBy) {
	var list = new Array();
	for (prop in this)
		if (typeof this[prop] !== "function" )
			list.push(prop.concat('=', this[prop]));

	return list.join(joinBy);
};