# Image légère de Nginx
FROM nginx:alpine

# Copier le contenu de ton build (dist/) vers le dossier web de Nginx
COPY dist/ /usr/share/nginx/html

# Exposer le port 80 (HTTP)
EXPOSE 80

# Lancer nginx au premier plan
CMD ["nginx", "-g", "daemon off;"]
