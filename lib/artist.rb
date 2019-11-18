module Artist < ActiveRecord::Base 

    def valid_sign_up?(email)
        collab_emails_list = Collaborator.all.map{|collab| collab.log_in_email}
        pianists_emails_list = Pianist.all.map{|pianist| pianist.log_in_email}
        total_emails = collab_emails_list + pianists_emails_list
        # binding.pry 
        !total_emails.include?(email)
    end

    

end