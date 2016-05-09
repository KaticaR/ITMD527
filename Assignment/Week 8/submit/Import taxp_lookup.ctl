{"version":2,"type":"import","id":"3053f70f-17f9-483b-8917-768c52e3b8a4","name":"Import taxp_lookup.ctl","label":"Import taxp_lookup.ctl","description":"","created":1457967304444,"modified":1457967336979,"notes":"","parameters":{"server":"","target":"com.sas.ep.sascoder.execution.producers.VPP","action":"runSASCode","priority":"Reserved","code":"/* Generated Code (IMPORT) */\r\n/* Source File: Week8_Assignment_Profile_Matrix_HongZhang.xlsx */\r\n/* Source Path: /folders/myfolders/census */\r\n/* Code generated on: Monday, March 14, 2016 2:55:36 PM */\r\n\r\n%web_drop_table(CENSUS.taxp_lookup);\r\n\r\n\r\nFILENAME REFFILE \"/folders/myfolders/census/Week8_Assignment_Profile_Matrix_HongZhang.xlsx\" TERMSTR=CR;\r\n\r\nPROC IMPORT DATAFILE=REFFILE\r\n\tDBMS=XLSX\r\n\tOUT=CENSUS.taxp_lookup;\r\n\tGETNAMES=YES;\r\n\tSHEET=\"Tax Lookup\";\r\nRUN;\r\n\r\nPROC CONTENTS DATA=CENSUS.taxp_lookup; RUN;\r\n\r\n\r\n%web_open_table(CENSUS.taxp_lookup);","resource":false,"outputType":"TABLE","outputName":"taxp_lookup","outputLocation":"CENSUS","fileName":"Week8_Assignment_Profile_Matrix_HongZhang.xlsx","filePath":"/folders/myfolders/census","fileType":"","fileSheet":"Tax Lookup","fileTable":"","delimiterOption":"","dataRowOption":-1,"guessingRowsOption":-1,"getnamesOption":true,"quoteDelimiterOption":"","eolDelimiterOption":"CR"},"properties":{"left":"20","top":"20","width":"100","height":"60","region":"output","fillcolor":"#E0E6F1","linecolor":"#6882a3","tooltip":"","portsonly":false,"key":"control","visible":true}}