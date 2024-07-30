import smtplib
import ssl
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from email.mime.image import MIMEImage
import matplotlib.pyplot as plt
import numpy as np
import os

sender_email = "shockwave2908@gmail.com"
receiver_email = "himanshu.singh@universityliving.com"
password = "syjb obcv bhcz hzzo"

# Example data (replace with actual data retrieval logic)
pass_count = 10
fail_count = 5

# Generate pie chart using matplotlib
labels = ['Pass', 'Fail']
sizes = [pass_count, fail_count]
colors = ['#2ecc71', '#e74c3c']  # Green and Red colors for Pass and Fail
explode = (0.1, 0)  # Explode the Pass slice

fig, ax = plt.subplots(figsize=(8, 6))  # Set figure size
ax.pie(sizes, explode=explode, labels=labels, autopct='%1.1f%%', startangle=90, colors=colors, 
       textprops={'size': 'larger'},  # Increase text size
       wedgeprops={'linewidth': 2, 'edgecolor': 'white'})  # Add border to wedges
ax.axis('equal')  # Equal aspect ratio ensures that pie is drawn as a circle.

# Save pie chart as image
chart_image_path = os.path.join(os.getcwd(), 'pie_chart.png')
plt.savefig(chart_image_path, bbox_inches='tight', pad_inches=0.5)  # Add padding around the chart

# Close plot to avoid displaying in interactive mode
plt.close()

# HTML content with embedded image and CSS
html_content = f"""
<!DOCTYPE html>
<html>
<head>
    <title>Automation Report</title>
    <style>
        body {{
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
        }}
        h1 {{
            color: #3498db;
            text-align: center;
        }}
        .container {{
            max-width: 800px;
            margin: 40px auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }}
        .chart {{
            text-align: center;
        }}
    </style>
</head>
<body>
    <div class="container">
        <h1>Robot Framework Automation Report</h1>
        <div>
            <h2>Test Results</h2>
            <p>Pass: {pass_count}</p>
            <p>Fail: {fail_count}</p>
        </div>
        <div class="chart">
            <h2>Pie Chart</h2>
            <img src="cid:chart_image" alt="Pie Chart" style="width: 50%; height: auto;">
        </div>
    </div>
</body>
</html>
"""

msg = MIMEMultipart()
msg["Subject"] = "Automation Report"
msg["From"] = sender_email
msg["To"] = receiver_email

# Attach HTML content as email body
part1 = MIMEText(html_content, "html")
msg.attach(part1)

# Attach the pie chart image
with open(chart_image_path, 'rb') as f:
    img = MIMEImage(f.read(), name=os.path.basename(chart_image_path))
img.add_header('Content-ID', '<chart_image>')
img.add_header('Content-Disposition', 'inline', filename=os.path.basename(chart_image_path))
msg.attach(img)

# Create a secure SSL context
context = ssl.create_default_context()

# Send email
with smtplib.SMTP_SSL("smtp.gmail.com", 465, context=context) as server:
    server.login(sender_email, password)
    server.sendmail(sender_email, receiver_email, msg.as_string())

# Delete the temporary chart image file after sending the email
os.remove(chart_image_path)
