# sp_log_parser
SP log parser application 

### Idea:

This ruby application is suppose to parse a webserver log file and generate some statistics. 

### Expectations: 

- This application should be able to run as shell command and take log file path as argument. 
- This application parse `log entries` and give page visit count on in two formats.
    - Most webpage `visits count` (in descending order)
    - Most unique `visits count` (in descending order)

### Implementation steps: 

- A runner/executable ruby script should be written to take log file as argument.
- Runner script has to call two parser (`most_visit_counter` and `most_uniq_visit_counter`) classes
- Each `parser` has its own responsibility/purpose.
- Each `parser` should iterate over all log entries and validate them.
- Each `log_entry` should be validated by `long_entry_validator` to make sure we are counting right visits.
- Output of each `parser` should be an array of `webpage` to be ordered on base of its `webpage.visit_count`. 
- A printer class can be written to output the result to either stdout/file/json. 
         