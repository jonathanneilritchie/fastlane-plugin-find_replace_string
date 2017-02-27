module Fastlane
    module Actions
        class FindReplaceStringAction < Action
            def self.run(params)
                path_to_file = File.expand_path(params[:path_to_file])
                old_string = params[:old_string]
                new_string = params[:new_string]

                UI.user_error!("ERROR - File not found at location: '#{path_to_file}'") unless File.exist?(path_to_file)

                UI.message("Reading file...")
                file = File.open(path_to_file, "r")
                fileText = file.read
                file.close

                UI.message("Replacing all occurences of '#{old_string}' with '#{new_string}' in file...")
                fileText.gsub!(old_string, new_string)
                File.open(path_to_file, "w") { |file| file << fileText }
                UI.success("Find and replace finished!")
            end

            def self.description
                "Find and replace a string in a project file"
            end

            def self.authors
                ["Jonathan Ritchie"]
            end

            def self.details
                "This plugin simply allows you to find a replace a string in a project file. All instances of the matched string in the file will be replaced. The string search is case sensitive"
            end

            def self.available_options
                [
                    FastlaneCore::ConfigItem.new(key: :old_string,
                        env_name: "OLD_STRING",
                        description: "The string that will be replaced in the file",
                        optional: false,
                    type: String),
                    FastlaneCore::ConfigItem.new(key: :new_string,
                        env_name: "NEW_STRING",
                        description: "The string that will be injected into the file",
                        optional: false,
                    type: String),
                    FastlaneCore::ConfigItem.new(key: :path_to_file,
                        env_name: "PATH_TO_FILE",
                        description: "Path to the file to be modified",
                        optional: false,
                    type: String)
                ]
            end

            def self.is_supported?(platform)
                [:ios, :mac, :android].include?(platform)
                true
            end
        end
    end
end
