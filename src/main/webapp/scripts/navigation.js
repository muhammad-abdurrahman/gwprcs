function selectNavigationTab(tab) {
	var menuItems = $("#menu ul li");
	menuItems.each(function(idx, li) {
		var item = $(li);
		if ($(li).attr('id') == tab) {
			$(li).addClass("active");
		} else {
			$(li).removeClass("active");
		}
	});
}