from http.server import BaseHTTPRequestHandler, HTTPServer
import datetime

TEMPLATES_DIR = "templates"

port = 8080



def render_template(file_name, data):
    with open(TEMPLATES_DIR + "/"+file_name, "r") as template_file:
        template = template_file.read()
        rendered_template = template.format_map(data)
        return rendered_template.encode("utf-8")


class ManejadorDeRequest(BaseHTTPRequestHandler):

    #Handler for the GET requests
    def do_GET(self):
        if self.path == "/":
            # generamos encabezado header HTTP
            self.send_response(200)
            self.send_header('Content-type','text/html')
            self.end_headers()
            # Send the html message
            nombre_de_usuario = "Katherine Barrera" # supongamos que consultamos a base de datos
            data = {'titulo': 'Página de Inicio de :'+ nombre_de_usuario, 
                    'texto':'hola: ' + nombre_de_usuario}
            self.wfile.write(render_template("index.html", data))
        if self.path == "/empresa":
            # generamos encabezado header HTTP
            self.send_response(200)
            self.send_header('Content-type','text/html')
            self.end_headers()
            # Send the html message
            nombre_de_usuario = "Katherine Barrera" # supongamos que consultamos a base de datos
            data = {'titulo': 'Página de Empresa de :'+ nombre_de_usuario, 
                    'texto':'hola Empresaria: ' + nombre_de_usuario}
            self.wfile.write(render_template("index.html", data))
        if self.path == "/contacto":
            # generamos encabezado header HTTP
            self.send_response(200)
            self.send_header('Content-type','text/html')
            self.end_headers()
            # Send the html message
            self.wfile.write(render_template("contacto.html"))

server = HTTPServer(('', port), ManejadorDeRequest)
print('Comenzando Servidor HTTP en Puerto: ', port)

#Wait forever for incoming http requests
server.serve_forever()