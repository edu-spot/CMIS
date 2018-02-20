<?php
			Student info (stu_info)
			
			$table->increments('stu_info_id');
            $table->string('stu_unique_id');
            $table->string('stu_title');
            $table->string('stu_first_name');
            $table->string('stu_middle_name');
            $table->string('stu_last_name');
            $table->string('stu_mother_name');
            $table->date('stu_dob');
            $table->string('stu_email_id')->unique();
			$table->biginteger('stu_mobile_no')->unique();
			$table->string('stu_bloodgroup');
			$table->string('stu_birthplace');
			$table->string('stu_religion');
			$table->date('stu_admission_date');
            *$table->longblob('stu_photo');
            $table->string('stu_languages');
			$table->integer('stu_info_stu_master_id')
            $table->rememberToken();
            $table->timestamps();
			
			
			
			Student status (stu_status) // passout, drop, detain, etc
			
			$table->increments('stu_status_id');
            $table->string('stu_status_name');
            $table->string('stu_status_description');
            *$table->timestamps('created_at');
            $table->string('created_by');
			*$table->timestamps('updated_at');
            $table->string('updated_by');
            $table->integer('is_status');
            $table->rememberToken();
            $table->timestamps();
			
			
			
			Student address (stu_addresses)
			
			$table->increments('stu_address_id');
			$table->string('stu_unique_id');
            $table->string('stu_cadd');
            $table->integer('stu_cadd_city');
            $table->integer('stu_cadd_state');
            $table->integer('stu_cadd country');
            $table->integer('stu_cadd_pincode');
			$table->string('stu_padd');
            $table->integer('stu_padd_city');
            $table->integer('stu_padd_state');
            $table->integer('stu_padd country');
            $table->integer('stu_padd_pincode');
            $table->rememberToken();
            $table->timestamps();
			
			
			Student category (stu_categories)// open, obc,st, etc
			
			$table->increments('stu_category_id');
			$table->string('stu_category_name');
			$table->integer('created_by');
			$table->integer('updated_by');
			$table->integer('is_status');
			$table->rememberToken();
			$table->timestamps();
			
			
			Employee info (emp_info)
			
			$table->increments('emp_info_id');
            $table->string('emp_unique_id');
            $table->string('emp_title');
            $table->string('emp_first_name');
            $table->string('emp_middle_name');
            $table->string('emp_last_name');
            $table->string('emp_name_alias');
            $table->string('emp_gender');
            $table->date('emp_dob');
            $table->string('emp_email_id')->unique();
			$table->biginteger('emp_mobile_no')->unique();
			$table->string('emp_bloodgroup');
			$table->string('emp_birthplace');
			$table->string('emp_religion');
			$table->string('emp_maritalstatus');
			$table->date('emp_joining_date');
            *$table->longblob('emp_photo');
            $table->string('emp_languages');
			$table->string('emp_bankaccount_no');
			$table->string('emp_qualification');
			$table->string('emp_specialization');
			$table->string('emp_experience');
			$table->string('emp_info_emp_master_id');
            $table->rememberToken();
            $table->timestamps();
			
			
			Employee address (emp_addresses)
			
			$table->increments('emp_address_id');
			$table->string('emp_unique_id');
            $table->string('emp_cadd');
            $table->integer('emp_cadd_city');
            $table->integer('emp_cadd_state');
            $table->integer('emp_cadd country');
            $table->integer('emp_cadd_pincode');
			$table->string('emp_padd');
            $table->integer('emp_padd_city');
            $table->integer('emp_padd_state');
            $table->integer('emp_padd country');
            $table->integer('emp_padd_pincode');
            $table->rememberToken();
            $table->timestamps();
			
			
			Employee status (emp_status) // , etc
			
			$table->increments('emp_status_id');
            $table->string('emp_status_name');
            $table->string('emp_status_description');
            $table->timestamps('created_at');
            $table->string('created_by');
			$table->timestamps('updated_at');
            $table->string('updated_by');
            $table->integer('is_status');
            $table->rememberToken();
            $table->timestamps();
			
			Employee category (emp_status) // regular, rejoin, resign, transfer, etc
			
			$table->increments('emp_status_id');
            $table->string('emp_status_name');
            $table->string('emp_status_description');
            $table->timestamps('created_at');
            $table->string('created_by');
			$table->timestamps('updated_at');
            $table->string('updated_by');
            $table->integer('is_status');
            $table->rememberToken();
            $table->timestamps();
			
			

            class (class)
            $table->('classid');
            $table->('')



			Course (courses)
			
			$table->increments('course_id');
			$table->string('course_name');
			$table->string('course_code');
			$table->integer('course_alias')
			$table->integer('created_by');
			$table->integer('updated_by');
			$table->integer('is_status');
			$table->rememberToken();
			$table->timestamps();
			
			
			Designations (designations)
			
			$table->increments('designation_id');
			$table->string('designation_name');
			$table->string('designation_code');
			$table->integer('designation_alias')
			$table->integer('created_by');
			$table->integer('updated_by');
			$table->integer('is_status');
			$table->timestamps();
			
			
			Departments (departments)
			
			$table->increments('department_id');
			$table->string('department_name');
			$table->string('department_code');
			$table->integer('department_alias')
			$table->integer('created_by');
			$table->integer('updated_by');
			$table->integer('is_status');
			$table->rememberToken();
			$table->timestamps();
			
			
			Subjects (subjects)
			
			$table->increments('subject_id');
			$table->string('subject_name');
			$table->string('subject_alias');
			$table->integer('course_id')
			$table->integer('created_by');
			$table->integer('updated_by');
			$table->integer('is_status');
			$table->rememberToken();
			$table->timestamps();
			
			
			Marks category (marks_category)		// mid term, end term
			
			$table->increments('marks_category_id');
			$table->string('subject_id');
			$table->string('marks_category_name');
			$table->string('marks_caregory_alias');
			$table->integer('min_marks');
			$table->integer('max_marks');
			$table->integer('created_by');
			$table->integer('updated_by');
			$table->integer('is_status');
			$table->rememberToken();
			$table->timestamps();
			
			
			Marks master (marks_master)		
			
			$table->increments('marks_master_id');
			$table->integer('course_id');
			$table->integer('subject_id');   // subject_table
			$table->integer('marks_category_id');
			$table->integer('student_unique_id');
			$table->integer('obtained_marks');
			$table->integer('created_by');
			$table->integer('updated_by');
			$table->integer('is_status');
			$table->rememberToken();
			$table->timestamps();
			
			
			Educational Timeslots 
			
			$table->increments('educational_timeslot_id');
			$table->integer('course_id');
			$table->integer('day_id');
			$table->string('slot_name');
			$table->time('start_time');
			$table->time('end_time');
			$table->rememberToken();
			$table->timestamps();
			
			
			Course pattern (course_patterns) // example comps_sem_I, comps_sem_II, comps_fy, etc.
			
			$table->increments('course_pattern_id');
			$table->string('course_pattern_name');
			$table->string('course_pattern_alias');
			$table->rememberToken();
			$table->timestamps();
			
			
			Timeslot activities // lecture, practical, seminar, etc.
			
			$table->increments('timeslot_activity_id');
			$table->string('activity_name');
			$table->string('activity_duration');
			$table->rememberToken();
			$table->timestamps();
			
			
			Timeslots office
			
			
			Student Attendance slots (stu_timetable_slots) //
			
			$table->increments('stu_timetable_slot_id');
			$table->integer('course_id');
			$table->integer('subject_id');
			$table->integer('day_id');
			$table->integer('teacher_id');
			$table->integer('timeslot_activity');
			$table->integer('is_status');
			$table->rememberToken();
			$table->timestamps();
			
			
			Student Attendance master (stu_attndance_master)		
			
			$table->increments('attendance_master_id');
			$table->integer('course_id');
			$table->integer('course_pattern_id');
			$table->integer('subject_id');
			$table->date;
			$table->integer('time_slot');
			$table->integer('stu_timetable_slot_id');
			$table->integer('created_by');
			$table->integer('updated_by');
			$table->integer('is_status');
			$table->rememberToken();
			$table->timestamps();
			
			