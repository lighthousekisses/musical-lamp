



pip check
IF %ERRORLEVEL% NEQ 0 exit /B 1
isort --help
IF %ERRORLEVEL% NEQ 0 exit /B 1
pytest tests/unit/ -v  --ignore=tests/unit/test_format.py --ignore=tests/unit/test_pylama_isort.py -k "not(test_requirements_dir or test_requirements_finder or test_git_hook or test_importable or test_module or test_isort_supports_shared_profiles_issue_970 or test_sort_configurable_sort_issue_1732 or test_black_pyi_file or test_gitignore)"
IF %ERRORLEVEL% NEQ 0 exit /B 1
exit /B 0
