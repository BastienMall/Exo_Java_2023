<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Boucles</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les boucles</h1>
<form action="#" method="post">
    <label for="inputValeur">Saisir le nombre d'étoiles : </label>
    <input type="text" id="inputValeur" name="valeur">
    <input type="submit" value="Afficher">
</form>

<%-- Récupération de la valeur saisie par l'utilisateur --%>
<% String valeur = request.getParameter("valeur"); %>
    
<%-- Vérification de l'existence de la valeur --%>
<% if (valeur != null && !valeur.isEmpty()) { %>

<%-- Boucle for pour afficher une ligne d'étoiles --%>
    <%int cpt = Integer.parseInt(valeur); %>

<p>
  <% for (int i = 0 ; i < cpt; i++) { %> 

    <% for ( int f = cpt ; f > i + 1; f--) { %>
        <%=  "&nbsp"  %> 
    <% } %>

    <% for ( int f = 0 ; f <= i ; f++) { %>
        <%=  "*"  %> 
    <% } %>

    <br>
  <% } %>

  <% for (int i = 0 ; i < cpt; i++) { %> 

    <% for ( int f = cpt ; f > i + 1; f--) { %>
        <%=  "*"  %> 
        
    <% } %>

    <% for ( int f = 0 ; f <= i ; f++) { %>
        <%=  "&nbsp"  %> 
    <% } %>

    <br>
  <% } %>
</p>

<h2>Exercice 1 : Le carré d'étoiles</h2>
<p>Ecrire le code afin de produire un carré d'étoile</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>


<p>
  <% for (int i = 1; i <= cpt; i++) { %>
        <% for ( int f = 1 ; f <=cpt ; f++) { %>
        <%= "*" %>
    <% } %>
    <br>
  <% } %>
</p>


<h2>Exercice 2 : Triangle rectangle gauche</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>


<p>
  <% for (int i = 1; i <= cpt; i++) { %>
        <% for ( int f = 1 ; f <= i ; f++) { %>
        <%= "*" %>
    <% } %>
    <br>
  <% } %>
</p>

<h2>Exercice 3 : Triangle rectangle inversé</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>


<p>
  <% for (int i = cpt ; i >= 1; i--) { %> 
        <% for ( int f = i ; f >=1 ; f--) { %>
        <%= "*" %>
    <% } %>
    <br>
  <% } %>
</p>


<h2>Exercice 4 : Triangle rectangle 2</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la droite</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>

<%-- les espaces ne sont pas reconnus --%>

<p>
  <% for (int i = 0 ; i < cpt; i++) { %> 

    <% for ( int f = cpt ; f > i + 1; f--) { %>
        <%=  "&nbsp "  %> 
    <% } %>

    <% for ( int f = 0 ; f <= i ; f++) { %>
        <%=  "*"  %> 
    <% } %>

    <br>
  <% } %>
</p>



<h2>Exercice 5 : Triangle isocele</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la droite</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>


<p>
  <% for (int i = 0 ; i < cpt; i++) { %> 

    <% for ( int f = cpt ; f > i + 1; f--) { %>
        <%=  "&nbsp"  %> 
    <% } %>

    <% for ( int f = 0 ; f <= i ; f++) { %>
        <%=  "*"  %> 
    <% } %>

    <br>
  <% } %>
</p>

<h2>Exercice 6 : Le demi losange</h2>
<p>Ecrire le code afin de produire un losange</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;***</br>&nbsp;&nbsp;****</br>*****</p>
<p>*****</br>&nbsp;&nbsp;****</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</p>

<h2>Exercice 7 : La table de multiplication</h2>
<p>Ecrire le code afin de créser une table de multiplication</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>5 x 1 = 5</p>
<p>5 x 2 = 10</p>
<p>5 x 3 = 15</p>
<p>5 x 4 = 20</p>
<p>5 x 5 = 25</p>

<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
