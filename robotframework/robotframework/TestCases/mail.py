import smtplib
import ssl
import sys
import os
import math
from datetime import datetime, timedelta
from robot.api import ExecutionResult, ResultVisitor
from email import encoders
from email.mime.base import MIMEBase
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart
import webbrowser

# Define email details
sender_email = "shockwave2908@gmail.com"
receiver_email = "himanshu.singh@universityliving.com"
password = "syjb obcv bhcz hzzo"  # Replace with your actual password

# Define report file paths
output_file_path = "C:/Users/himanshu.singh/Downloads/robotframework/robotframework/TestCases/output.xml"
html_report_path = "C:/Users/himanshu.singh/Downloads/robotframework/robotframework/TestCases/report.html"

# Get the path for the input file
def getopts(argv):
    opts = {}
    while argv:
        if argv[0][0] == '-':
            opts[argv[0]] = argv[1]
        argv = argv[1:]
    return opts

myargs = getopts(sys.argv)

if '-inputpath' in myargs:
    path = os.path.abspath(os.path.expanduser(myargs['-inputpath']))
else:
    path = os.path.curdir

if '-output' in myargs:
    output_name = os.path.join(path, myargs['-output'])
else:
    output_name = os.path.join(path, output_file_path)

print(output_name)


result = ExecutionResult(output_name)
# result.configure(stat_config={'suite_stat_level': 2, 'tag_stat_combine': 'tagANDanother'})

# total_suite = 0
# passed_suite = 0
# failed_suite = 0

# class SuiteResults(ResultVisitor):
#     def start_suite(self, suite):
#         global total_suite, passed_suite, failed_suite
#         if suite.tests:
#             total_suite += 1
#             if suite.status == "PASS":
#                 passed_suite += 1
#             else:
#                 failed_suite += 1

# result.visit(SuiteResults())

# suitepp = math.ceil(passed_suite * 100.0 / total_suite) if total_suite else 0
# elapsedtime = datetime(1970, 1, 1) + timedelta(milliseconds=result.suite.elapsedtime)
# elapsedtime_str = elapsedtime.strftime("%X")
# testpp = round(passed_suite * 100.0 / total_suite, 2) if total_suite else 0
# elapsedtime_hours = elapsedtime_str.split(":")[0]
# elapsedtime_minutes = elapsedtime_str.split(":")[1]

# test_details = ""
# for suite in result.suite.suites:
#     for test in suite.tests:
#         test_details += f"<tr><td style='text-align: left;'>{test.name}</td><td style='text-align: center;'>{test.elapsedtime / 1000} s</td><td style='text-align: center;'>{test.status}</td></tr>"

# HTML content
# html_content = f"""
# <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
# <html xmlns="http://www.w3.org/1999/xhtml">
# <head>
#     <title>Robot Framework Automation Report</title>
#     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
#     <meta http-equiv="X-UA-Compatible" content="IE=edge" />
#     <meta name="viewport" content="width=device-width, initial-scale=1.0" />
#     <style>
#         body {{
#             background-color: #f7f7f7;
#             font-family: 'Roboto', Arial, sans-serif;
#             margin: 0;
#             padding: 0;
#             -webkit-font-smoothing: antialiased;
#             -moz-osx-font-smoothing: grayscale;
#         }}
#         .container {{
#             width: 100%;
#             padding: 20px;
#             background-color: #f7f7f7;
#         }}
#         .content {{
#             max-width: 800px;
#             margin: 0 auto;
#             background: #ffffff;
#             padding: 20px;
#             border-radius: 8px;
#             box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
#         }}
#         h1, h2, h3 {{
#             font-family: 'Roboto', Arial, sans-serif;
#             font-weight: 400;
#         }}
#         h1 {{
#             text-align: center;
#             color: #333333;
#         }}
#         h2 {{
#             color: #555555;
#             border-bottom: 2px solid #dddddd;
#             padding-bottom: 5px;
#         }}
#         table {{
#             width: 100%;
#             border-collapse: collapse;
#             margin: 20px 0;
#         }}
#         th, td {{
#             padding: 12px;
#             border-bottom: 1px solid #dddddd;
#         }}
#         th {{
#             background-color: #007BFF;
#             color: white;
#             text-align: center;
#         }}
#         .status-pass {{
#             color: green;
#             font-weight: bold;
#         }}
#         .status-fail {{
#             color: red;
#             font-weight: bold;
#         }}
#         .metric-table th, .metric-table td {{
#             text-align: center;
#         }}
#         .metric-table th {{
#             background-color: #007BFF;
#             color: white;
#         }}
#         .summary {{
#             margin-top: 20px;
#         }}
#         .summary p {{
#             font-size: 1.1em;
#         }}
#         .footer {{
#             text-align: center;
#             margin-top: 20px;
#             font-size: 0.9em;
#             color: #777777;
#         }}
#         .pie-chart {{
#             position: relative;
#             width : 500px;
#             min-height: 350px;
#             margin: 0 auto;
#             outline: 1px solid #ccc;
#         }}
#         .pie-chart h2 {{
#             position: absolute;
#             margin: 1rem;
#         }}
#         .pie-chart cite {{
#             position: absolute;
#             bottom: 0;
#             font-size: 80%;
#             padding: 1rem;
#             color: gray;
#         }}
#         .pie-chart figcaption {{
#             position: absolute;
#             bottom: 1em;
#             right: 1em;
#             font-size: smaller;
#             text-align: right;
#         }}
#         .pie-chart .label {{
#             position: absolute;
#             top: 35%;
#             left: 32%;
#             transform: translate(-50%, -50%);
#             font-size: 14px;
#             color: #000000;
#             font-weight: bold;
#         }}
#         .pie-chart .center-text {{
#             position: absolute;
#             top: 50%;
#             left: 50%;
#             transform: translate(-50%, -50%);
#             text-align: center;
#             color: #004EA2;
#             z-index: 1;
#             line-height: 1;
#         }}
#         .pie-chart .center-text p {{
#             margin: 0;
#             font-size: 16pt;
#         }}
#         .pie-chart .center-text .number {{
#             font-size: 40pt;
#             font-weight: 900;
#             letter-spacing: -0.08em;
#         }}
#         .pie-chart .line {{
#             position: absolute;
#             bottom: calc(50% - 50px);
#             left: calc(50% + 100px);
#             transform: translate(0, 100%);
#             width: calc(50% - 100px);
#             height: 2px;
#             background-color: black;
#         }}
#         .pie-chart .text {{
#             position: absolute;
#             bottom: calc(50% - 50px - 25px);
#             left: calc(50% + 115px + 15px + 3ch);
#             transform: translate(0, -50%);
#         }}
#         .pie-chart .text p {{
#             margin: 0;
#             font-size: 16px;
#             color: #000000;
#         }}
#         .pie-chart .text span {{
#             font-weight: bold;
#         }}
#         .pie-chart .text .number {{
#             font-size: 20pt;
#             color: #004EA2;
#         }}
#     </style>
# </head>
# <body>
#     <div class="container">
#         <div class="content">
#             <h1>Robot Framework Automation Report</h1>
#             <p>Hi Team,<br>Following are the last automation testing status:</p>
#             <h2>Metrics</h2>
#             <table class="metric-table">
#                 <thead>
#                     <tr>
#                         <th>Stats</th>
#                         <th>Total</th>
#                         <th>Pass</th>
#                         <th>Fail</th>
#                         <th>Percentage (%)</th>
#                     </tr>
#                 </thead>
#                 <tbody>
#                     <tr>
#                         <td style="text-align: left;font-weight: bold;">SUITE</td>
#                         <td>{total_suite}</td>
#                         <td>{passed_suite}</td>
#                         <td>{failed_suite}</td>
#                         <td>{suitepp}</td>
#                     </tr>
#                     <tr>
#                         <td style="text-align: left;font-weight: bold;">TESTS</td>
#                         <td>{result.statistics.total.total}</td>
#                         <td>{result.statistics.total.passed}</td>
#                         <td>{result.statistics.total.failed}</td>
#                         <td>{testpp}</td>
#                     </tr>
#                 </tbody>
#             </table>

#             <figure class="pie-chart">
#                 <figcaption>Suite Results</figcaption>
#                 <div class="center-text">
#                     <p class="number">{suitepp}%</p>
#                     <p>Pass</p>
#                 </div>
#                 <div class="label">Pass</div>
#                 <div class="text">
#                     <span class="number">{passed_suite}</span>
#                     <p>Pass</p>
#                 </div>
#                 <div class="line"></div>
#             </figure>

#             <h2>Info</h2>
#             <table>
#                 <tbody>
#                     <tr>
#                         <td style="text-align: left;font-weight: normal;width: 30vh;">Execution Time</td>
#                         <td style="text-align: center;font-weight: normal;">{elapsedtime_minutes} h</td>
#                     </tr>
#                     <tr>
#                         <td style="text-align: left;font-weight: normal;width: 50vh;">Generated By</td>
#                         <td style="text-align: center;font-weight: normal;">Robot Framework</td>
#                     </tr>
#                 </tbody>
#             </table>

#             <h2>Test Details</h2>
#             <table class="table">
#                 <thead>
#                     <tr>
#                         <th>Test Name</th>
#                         <th>Duration (s)</th>
#                         <th>Status</th>
#                     </tr>
#                 </thead>
#                 <tbody>
#                     {test_details}
#                 </tbody>
#             </table>

#             <div class="summary">
#                 <h2>Summary</h2>
#                 <p>The suite execution took {elapsedtime_hours} hours and {elapsedtime_minutes} minutes.</p>
#                 <p>The overall pass percentage is {suitepp}%.</p>
#             </div>

#             <div class="footer">
#                 <p>Please refer to the logs for detailed information.</p>
#                 <p>Regards,<br>QA Team</p>
#             </div>
#         </div>
#     </div>
# </body>
# </html>
# """

# with open(html_report_path, "w") as file:
#     file.write(html_content)

webbrowser.open(f"file://{os.path.abspath(html_report_path)}")


msg = MIMEMultipart("alternative")
msg["Subject"] = "Automation Report"
msg["From"] = sender_email
msg["To"] = receiver_email

# part = MIMEText(html_content, "html")
# msg.attach(part)

with open("C:/Users/himanshu.singh/Downloads/robotframework/robotframework/TestCases/report.html", "rb") as attachment:
    part = MIMEBase("application", "octet-stream")
    part.set_payload(attachment.read())

encoders.encode_base64(part)
part.add_header("Content-Disposition", f"attachment; filename= log.html")
msg.attach(part)

context = ssl.create_default_context()

with smtplib.SMTP("smtp.gmail.com", 587) as server:
    server.starttls(context=context)
    server.login(sender_email, password)
    server.sendmail(sender_email, receiver_email, msg.as_string())
