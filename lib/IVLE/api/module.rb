module IVLE
  module IVLEModule
    def modules(duration=0, include_all_info=true)
      api 'Modules', duration: duration, includeallinfo: include_all_info
    end

    def modules_staff(duration=0, include_all_info=true)
      api 'Modules_Staff', duration: duration, includeallinfo: include_all_info
    end

    def modules_student(duration=0, include_all_info=true)
      api 'Modules_Student', duration: duration, includeallinfo: include_all_info
    end

    def module(course_id, title_only=false, duration=0, include_all_info=true)
      api 'Module', courseid: course_id, titleonly: title_only, duration: duration, includeallinfo: include_all_info
    end

    def modules_search(search_parameters={}, duration=0, include_all_info=true)
      # Verbatim from API docs: AuthToken, ModuleCode, ModuleTitle, LecturerName, Department, Semester, AcadYear, ModNameExact,
      # LecNameExact, tag are optional fields. But at least one must be supplied.
      api 'Modules_Search', search_parameters.merge({ duration: duration, includeallinfo: include_all_info })
    end

    def module_lecturers(course_id, duration=0)
      api 'Module_Lecturers', courseid: course_id, duration: duration
    end

    def module_information(course_id, duration=0)
      api 'Module_Information', courseid: course_id, duration: duration
    end

    def module_weblinks(course_id)
      api 'Module_Weblinks', courseid: course_id
    end

    def module_reading_formatted(course_id, duration=0)
      api 'Module_ReadingFormatted', courseid: course_id, duration: duration
    end

    def module_reading_unformatted(course_id, duration=0)
      api 'Module_ReadingUnformatted', courseid: course_id, duration: duration
    end

    def module_reading(course_id, duration=0)
      api 'Module_Reading', courseid: course_id, duration: duration
    end

    def modules_taken(student_id)
      api 'Modules_Taken', studentid: student_id
    end
  end
end
