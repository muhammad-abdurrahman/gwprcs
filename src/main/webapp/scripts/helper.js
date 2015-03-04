function selectNavigationTab(tab) {
	var menuItems = $("#menu ul li");
	menuItems.each(function(idx, li) {
		if ($(li).attr('id') == tab) {
			$(li).addClass("active");
		} else {
			$(li).removeClass("active");
		}
	});
}