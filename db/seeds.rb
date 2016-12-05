
# Initial Data for Role
@admin = Role.create(name: "Admin")
@regular = Role.create(name: "Regular")
# Admin
@user_admin = User.create(email: "admin@ait.asia", password: "qwertyui",
            password_confirmation: "qwertyui", role_id: @admin.id)
# Regular
@user_regular = User.create(email: "regular@ait.asia", password: "qwertyui",
            password_confirmation: "qwertyui", role_id: @regular.id)

PostType.create(name: "News articles", created_by_id: @user_admin.id,last_edited_by_id: @user_admin.id)
PostType.create(name: "Video clips", created_by_id: @user_admin.id,last_edited_by_id: @user_admin.id)
PostType.create(name: "Forum posts", created_by_id: @user_admin.id,last_edited_by_id: @user_admin.id)
PostType.create(name: "Product posts", created_by_id: @user_admin.id,last_edited_by_id: @user_admin.id)

Topic.create(title: "News",description: "News", created_by_id: @user_admin.id,last_edited_by_id: @user_admin.id )
Topic.create(title: "Video",description: "Video", created_by_id: @user_admin.id,last_edited_by_id: @user_admin.id )
Topic.create(title: "Marketplace",description: "Marketplace", created_by_id: @user_admin.id,last_edited_by_id: @user_admin.id )