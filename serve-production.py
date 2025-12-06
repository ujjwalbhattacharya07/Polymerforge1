#!/usr/bin/env python3
"""
Simple HTTP server to serve production build
Run this after building with: npm run build
"""
import http.server
import socketserver
import os
import sys

PORT = 4173
DIRECTORY = "dist"

if not os.path.exists(DIRECTORY):
    print(f"❌ Error: '{DIRECTORY}' folder not found!")
    print("Please build the project first:")
    print("  npm run build")
    sys.exit(1)

os.chdir(DIRECTORY)

class MyHTTPRequestHandler(http.server.SimpleHTTPRequestHandler):
    def end_headers(self):
        self.send_header('Cache-Control', 'no-cache, no-store, must-revalidate')
        self.send_header('Pragma', 'no-cache')
        self.send_header('Expires', '0')
        super().end_headers()

Handler = MyHTTPRequestHandler

try:
    with socketserver.TCPServer(("", PORT), Handler) as httpd:
        print(f"🚀 Production server running at:")
        print(f"   http://localhost:{PORT}")
        print(f"\n📁 Serving from: {os.path.abspath('.')}")
        print(f"\nPress Ctrl+C to stop the server")
        httpd.serve_forever()
except OSError as e:
    if "Address already in use" in str(e):
        print(f"❌ Port {PORT} is already in use.")
        print(f"   Try a different port or close the other application.")
    else:
        print(f"❌ Error: {e}")
    sys.exit(1)

