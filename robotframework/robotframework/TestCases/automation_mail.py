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
from email.mime.image import MIMEImage
import webbrowser
import matplotlib.pyplot as plt


sender_email = "uladmin@theuniversityliving.com"
receiver_email = "pravin.garg@universityliving.com"
password = "Ci@din%2#rkad1N"  
#passkey
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

result = ExecutionResult(output_name)
result.configure(stat_config={'suite_stat_level': 2, 'tag_stat_combine': 'tagANDanother'})

total_suite = 0
passed_suite = 0
failed_suite = 0

class SuiteResults(ResultVisitor):
    def start_suite(self, suite):
        global total_suite, passed_suite, failed_suite
        if suite.tests:
            total_suite += 1
            if suite.status == "PASS":
                passed_suite += 1
            else:
                failed_suite += 1

result.visit(SuiteResults())
suitepp = math.ceil(passed_suite * 100.0 / total_suite) if total_suite else 0
elapsedtime = datetime(1970, 1, 1) + timedelta(milliseconds=result.suite.elapsedtime)
elapsedtime_str = elapsedtime.strftime("%X")
testpp = round(passed_suite * 100.0 / total_suite, 2) if total_suite else 0
elapsedtime_hours = elapsedtime_str.split(":")[0]
elapsedtime_minutes = elapsedtime_str.split(":")[1]

labels = ['Pass', 'Fail']
sizes = [passed_suite, failed_suite]
colors = ['#2ecc71', '#e74c3c']  # Green and Red colors for Pass and Fail
explode = (0.1, 0)  # Explode the Pass slice

fig, ax = plt.subplots(figsize=(8, 6))  # Set figure size
ax.pie(sizes, explode=explode, labels=labels, autopct='%1.1f%%', startangle=90, colors=colors,
       textprops={'size': 'larger'},  # Increase text size
       wedgeprops={'linewidth': 2, 'edgecolor': 'white'})  # Add border to wedges
ax.axis('equal')  


chart_image_path = os.path.join(os.getcwd(), 'pie_chart.png')
plt.savefig(chart_image_path, bbox_inches='tight', pad_inches=0.5)  


plt.close()

test_details = ""
for suite in result.suite.suites:
    for test in suite.tests:
        test_details += f"<tr><td style='text-align: left;'>{test.name}</td><td style='text-align: center;'>{test.elapsedtime / 1000} s</td><td style='text-align: center;'>{test.status}</td></tr>"

# HTML content
html_content = f"""
<!DOCTYPE html>
<html>
<head>
    <title>Robot Framework Automation Report</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <style>
        body {{
            background-color: #f7f7f7;
            font-family: 'Roboto', Arial, sans-serif;
            margin: 0;
            padding: 0;
        }}
        .container {{
            width: 100%;
            padding: 20px;
            background-color: #f7f7f7;
            max-width: 800px;
            margin: 40px auto;
            background-color: #fff;
            border: 1px solid #ddd;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }}
        .content {{
            max-width: 800px;
            margin: 0 auto;
            background: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }}
        h1, h2 {{
            font-family: 'Roboto', Arial, sans-serif;
            font-weight: 400;
        }}
        h1 {{
            text-align: center;
            color: #333333;
        }}
        h2 {{
            color: #555555;
            border-bottom: 2px solid #dddddd;
            padding-bottom: 5px;
        }}
        table {{
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }}
        th, td {{
            padding: 12px;
            border-bottom: 1px solid #dddddd;
        }}
        th {{
            background-color: #007BFF;
            color: white;
            text-align: center;
        }}
        .status-pass {{
            color: green;
            font-weight: bold;
        }}
        .status-fail {{
            color: red;
            font-weight: bold;
        }}
        .metric-table th, .metric-table td {{
            text-align: center;
        }}
        .metric-table th {{
            background-color: #007BFF;
            color: white;
        }}
        .summary {{
            margin-top: 20px;
        }}
        .summary p {{
            font-size: 1.1em;
        }}
        .footer {{
            text-align: center;
            margin-top: 20px;
            font-size: 0.9em;
            color: #777777;
        }}
        .chart {{
            text-align: center;
        }}
    </style>
</head>
<body>
    <div class="container">
        <div class="content">
            <h1>Robot Framework Automation Report</h1>
            <p>Hi Team,<br>Following are the last automation testing status:</p>
            <h2>Metrics</h2>
            <table class="metric-table">
                <thead>
                    <tr>
                        <th>Stats</th>
                        <th>Total</th>
                        <th>Pass</th>
                        <th>Fail</th>
                        <th>Percentage (%)</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td style="text-align: left;font-weight: bold;">SUITE</td>
                        <td>{total_suite}</td>
                        <td>{passed_suite}</td>
                        <td>{failed_suite}</td>
                        <td>{suitepp}</td>
                    </tr>
                    <tr>
                        <td style="text-align: left;font-weight: bold;">TESTS</td>
                        <td>{result.statistics.total.total}</td>
                        <td>{result.statistics.total.passed}</td>
                        <td>{result.statistics.total.failed}</td>
                        <td>{testpp}</td>
                    </tr>
                </tbody>
            </table>

            <div class="chart">
                <h2>Pie Chart</h2>
                <img src="cid:chart_image" alt="Pie Chart" style="width: 50%; height: auto;">
            </div>

            <h2>Info</h2>
            <table>
                <tbody>
                    <tr>
                        <td style="text-align: left;font-weight: normal;width: 30vh;">Execution Time</td>
                        <td style="text-align: center;font-weight: normal;">{elapsedtime_minutes} minutes</td>
                    </tr>
                    <tr>
                        <td style="text-align: left;font-weight: normal;width: 50vh;">Generated By</td>
                        <td style="text-align: center;font-weight: normal;">Robot Framework</td>
                    </tr>
                </tbody>
            </table>

            <div class="summary">
                <h2>Summary</h2>
                <p>The suite execution took {elapsedtime_hours} hours and {elapsedtime_minutes} minutes.</p>
                <p>The overall pass percentage is {suitepp}%.</p>
            </div>

            <div class="footer">
                <p>Please refer to the logs for detailed information.</p>
                <p>Regards,<br>QA Team</p>
            </div>
        </div>
    </div>
</body>
</html>
"""

with open(html_report_path, "w") as file:
    file.write(html_content)

webbrowser.open(f"file://{os.path.abspath(html_report_path)}")

# Email setup
msg = MIMEMultipart("related")
msg["Subject"] = "Automation Report"
msg["From"] = sender_email
msg["To"] = receiver_email

part = MIMEText(html_content, "html")
msg.attach(part)

with open(html_report_path, "rb") as attachment:
    part = MIMEBase("application", "octet-stream")
    part.set_payload(attachment.read())
    encoders.encode_base64(part)
    part.add_header("Content-Disposition", f"attachment; filename= report.html")
    msg.attach(part)

# Attach the pie chart image
with open(chart_image_path, 'rb') as f:
    img = MIMEImage(f.read(), name=os.path.basename(chart_image_path))
    img.add_header('Content-ID', '<chart_image>')
    img.add_header('Content-Disposition', 'inline', filename=os.path.basename(chart_image_path))
    msg.attach(img)

# Send the email
context = ssl.create_default_context()

with smtplib.SMTP("smtp.gmail.com", 587) as server:
    server.starttls(context=context)
    server.login(sender_email, password)
    server.sendmail(sender_email, receiver_email, msg.as_string())

os.remove(chart_image_path)
