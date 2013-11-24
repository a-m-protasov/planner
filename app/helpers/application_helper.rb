module ApplicationHelper
def edit_task_link task
 link_to edit_task_path(task.id) do
   content_tag(:i, nil, class: 'icon-pencil')
  end 
end

def del_task_link task
 link_to task_path(task.id), method: :delete, data: {confirm: "Really?"} do
   content_tag(:i, nil, class: 'icon-remove')
  end 
end

def task_link task
 link_to task.title, task_path(task.id)
end

def task_links_set task
 "#{edit_task_link(task)} #{del_task_link(task)} #{task_link(task)}".html_safe
end

######
def edit_user_link user
 link_to edit_user_path(user.id) do
   content_tag(:i, nil, class: 'icon-pencil')
  end 
end

def del_user_link user
 link_to user_path(user.id), method: :delete, data: {confirm: "Really?"} do
   content_tag(:i, nil, class: 'icon-remove')
  end 
end

def user_link user
 link_to user.try(:username), user_path(user.id)
end

def user_links_set user
  "#{edit_user_link(user)} #{del_user_link(user)} #{user_link(user)}".html_safe
end

end
