
# Initial Data for Role
@admin = Role.create(name: "Admin")
@regular = Role.create(name: "Regular")
# Admin
User.create(email: "admin@ait.asia", password: "qwertyui",
            password_confirmation: "qwertyui", role_id: @admin.id)
# Regular
User.create(email: "regular@ait.asia", password: "qwertyui",
            password_confirmation: "qwertyui", role_id: @regular.id)