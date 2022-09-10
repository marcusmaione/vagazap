# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Lisbon & Bachelor's

5.times do |i|
    User.create(first_name: "User", last_name: "#{i}", phone: "999 999 999", city: "Lisbon",
                email: "user#{i}@gmail.com", password: "apapap", password_confirmation: "apapap")
    
    Course.create(user_id: "#{i}",level: "Bacherlor's", school: "Universidade de Lisboa", field: "Accounting", complete: "1")

    Experience.create(user_id: "#{i}",company_name: "Company #{i}", company_sector: "Banking", years: "#{i}",
                      title: "Analyst", functional_area: "Finance", description: "A brief description.")
end

5.times do |i|
    User.create(first_name: "User", last_name: "#{i+5}", phone: "999 999 999", city: "Lisbon",
                email: "user#{i+5}@gmail.com", password: "apapap", password_confirmation: "apapap")
    
    Course.create(user_id: "#{i+5}",level: "Bacherlor's", school: "Universidade de Lisboa", field: "Business", complete: "1")

    Experience.create(user_id: "#{i+5}",company_name: "Company #{i}", company_sector: "Retail", years: "#{i}",
                      title: "Analyst", functional_area: "Sales", description: "A brief description.")
end

5.times do |i|
    User.create(first_name: "User", last_name: "#{i+10}", phone: "999 999 999", city: "Lisbon",
                email: "user#{i+10}@gmail.com", password: "apapap", password_confirmation: "apapap")
    
    Course.create(user_id: "#{i+10}",level: "Bacherlor's", school: "Universidade de Lisboa", field: "Computer Science", complete: "1")

    Experience.create(user_id: "#{i+10}",company_name: "Company #{i}", company_sector: "Technology", years: "#{i}",
                      title: "Analyst", functional_area: "Technology", description: "A brief description.")
end

# Lisbon & Master's

5.times do |i|
    User.create(first_name: "User", last_name: "#{i+15}", phone: "999 999 999", city: "Lisbon",
                email: "user#{i+15}@gmail.com", password: "apapap", password_confirmation: "apapap")
    
    Course.create(user_id: "#{i+15}",level: "Master's", school: "Universidade de Lisboa", field: "Accounting", complete: "1")

    Experience.create(user_id: "#{i+15}",company_name: "Company #{i}", company_sector: "Banking", years: "#{i}",
                      title: "Manager", functional_area: "Finance", description: "A brief description.")
end

5.times do |i|
    User.create(first_name: "User", last_name: "#{i+20}", phone: "999 999 999", city: "Lisbon",
                email: "user#{i+20}@gmail.com", password: "apapap", password_confirmation: "apapap")
    
    Course.create(user_id: "#{i+20}",level: "Master's", school: "Universidade de Lisboa", field: "Business", complete: "1")

    Experience.create(user_id: "#{i+20}",company_name: "Company #{i}", company_sector: "Retail", years: "#{i}",
                      title: "Manager", functional_area: "Sales", description: "A brief description.")
end

5.times do |i|
    User.create(first_name: "User", last_name: "#{i+25}", phone: "999 999 999", city: "Lisbon",
                email: "user#{i+25}@gmail.com", password: "apapap", password_confirmation: "apapap")
    
    Course.create(user_id: "#{i+25}",level: "Master's", school: "Universidade de Lisboa", field: "Computer Science", complete: "1")

    Experience.create(user_id: "#{i+25}",company_name: "Company #{i}", company_sector: "Technology", years: "#{i}",
                      title: "Manager", functional_area: "Technology", description: "A brief description.")
end

# Lisbon & Doctorate

5.times do |i|
    User.create(first_name: "User", last_name: "#{i+30}", phone: "999 999 999", city: "Lisbon",
                email: "user#{i+30}@gmail.com", password: "apapap", password_confirmation: "apapap")
    
    Course.create(user_id: "#{i+30}",level: "Master's", school: "Universidade de Lisboa", field: "Accounting", complete: "1")

    Experience.create(user_id: "#{i+30}",company_name: "Company #{i}", company_sector: "Banking", years: "#{i}",
                      title: "Manager", functional_area: "Finance", description: "A brief description.")
end

5.times do |i|
    User.create(first_name: "User", last_name: "#{i+35}", phone: "999 999 999", city: "Lisbon",
                email: "user#{i+35}@gmail.com", password: "apapap", password_confirmation: "apapap")
    
    Course.create(user_id: "#{i+35}",level: "Master's", school: "Universidade de Lisboa", field: "Business", complete: "1")

    Experience.create(user_id: "#{i+35}",company_name: "Company #{i}", company_sector: "Retail", years: "#{i}",
                      title: "Manager", functional_area: "Sales", description: "A brief description.")
end

5.times do |i|
    User.create(first_name: "User", last_name: "#{i+40}", phone: "999 999 999", city: "Lisbon",
                email: "user#{i+40}@gmail.com", password: "apapap", password_confirmation: "apapap")
    
    Course.create(user_id: "#{i+40}",level: "Master's", school: "Universidade de Lisboa", field: "Computer Science", complete: "1")

    Experience.create(user_id: "#{i+40}",company_name: "Company #{i}", company_sector: "Technology", years: "#{i}",
                      title: "Manager", functional_area: "Technology", description: "A brief description.")
end

# Remote & Bachelor's

5.times do |i|
    User.create(first_name: "User", last_name: "#{i+45}", phone: "999 999 999", city: "Remote",
                email: "user#{i+45}@gmail.com", password: "apapap", password_confirmation: "apapap")
    
    Course.create(user_id: "#{i+45}",level: "Bacherlor's", school: "Universidade de Lisboa", field: "Accounting", complete: "1")

    Experience.create(user_id: "#{i+45}",company_name: "Company #{i}", company_sector: "Banking", years: "#{i}",
                      title: "Analyst", functional_area: "Finance", description: "A brief description.")
end

5.times do |i|
    User.create(first_name: "User", last_name: "#{i+50}", phone: "999 999 999", city: "Remote",
                email: "user#{i+50}@gmail.com", password: "apapap", password_confirmation: "apapap")
    
    Course.create(user_id: "#{i+50}",level: "Bacherlor's", school: "Universidade de Lisboa", field: "Business", complete: "1")

    Experience.create(user_id: "#{i+50}",company_name: "Company #{i}", company_sector: "Retail", years: "#{i}",
                      title: "Analyst", functional_area: "Sales", description: "A brief description.")
end

5.times do |i|
    User.create(first_name: "User", last_name: "#{i+55}", phone: "999 999 999", city: "Remote",
                email: "user#{i+55}@gmail.com", password: "apapap", password_confirmation: "apapap")
    
    Course.create(user_id: "#{i+55}",level: "Bacherlor's", school: "Universidade de Lisboa", field: "Computer Science", complete: "1")

    Experience.create(user_id: "#{i+55}",company_name: "Company #{i}", company_sector: "Technology", years: "#{i}",
                      title: "Analyst", functional_area: "Technology", description: "A brief description.")
end

# Remote & Master's

5.times do |i|
    User.create(first_name: "User", last_name: "#{i+60}", phone: "999 999 999", city: "Remote",
                email: "user#{i+60}@gmail.com", password: "apapap", password_confirmation: "apapap")
    
    Course.create(user_id: "#{i+60}",level: "Master's", school: "Universidade de Lisboa", field: "Accounting", complete: "1")

    Experience.create(user_id: "#{i+60}",company_name: "Company #{i}", company_sector: "Banking", years: "#{i}",
                      title: "Manager", functional_area: "Finance", description: "A brief description.")
end

5.times do |i|
    User.create(first_name: "User", last_name: "#{i+65}", phone: "999 999 999", city: "Remote",
                email: "user#{i+65}@gmail.com", password: "apapap", password_confirmation: "apapap")
    
    Course.create(user_id: "#{i+65}",level: "Master's", school: "Universidade de Lisboa", field: "Business", complete: "1")

    Experience.create(user_id: "#{i+65}",company_name: "Company #{i}", company_sector: "Retail", years: "#{i}",
                      title: "Manager", functional_area: "Sales", description: "A brief description.")
end

5.times do |i|
    User.create(first_name: "User", last_name: "#{i+70}", phone: "999 999 999", city: "Remote",
                email: "user#{i+70}@gmail.com", password: "apapap", password_confirmation: "apapap")
    
    Course.create(user_id: "#{i+70}",level: "Master's", school: "Universidade de Lisboa", field: "Computer Science", complete: "1")

    Experience.create(user_id: "#{i+70}",company_name: "Company #{i}", company_sector: "Technology", years: "#{i}",
                      title: "Manager", functional_area: "Technology", description: "A brief description.")
end

# Remote & Doctorate

5.times do |i|
    User.create(first_name: "User", last_name: "#{i+75}", phone: "999 999 999", city: "Remote",
                email: "user#{i+75}@gmail.com", password: "apapap", password_confirmation: "apapap")
    
    Course.create(user_id: "#{i+75}",level: "Doctorate", school: "Universidade de Lisboa", field: "Accounting", complete: "1")

    Experience.create(user_id: "#{i+75}",company_name: "Company #{i}", company_sector: "Banking", years: "#{i}",
                      title: "Manager", functional_area: "Finance", description: "A brief description.")
end

5.times do |i|
    User.create(first_name: "User", last_name: "#{i+80}", phone: "999 999 999", city: "Remote",
                email: "user#{i+80}@gmail.com", password: "apapap", password_confirmation: "apapap")
    
    Course.create(user_id: "#{i+80}",level: "Doctorate", school: "Universidade de Lisboa", field: "Business", complete: "1")

    Experience.create(user_id: "#{i+80}",company_name: "Company #{i}", company_sector: "Retail", years: "#{i}",
                      title: "Manager", functional_area: "Sales", description: "A brief description.")
end

5.times do |i|
    User.create(first_name: "User", last_name: "#{i+85}", phone: "999 999 999", city: "Remote",
                email: "user#{i+85}@gmail.com", password: "apapap", password_confirmation: "apapap")
    
    Course.create(user_id: "#{i+85}",level: "Doctorate", school: "Universidade de Lisboa", field: "Computer Science", complete: "1")

    Experience.create(user_id: "#{i+85}",company_name: "Company #{i}", company_sector: "Technology", years: "#{i}",
                      title: "Manager", functional_area: "Technology", description: "A brief description.")
end


#COMPANIES AND JOBS
# Lisbon & Banking

5.times do |i|
    Company.create(name: "Company #{i}", sector: "Banking", city: "Lisbon",
                   email: "company#{i}@gmail.com", password: "apapap", password_confirmation: "apapap")
    
    Job.create(company_id: "#{i}", title: "Analyst", level: "Senior", sector: "Finance",
               description: "A description.", education_requirement: "Bacherlor's")
end

5.times do |i|
    Company.create(name: "Company #{i+5}", sector: "Banking", city: "Lisbon",
                   email: "company#{i+5}@gmail.com", password: "apapap", password_confirmation: "apapap")
    
    Job.create(user_id: "#{i+5}", title: "Manager", level: "Junior", sector: "Sales",
               description: "A description.", education_requirement: "Master's")
end

5.times do |i|
    Company.create(name: "Company #{i+10}", sector: "Banking", city: "Lisbon",
                email: "company#{i+10}@gmail.com", password: "apapap", password_confirmation: "apapap")
    
    Job.create(user_id: "#{i+10}", title: "Director", level: "Senior", sector: "Technology",
               description: "A description.", education_requirement: "Doctorate")
end

# Lisbon & Retail

5.times do |i|
    Company.create(name: "Company #{i+15}", sector: "Retail", city: "Lisbon",
                   email: "company#{i+15}@gmail.com", password: "apapap", password_confirmation: "apapap")
    
    Job.create(company_id: "#{i+15}", title: "Analyst", level: "Senior", sector: "Finance",
               description: "A description.", education_requirement: "Bacherlor's")
end

5.times do |i|
    Company.create(name: "Company #{i+20}", sector: "Retail", city: "Lisbon",
                   email: "company#{i+20}@gmail.com", password: "apapap", password_confirmation: "apapap")
    
    Job.create(user_id: "#{i+20}", title: "Manager", level: "Junior", sector: "Sales",
               description: "A description.", education_requirement: "Master's")
end

5.times do |i|
    Company.create(name: "Company #{i+25}", sector: "Retail", city: "Lisbon",
                email: "company#{i+25}@gmail.com", password: "apapap", password_confirmation: "apapap")
    
    Job.create(user_id: "#{i+25}", title: "Director", level: "Senior", sector: "Technology",
               description: "A description.", education_requirement: "Doctorate")
end

# Lisbon & Technology

5.times do |i|
    Company.create(name: "Company #{i+30}", sector: "Technology", city: "Lisbon",
                   email: "company#{i+30}@gmail.com", password: "apapap", password_confirmation: "apapap")
    
    Job.create(company_id: "#{i+30}", title: "Analyst", level: "Senior", sector: "Finance",
               description: "A description.", education_requirement: "Bacherlor's")
end

5.times do |i|
    Company.create(name: "Company #{i+35}", sector: "Technology", city: "Lisbon",
                   email: "company#{i+35}@gmail.com", password: "apapap", password_confirmation: "apapap")
    
    Job.create(user_id: "#{i+35}", title: "Manager", level: "Junior", sector: "Sales",
               description: "A description.", education_requirement: "Master's")
end

5.times do |i|
    Company.create(name: "Company #{i+40}", sector: "Technology", city: "Lisbon",
                email: "company#{i+40}@gmail.com", password: "apapap", password_confirmation: "apapap")
    
    Job.create(user_id: "#{i+40}", title: "Director", level: "Senior", sector: "Technology",
               description: "A description.", education_requirement: "Doctorate")
end

# Remote & Banking

5.times do |i|
    Company.create(name: "Company #{i+45}", sector: "Banking", city: "Remote",
                   email: "company#{i+45}@gmail.com", password: "apapap", password_confirmation: "apapap")
    
    Job.create(company_id: "#{i+45}", title: "Analyst", level: "Senior", sector: "Finance",
               description: "A description.", education_requirement: "Bacherlor's")
end

5.times do |i|
    Company.create(name: "Company #{i+50}", sector: "Banking", city: "Remote",
                   email: "company#{i+50}@gmail.com", password: "apapap", password_confirmation: "apapap")
    
    Job.create(user_id: "#{i+50}", title: "Manager", level: "Junior", sector: "Sales",
               description: "A description.", education_requirement: "Master's")
end

5.times do |i|
    Company.create(name: "Company #{i+55}", sector: "Banking", city: "Remote",
                email: "company#{i+55}@gmail.com", password: "apapap", password_confirmation: "apapap")
    
    Job.create(user_id: "#{i+55}", title: "Director", level: "Senior", sector: "Technology",
               description: "A description.", education_requirement: "Doctorate")
end

# Remote & Retail

5.times do |i|
    Company.create(name: "Company #{i+60}", sector: "Retail", city: "Remote",
                   email: "company#{i+60}@gmail.com", password: "apapap", password_confirmation: "apapap")
    
    Job.create(company_id: "#{i+60}", title: "Analyst", level: "Senior", sector: "Finance",
               description: "A description.", education_requirement: "Bacherlor's")
end

5.times do |i|
    Company.create(name: "Company #{i+65}", sector: "Retail", city: "Remote",
                   email: "company#{i+65}@gmail.com", password: "apapap", password_confirmation: "apapap")
    
    Job.create(user_id: "#{i+65}", title: "Manager", level: "Junior", sector: "Sales",
               description: "A description.", education_requirement: "Master's")
end

5.times do |i|
    Company.create(name: "Company #{i+70}", sector: "Retail", city: "Remote",
                email: "company#{i+70}@gmail.com", password: "apapap", password_confirmation: "apapap")
    
    Job.create(user_id: "#{i+70}", title: "Director", level: "Senior", sector: "Technology",
               description: "A description.", education_requirement: "Doctorate")
end

# Remote & Technology

5.times do |i|
    Company.create(name: "Company #{i+75}", sector: "Technology", city: "Remote",
                   email: "company#{i+75}@gmail.com", password: "apapap", password_confirmation: "apapap")
    
    Job.create(company_id: "#{i+75}", title: "Analyst", level: "Senior", sector: "Finance",
               description: "A description.", education_requirement: "Bacherlor's")
end

5.times do |i|
    Company.create(name: "Company #{i+80}", sector: "Technology", city: "Remote",
                   email: "company#{i+80}@gmail.com", password: "apapap", password_confirmation: "apapap")
    
    Job.create(user_id: "#{i+80}", title: "Manager", level: "Junior", sector: "Sales",
               description: "A description.", education_requirement: "Master's")
end

5.times do |i|
    Company.create(name: "Company #{i+85}", sector: "Technology", city: "Remote",
                email: "company#{i+85}@gmail.com", password: "apapap", password_confirmation: "apapap")
    
    Job.create(user_id: "#{i+85}", title: "Director", level: "Senior", sector: "Technology",
               description: "A description.", education_requirement: "Doctorate")
end