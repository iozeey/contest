ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Latest Entries" do
          table do
            thead do
                tr do
                    th "Id"
                    th "Question"
                    th "Answer"
                    th "By user"
                end
            end

            tbody do
                Entry.latest(5).map do |t|
                    tr do
                        td link_to(t.id, admin_entry_path(t))
                        td t.question.question
                        td t.answer
                        td link_to(t.user.email, admin_user_path(t.user))
                    end
                end
            end
          end
        end
      end
    end
  end # content
end
