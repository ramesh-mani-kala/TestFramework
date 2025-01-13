<html>
<head>
    <title>Robot Framework Test Results</title>
    <style>
        body { font-family: Arial, sans-serif; }
        table { width: 100%; border-collapse: collapse; }
        th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
        th { background-color: #f2f2f2; }
        .fail { color: red; }
        .pass { color: green; }
    </style>
</head>
<body>
    <h1>Robot Framework Test Results</h1>
    <h2>Test Suite: {suite_name}</h2>
    <p><strong>Generated:</strong> {generated}</p>
    <p><strong>Status:</strong> <span class="{status_class}">{status}</span></p>
    <h3>Test Cases:</h3>
    <table>
        <tr>
            <th>Test Name</th>
            <th>Status</th>
            <th>Message</th>
        </tr>
""".format(
    suite_name=escape(data["robot"]["suite"]["suite"]["suite"]["name"]),
    generated=escape(data["robot"]["generated"]),
    status=escape(data["robot"]["suite"]["suite"]["suite"]["status"]),
    status_class="fail" if data["robot"]["suite"]["suite"]["suite"]["status"] == "FAIL" else "pass"
)

# Add test cases
for test in data["robot"]["suite"]["suite"]["suite"]["test"]:
    html += """
        <tr>
            <td>{name}</td>
            <td class="{status_class}">{status}</td>
            <td>{msg}</td>
        </tr>
    """.format(
        name=escape(test["name"]),
        status=escape(test["status"]),
        msg=escape(test["kw"][0]["msg"]),
        status_class="fail" if test["status"] == "FAIL" else "pass"
    )

# Close HTML
html += """
    </table>
</body>
</html>
"""

# Write to file
with open("test_results.html", "w") as file:
    file.write(html)

print("HTML report generated: test_results.html")