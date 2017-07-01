/**
 * AdminController
 *
 * @description :: Server-side logic for managing admins
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */
function authenticateAdmin(req,res){
	if(req.body.adminPass == "admin")
		res.status(200).render("admin/main");
	else {
		res.forbidden();
	}
}

function showUsers(req,res){
	res.status(200).render("admin/showUsers");
}

module.exports = {
	authenticateAdmin,
	showUsers,
};
