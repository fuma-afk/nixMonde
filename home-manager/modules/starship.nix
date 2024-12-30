{
  programs.starship = {
      enable = true;
      settings = {
        # "$schema" = "https://starship.rs/config-schema.json";
         add_newline = true;
        command_timeout = 500;
        continuation_prompt = "[∙](bright-black) ";
        format = "[](#313244)$os$username[](fg:#313244 bg:#FAB387)$directory[](fg:#fab387 bg:#A6E3A1)$git_branch[](fg:#94E2D5 bg:#89B4FA)$docker_context[](fg:#89B4Fa bg:#B16286)$time[](fg:#B16286)$line_break$character";


#moduli da debuggare
#$git_status[](fg:#AE6E3A1 bg:#a6e3a1)$c$rust$golang$nodejs$php$java$kotlin$haskell$python

       # right_format = "";
        scan_timeout = 30;
        
#        aws = {
#          format = "[$symbol($profile )(($region) )([$duration] )]($style)";
#          symbol = "🅰 ";
#          style = "bold yellow";
#          disabled = true;
#          expiration_symbol = "X";
#          force_display = false;
#        };
#        aws.region_aliases = {};
#        aws.profile_aliases = {};
#        azure = {
#          format = "[$symbol($subscription)([$duration])]($style) ";
#          symbol = "ﴃ ";
#          style = "blue bold";
#          disabled = true;
#        };
#        battery = {
#          format = "[$symbol$percentage]($style) ";
#          charging_symbol = " ";
#          discharging_symbol = " ";
#          empty_symbol = " ";
#          full_symbol = " ";
#          unknown_symbol = " ";
#          disabled = true;
#          display = [
#            {
#              style = "red bold";
#              threshold = 10;
#            }
#          ];
#        };
#        buf = {
#          format = "[$symbol ($version)]($style)";
#          version_format = "v$raw";
#          symbol = "";
#          style = "bold blue";
#          disabled = true;
#          detect_extensions = [];
#          detect_files = [
#            "buf.yaml"
#            "buf.gen.yaml"
#            "buf.work.yaml"
#          ];
#          detect_folders = [];
#        };
        c = {
          format = "([$symbol($version)](fg:#1e1e2e bg:#94e2d5)($style))";
          style = "bg:#94e2d5";
          symbol = " ";
        };
        character = {
          format = "$symbol";
          vicmd_symbol = "[❮](bold fg:#A6DA95)";
          disabled = false;
          success_symbol = "[➜](bold fg:#A6DA95) ";
          error_symbol = "[✖](bold fg:#CC241D) ";
	  vimcmd_replace_symbol = "[❮](bold fg:#b16286)";
	  vimcmd_replace_one_symbol = "[❮](bold fg:#b16286)";
	  vimcmd_visual_symbol = "[❮](bold fg:#b7bdf8)";
        };
	line_break = {
	#  disabled = false;
	};
        cmake = {
          format = "[$symbol($version )]($style)";
          version_format = "v$raw";
          symbol = "△ ";
          style = "bold blue";
          disabled = false;
          detect_extensions = [];
          detect_files = [
            "CMakeLists.txt"
            "CMakeCache.txt"
          ];
          detect_folders = [];
        };
        cmd_duration = {
          min_time = 2000;
          format = "⏱ [$duration]($style) ";
          style = "yellow bold";
          show_milliseconds = false;
          disabled = false;
          show_notifications = false;
          min_time_to_notify = 45000;
        };
        cobol = {
          format = "[$symbol($version )]($style)";
          version_format = "v$raw";
          symbol = "⚙️ ";
          style = "bold blue";
          disabled = false;
          detect_extensions = [
            "cbl"
            "cob"
            "CBL"
            "COB"
          ];
          detect_files = [];
          detect_folders = [];
        };
        conda = {
          truncation_length = 1;
          format = "[$symbol$environment]($style) ";
          symbol = " ";
          style = "green bold";
          ignore_base = true;
          disabled = false;
        };
        container = {
          format = "[$symbol [$name]]($style) ";
          symbol = "⬢";
          style = "red bold dimmed";
          disabled = false;
        };
        crystal = {
          format = "[$symbol($version )]($style)";
          version_format = "v$raw";
          symbol = "🔮 ";
          style = "bold red";
          disabled = false;
          detect_extensions = ["cr"];
          detect_files = ["shard.yml"];
          detect_folders = [];
        };
        dart = {
          format = "[$symbol($version )]($style)";
          version_format = "v$raw";
          symbol = "🎯 ";
          style = "bold blue";
          disabled = false;
          detect_extensions = ["dart"];
          detect_files = [
            "pubspec.yaml"
            "pubspec.yml"
            "pubspec.lock"
          ];
          detect_folders = [".dart_tool"];
        };
        deno = {
          format = "[$symbol($version )]($style)";
          version_format = "v$raw";
          symbol = "🦕 ";
          style = "green bold";
          disabled = false;
          detect_extensions = [];
          detect_files = [
            "deno.json"
            "deno.jsonc"
            "mod.ts"
            "deps.ts"
            "mod.js"
            "deps.js"
          ];
          detect_folders = [];
        };
        directory = {
          disabled = false;
          format = "[$path]($style)";
          style = "fg:#181825 bg:#FAB387";
          truncation_length = 3;
          truncation_symbol = "…/";
          use_logical_path = true;
          use_os_path_sep = true;
        };
        directory.substitutions = {
          # Here is how you can shorten some long paths by text replacement;
          # similar to mapped_locations in Oh My Posh:;
          "Documents" = " ";
          "Downloads" = " ";
          "Music" = " ";
          "Pictures" = " ";
          # Keep in mind that the order matters. For example:;
          # "Important Documents" = "  ";
          # will not be replaced, because "Documents" was already substituted before.;
          # So either put "Important Documents" before "Documents" or use the substituted version:;
          # "Important  " = "  ";
          "Important " = " ";
        };
        docker_context = {
          format = "[$symbol$context]($style) ";
          style = "blue bold bg:0x06969A";
          symbol = " ";
          only_with_files = true;
          disabled = false;
          detect_extensions = [];
          detect_files = [
            "docker-compose.yml"
            "docker-compose.yaml"
            "Dockerfile"
          ];
          detect_folders = [];
        };
        dotnet = {
          format = "[$symbol($version )(🎯 $tfm )]($style)";
          version_format = "v$raw";
          symbol = "🥅 ";
          style = "blue bold";
          heuristic = true;
          disabled = false;
          detect_extensions = [
            "csproj"
            "fsproj"
            "xproj"
          ];
          detect_files = [
            "global.json"
            "project.json"
            "Directory.Build.props"
            "Directory.Build.targets"
            "Packages.props"
          ];
          detect_folders = [];
        };
        elixir = {
          format = "[$symbol($version (OTP $otp_version) )]($style)";
          version_format = "v$raw";
          style = "bold purple bg:0x86BBD8";
          symbol = " ";
          disabled = false;
          detect_extensions = [];
          detect_files = ["mix.exs"];
          detect_folders = [];
        };
        elm = {
          format = "[$symbol($version )]($style)";
          version_format = "v$raw";
          style = "cyan bold bg:0x86BBD8";
          symbol = " ";
          disabled = false;
          detect_extensions = ["elm"];
          detect_files = [
            "elm.json"
            "elm-package.json"
            ".elm-version"
          ];
          detect_folders = ["elm-stuff"];
        };
        env_var = {};
        env_var.SHELL = {
          format = "[$symbol($env_value )]($style)";
          style = "grey bold italic dimmed";
          symbol = "e:";
          disabled = true;
          variable = "SHELL";
          default = "unknown shell";
        };
        env_var.USER = {
          format = "[$symbol($env_value )]($style)";
          style = "grey bold italic dimmed";
          symbol = "e:";
          disabled = true;
          default = "unknown user";
        };
        erlang = {
          format = "[$symbol($version )]($style)";
          version_format = "v$raw";
          symbol = " ";
          style = "bold red";
          disabled = false;
          detect_extensions = [];
          detect_files = [
            "rebar.config"
            "erlang.mk"
          ];
          detect_folders = [];
        };
        fill = {
          style = "bold black";
          symbol = ".";
          disabled = false;
        };
        gcloud = {
          format = "[$symbol$account(@$domain)(($region))(($project))]($style)";
          symbol = "☁️ ";
          style = "bold blue";
          disabled = false;
        };
        gcloud.project_aliases = {};
        gcloud.region_aliases = {};
       git_branch = {
          format = "[$symbol$branch(:$remote_branch)](fg:#1e1e2e bg:#a6e3a1)($style)";
          symbol = " ";
          style = "bold purple bg:0xFCA17D";
          truncation_length = 9223372036854775807;
          truncation_symbol = "…";
          only_attached = false;
          always_show_remote = false;
          ignore_branches = [];
          disabled = false;
        };
        git_commit = {
          commit_hash_length = 7;
          format = "[($hash$tag)]($style) ";
          style = "green bold";
          only_detached = true;
          disabled = false;
          tag_symbol = " 🏷  ";
          tag_disabled = true;
        };
        git_metrics = {
          added_style = "bold green";
          deleted_style = "bold red";
          only_nonzero_diffs = true;
          format = "([+$added]($added_style) )([-$deleted]($deleted_style) )";
          disabled = false;
        };
	os = {
	  format = "[ $os]($style)";
	  disabled = false;
	  style = "bg:#313244 fg:#cdd6f4";
	
	};

        git_state = {
          am = "AM";
          am_or_rebase = "AM/REBASE";
          bisect = "BISECTING";
          cherry_pick = "🍒PICKING(bold red)";
          disabled = false;
          format = "([$state( $progress_current/$progress_total)]($style)) ";
          merge = "MERGING";
          rebase = "REBASING";
          revert = "REVERTING";
          style = "bold yellow";
        };
        git_status = {
          ahead = "🏎💨$count";
          behind = "😰$count";
          conflicted = "🏳";
          deleted = "🗑";
          disabled = false;
          diverged = "😵";
          format = "[($all_status$ahead_behind)](fg:#1e1e2e bg:#a6e3a1)($style))";
          ignore_submodules = false;
          modified = "📝";
          renamed = "👅";
          staged = "[++($count)](green)";
          stashed = "📦";
          style = "red bold bg:0xFCA17D";
          untracked = "🤷";
          up_to_date = "✓";
        };
        golang = {
          format = "[$symbol($version )](fg:#1e1e2e bg:#94e2d5)($style)";
          symbol = " ";
          style = "bg:#94e2d5";
          disabled = false;
        };
        haskell = {
          format = "[$symbol($version )](fg:#1e1e2e bg:#94e2d5)($style)";
          style = "bg:#94e2d5";
          disabled = false;
        };
        helm = {
          format = "[$symbol($version )]($style)";
          version_format = "v$raw";
          symbol = "⎈ ";
          style = "bold white";
          disabled = false;
          detect_extensions = [];
          detect_files = [
            "helmfile.yaml"
            "Chart.yaml"
          ];
          detect_folders = [];
        };
        hg_branch = {
          symbol = " ";
          style = "bold purple";
          format = "on [$symbol$branch]($style) ";
          truncation_length = 9223372036854775807;
          truncation_symbol = "…";
          disabled = true;
        };
        hostname = {
          disabled = false;
          format = "[$ssh_symbol](blue dimmed bold)[$hostname]($style) ";
          ssh_only = false;
          style = "green dimmed bold";
          trim_at = ".";
        };
        java = {
          disabled = false;
          format = "[$symbol($version )](fg:#1e1e2e bg:#94e2d5)($style)";
          style = "bg:#1e1e2e";
          symbol = " ";
        };
        jobs = {
          threshold = 1;
          symbol_threshold = 0;
          number_threshold = 2;
          format = "[$symbol$number]($style) ";
          symbol = "✦";
          style = "bold blue";
          disabled = false;
        };
        julia = {
          disabled = false;
          format = "[$symbol($version )]($style)";
          style = "bold purple bg:0x86BBD8";
          symbol = " ";
          version_format = "v$raw";
          detect_extensions = ["jl"];
          detect_files = [
            "Project.toml"
            "Manifest.toml"
          ];
          detect_folders = [];
        };
        kotlin = {
          format = "[$symbol($version )](fg:#1e1e2e bg:#94e2d5)($style)";
          version_format = "v$raw";
          symbol = "🅺 ";
          style = "bg:#94e2d5";
        };
        kubernetes = {
          disabled = false;
          format = "[$symbol$context( ($namespace))]($style) in ";
          style = "cyan bold";
          symbol = "⛵ ";
        };
        kubernetes.context_aliases = {};
        line_break = {
          disabled = false;
        };
        localip = {
          disabled = false;
          format = "[@$localipv4]($style) ";
          ssh_only = false;
          style = "yellow bold";
        };
        lua = {
          format = "[$symbol($version )]($style)";
          version_format = "v$raw";
          symbol = "🌙 ";
          style = "bold blue";
          lua_binary = "lua";
          disabled = false;
          detect_extensions = ["lua"];
          detect_files = [".lua-version"];
          detect_folders = ["lua"];
        };
        memory_usage = {
          disabled = false;
          format = "$symbol[$ram( | $swap)]($style) ";
          style = "white bold dimmed";
          symbol = " ";
          # threshold = 75;
          threshold = -1;
        };
        nim = {
          format = "[$symbol($version )]($style)";
          style = "yellow bold bg:0x86BBD8";
          symbol = " ";
          version_format = "v$raw";
          disabled = false;
          detect_extensions = [
            "nim"
            "nims"
            "nimble"
          ];
          detect_files = ["nim.cfg"];
          detect_folders = [];
        };
        nix_shell = {
          format = "[$symbol$state( ($name))]($style) ";
          disabled = false;
          impure_msg = "[impure](bold red)";
          pure_msg = "[pure](bold green)";
          style = "bold blue";
          symbol = " ";
        };
        nodejs = {
          format = "[$symbol($version )](fg:#1e1e2e bg:#94e2d5)($style)";
          style = "bg:#94e2d5";
          symbol = " ";
          disabled = false;
        };
        ocaml = {
          format = "[$symbol($version )(($switch_indicator$switch_name) )]($style)";
          global_switch_indicator = "";
          local_switch_indicator = "*";
          style = "bold yellow";
          symbol = "🐫 ";
          version_format = "v$raw";
          disabled = false;
          detect_extensions = [
            "opam"
            "ml"
            "mli"
            "re"
            "rei"
          ];
          detect_files = [
            "dune"
            "dune-project"
            "jbuild"
            "jbuild-ignore"
            ".merlin"
          ];
          detect_folders = [
            "_opam"
            "esy.lock"
          ];
        };
        openstack = {
          format = "[$symbol$cloud(($project))]($style) ";
          symbol = "☁️  ";
          style = "bold yellow";
          disabled = false;
        };
        package = {
          format = "[$symbol$version]($style) ";
          symbol = "📦 ";
          style = "208 bold";
          display_private = false;
          disabled = false;
          version_format = "v$raw";
        };
        perl = {
          format = "[$symbol($version )]($style)";
          version_format = "v$raw";
          symbol = "🐪 ";
          style = "149 bold";
          disabled = false;
          detect_extensions = [
            "pl"
            "pm"
            "pod"
          ];
          detect_files = [
            "Makefile.PL"
            "Build.PL"
            "cpanfile"
            "cpanfile.snapshot"
            "META.json"
            "META.yml"
            ".perl-version"
          ];
          detect_folders = [];
        };
        php = {
          format = "[$symbol($version )](fg:#1e1e2e bg:#94e2d5)($style)";
          symbol = "🐘 ";
          style = "bg:#94e2d5";
          disabled = false;
        };
        pulumi = {
          format = "[$symbol($username@)$stack]($style) ";
          version_format = "v$raw";
          symbol = " ";
          style = "bold 5";
          disabled = false;
        };
        purescript = {
          format = "[$symbol($version )]($style)";
          version_format = "v$raw";
          symbol = "<=> ";
          style = "bold white";
          disabled = false;
          detect_extensions = ["purs"];
          detect_files = ["spago.dhall"];
          detect_folders = [];
        };
        python = {
          format = "[[$symbol($version )](fg:#1e1e2e bg:#94e2d5)]($style)";
          style = "bg:#94e2d5";
          symbol = "🐍 ";
        };
        red = {
          format = "[$symbol($version )]($style)";
          version_format = "v$raw";
          symbol = "🔺 ";
          style = "red bold";
          disabled = false;
          detect_extensions = [
            "red"
            "reds"
          ];
          detect_files = [];
          detect_folders = [];
        };
        rlang = {
          format = "[$symbol($version )]($style)";
          version_format = "v$raw";
          style = "blue bold";
          symbol = "📐 ";
          disabled = false;
          detect_extensions = [
            "R"
            "Rd"
            "Rmd"
            "Rproj"
            "Rsx"
          ];
          detect_files = [".Rprofile"];
          detect_folders = [".Rproj.user"];
        };
        ruby = {
          format = "[$symbol($version )]($style)";
          version_format = "v$raw";
          symbol = "💎 ";
          style = "bold red";
          disabled = false;
          detect_extensions = ["rb"];
          detect_files = [
            "Gemfile"
            ".ruby-version"
          ];
          detect_folders = [];
          detect_variables = [
            "RUBY_VERSION"
            "RBENV_VERSION"
          ];
        };
        rust = {
          format = "[$symbol($version )](fg:#1e1e2e bg:#94e2d5)($style)";
          symbol = "🦀";
          style = "bg:#94e2d5";
          disabled = false;         
        };
        scala = {
          format = "[$symbol($version )]($style)";
          version_format = "v$raw";
          disabled = false;
          style = "red bold";
          symbol = "🆂 ";
          detect_extensions = [
            "sbt"
            "scala"
          ];
          detect_files = [
            ".scalaenv"
            ".sbtenv"
            "build.sbt"
          ];
          detect_folders = [".metals"];
        };
        shell = {
          format = "[$indicator]($style) ";
          bash_indicator = "bsh";
          cmd_indicator = "cmd";
          elvish_indicator = "esh";
          fish_indicator = "";
          ion_indicator = "ion";
          nu_indicator = "nu";
          powershell_indicator = "_";
          style = "white bold";
          tcsh_indicator = "tsh";
          unknown_indicator = "mystery shell";
          xonsh_indicator = "xsh";
          zsh_indicator = "zsh";
          disabled = false;
        };
        shlvl = {
          threshold = 2;
          format = "[$symbol$shlvl]($style) ";
          symbol = "↕️  ";
          repeat = false;
          style = "bold yellow";
          disabled = true;
        };
        singularity = {
          format = "[$symbol[$env]]($style) ";
          style = "blue bold dimmed";
          symbol = "📦 ";
          disabled = false;
        };
        spack = {
          truncation_length = 1;
          format = "[$symbol$environment]($style) ";
          symbol = "🅢 ";
          style = "blue bold";
          disabled = false;
        };
        status = {
          format = "[$symbol$status]($style) ";
          map_symbol = true;
          not_executable_symbol = "🚫";
          not_found_symbol = "🔍";
          pipestatus = false;
          pipestatus_format = "[$pipestatus] => [$symbol$common_meaning$signal_name$maybe_int]($style)";
          pipestatus_separator = "|";
          recognize_signal_code = true;
          signal_symbol = "⚡";
          style = "bold red bg:blue";
          success_symbol = "🟢 SUCCESS";
          symbol = "🔴 ";
          disabled = true;
        };
        sudo = {
          format = "[as $symbol]($style)";
          symbol = "🧙 ";
          style = "bold blue";
          allow_windows = false;
          disabled = true;
        };
        swift = {
          format = "[$symbol($version )]($style)";
          version_format = "v$raw";
          symbol = "🐦 ";
          style = "bold 202";
          disabled = false;
          detect_extensions = ["swift"];
          detect_files = ["Package.swift"];
          detect_folders = [];
        };
        terraform = {
          format = "[$symbol$workspace]($style) ";
          version_format = "v$raw";
          symbol = "💠 ";
          style = "bold 105";
          disabled = false;
          detect_extensions = [
            "tf"
            "tfplan"
            "tfstate"
          ];
          detect_files = [];
          detect_folders = [".terraform"];
        };
        time = {
          format = "[⏱ $time]($style)";
          style = "fg:#181825 bg:#B16286";
          use_12hr = false;
          disabled = false;
          utc_time_offset = "local";
          time_format = "%R"; # Hour:Minute Format;
          #time_format = "%T"; # Hour:Minute:Seconds Format;
          #time_range = "-";
        };
        username = {
          format = "[$user]($style)";
          show_always = true;
          style_root = "bg:#313244 fg:#cdd6f4";
          style_user = "bg:#313244 fg:#cdd6f4";
          disabled = false;
        };
        vagrant = {
          format = "[$symbol($version )]($style)";
          version_format = "v$raw";
          symbol = "⍱ ";
          style = "cyan bold";
          disabled = false;
          detect_extensions = [];
          detect_files = ["Vagrantfile"];
          detect_folders = [];
        };
        vcsh = {
          symbol = "";
          style = "bold yellow";
          format = "[$symbol$repo]($style) ";
          disabled = false;
        };
        vlang = {
          format = "[$symbol($version )]($style)";
          version_format = "v$raw";
          symbol = "V ";
          style = "blue bold";
          disabled = false;
          detect_extensions = ["v"];
          detect_files = [
            "v.mod"
            "vpkg.json"
            ".vpkg-lock.json"
          ];
          detect_folders = [];
        };
        zig = {
          format = "[$symbol($version )]($style)";
          version_format = "v$raw";
          symbol = "↯ ";
          style = "bold yellow";
          disabled = false;
          detect_extensions = ["zig"];
          detect_files = [];
          detect_folders = [];
        };
        custom = {
        };
      };
    };
    
}
