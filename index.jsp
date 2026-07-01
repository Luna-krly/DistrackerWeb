<%-- 
    Document   : index
    Created on : 7 may. 2026, 16:13:23
    Author     : Karely
--%>
<%-- Document: index --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="Objetos.obj_RepositorioImagenes" %>
<%
    obj_RepositorioImagenes imagen = new obj_RepositorioImagenes();
    
    String logoMovilidad = imagen.getLOGO_CON_NOMBRE();
    String logoConNombre = imagen.getLOGO_MOVILIDAD();
    String uno = imagen.getUno();
    String dos = imagen.getDos();
    String cinco = imagen.getCinco();
    String seis = imagen.getSeis();
    String camion = imagen.getCamion();
    String cuatro = imagen.getCuatro();
    String tres = imagen.getTres();
    String siete = imagen.getSiete();
    String ocho = imagen.getOcho();
    String nueve = imagen.getNueve();
    String diez = imagen.getDiez();
%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>DIESEL TRACKER</title>
        <link rel="shortcut icon" href="<%= logoMovilidad%>">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Urbanist:wght@300;400;600;700;900&display=swap" rel="stylesheet">
        <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
          /* ── RESET ── */
*, *::before, *::after {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
html { scroll-behavior: smooth; }
body {
    font-family: 'Urbanist', system-ui, sans-serif;
    background: #070c14;
    color: #e8edf2;
    overflow-x: hidden;
    -webkit-font-smoothing: antialiased;
}
img { max-width: 100%; display: block; }
a { text-decoration: none; }
 
/* ── TOKENS ── */
:root {
    --green:      #22f29a;
    --green-dim:  rgba(34,242,154,.12);
    --green-glow: 0 0 40px rgba(34,242,154,.30);
    --dark:       #070c14;
    --surface:    #0d1520;
    --surface-2:  #111c28;
    --border:     rgba(255,255,255,.07);
    --text:       #e8edf2;
    --text-muted: rgba(232,237,242,.52);
    --radius:     1.5rem;
    --tr:         all .35s cubic-bezier(.4,0,.2,1);
}
 
/* ══════════════════════════════════════════
   NAVBAR
══════════════════════════════════════════ */
.navbar {
    position: fixed;
    top: 0; left: 0; right: 0;
    z-index: 999;
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 20px 40px;
    background: linear-gradient(to bottom, rgba(7,12,20,.92) 0%, transparent 100%);
}
.navbar-logo {
    font-size: 1.4rem;
    font-weight: 900;
    letter-spacing: -1.5px;
    text-transform: uppercase;
    color: var(--text);
}
.navbar-logo span { color: var(--green); }
 
/* ══════════════════════════════════════════
   HERO
══════════════════════════════════════════ */
.hero-section {
    position: relative;
    width: 100%;
    height: 100vh;
    min-height: 500px;
    display: flex;
    align-items: center;
    justify-content: center;
    background-image:
        linear-gradient(to bottom, rgba(7,11,20,.25), rgba(7,11,20,.75)),
        url('<%= camion%>');
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    background-repeat: no-repeat;
    overflow: hidden;
}
.hero-text {
    position: relative;
    z-index: 2;
    text-align: center;
    color: white;
    width: 100%;
    padding: 0 24px;
    margin-bottom: 14vh;
}
.hero-eyebrow {
    color: var(--green);
    font-size: .75rem;
    font-weight: 700;
    letter-spacing: .25em;
    text-transform: uppercase;
    margin-bottom: 18px;
}
.hero-h1 {
    font-size: clamp(32px, 8vw, 140px);
    font-weight: 900;
    line-height: .9;
    letter-spacing: -3px;
    text-transform: uppercase;
    color: var(--text);
    margin-bottom: 18px;
}
.hero-h1 span { color: var(--green); }
.accent-line {
    width: 64px;
    height: 4px;
    background: linear-gradient(90deg, var(--green), #12c97a);
    border-radius: 999px;
    margin: 0 auto 18px;
}
.hero-sub {
    color: var(--text-muted);
    font-size: clamp(13px, 1.8vw, 22px);
    font-weight: 300;
    max-width: 640px;
    margin: 0 auto;
    line-height: 1.6;
}
.hero-truck {
    position: absolute;
    bottom: -20px;
    right: 4%;
    width: min(52vw, 860px);
    min-width: 240px;
    max-width: calc(100vw - 16px);
    z-index: 3;
    pointer-events: none;
    will-change: transform;
}
.hero-truck img { width: 100%; display: block; }
 
/* ANIMACIONES DE ENTRADA */
.hero-eyebrow {
    opacity: 0;
    animation: slideTop 1s ease forwards;
}
.hero-h1 {
    opacity: 0;
    animation: slideLeft 1.2s ease forwards;
    animation-delay: .3s;
}
.hero-sub {
    opacity: 0;
    animation: slideRight 1.2s ease forwards;
    animation-delay: .8s;
}
.accent-line {
    opacity: 0;
    animation: zoomIn 1s ease forwards;
    animation-delay: .6s;
}
 
@keyframes slideTop {
    from { opacity: 0; transform: translateY(-120px); }
    to   { opacity: 1; transform: translateY(0); }
}
@keyframes slideLeft {
    from { opacity: 0; transform: translateX(-300px); }
    to   { opacity: 1; transform: translateX(0); }
}
@keyframes slideRight {
    from { opacity: 0; transform: translateX(300px); }
    to   { opacity: 1; transform: translateX(0); }
}
@keyframes zoomIn {
    from { opacity: 0; transform: scaleX(0); }
    to   { opacity: 1; transform: scaleX(1); }
}
 
/* ══════════════════════════════════════════
   CONTENIDO OVERLAY
══════════════════════════════════════════ */
.content-overlay {
    position: relative;
    z-index: 10;
    background: linear-gradient(180deg, #ffffff 0%, #f7fbf8 100%);
    border-radius: 48px 48px 0 0;
    margin-top: -70px;
    padding-top: 90px;
    overflow: hidden;
    box-shadow:
        0 -10px 60px rgba(0,0,0,.55),
        0 -40px 100px rgba(0,0,0,.35),
        0 0 80px rgba(34,242,154,.08);
}
.content-overlay::before {
    content: "";
    position: absolute;
    top: 0;
    left: -50%;
    width: 200%;
    height: 5px;
    background: linear-gradient(
        90deg,
        transparent 0%,
        rgba(34,242,154,.2) 10%,
        #22f29a 30%,
        #7dffcb 50%,
        #22f29a 70%,
        rgba(34,242,154,.2) 90%,
        transparent 100%
    );
    box-shadow:
        0 0 15px rgba(34,242,154,.9),
        0 0 30px rgba(34,242,154,.8),
        0 0 60px rgba(34,242,154,.6),
        0 0 100px rgba(34,242,154,.3);
    animation: neonMove 3s linear infinite;
    z-index: 5;
}
@keyframes neonMove {
    0%   { transform: translateX(-30%); opacity: .6; }
    50%  { opacity: 1; }
    100% { transform: translateX(30%);  opacity: .6; }
}
.content-overlay .green-pulse {
    position: absolute;
    top: -2px;
    left: -20%;
    width: 40%;
    height: 8px;
    background: linear-gradient(90deg, transparent, #22f29a, #7dffcb, #22f29a, transparent);
    filter: blur(8px);
    animation: pulseLine 4s linear infinite;
    z-index: 6;
}
@keyframes pulseLine {
    from { left: -40%; }
    to   { left: 120%; }
}
 
/* ══════════════════════════════════════════
   SERVICE CARDS  ← AQUÍ ESTÁN LOS FIXES
══════════════════════════════════════════ */
.services-wrap {
    width: 98%;
    max-width: 1900px;
    margin: -30px auto 0;
    padding: 0 15px;
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 24px;
}
 
/* La card es flex-column para que service-row ocupe todo el alto */
.service-card {
    background: linear-gradient(0deg, #0d1016 0%, #151922 0%);
    border-radius: 38px;
    overflow: hidden;
    position: relative;
    border: 1px solid rgba(255,255,255,.04);
    transition: transform .5s ease, border-color .5s ease, box-shadow .5s ease;
    display: flex;
    flex-direction: column;
}
.service-card:hover {
    transform: translateY(-10px) scale(1.01);
    border-color: rgba(34,242,154,.15);
    box-shadow: 0 20px 60px rgba(0,0,0,.35), 0 0 40px rgba(34,242,154,.06);
}
/* shimmer */
.service-card::before {
    content: "";
    position: absolute; top: 0; left: -120%; width: 50%; height: 100%;
    background: linear-gradient(90deg, transparent, rgba(255,255,255,.06), transparent);
    transform: skewX(-20deg); transition: 1s; pointer-events: none;
    z-index: 2;
}
.service-card:hover::before { left: 140%; }
 
/* service-row ocupa todo el alto disponible de la card */
.service-row {
    display: flex;
    align-items: stretch;
    flex: 1;
    min-height: 300px;
}
.service-row.reverse { flex-direction: row-reverse; }
 
/* ── FIX IMAGEN ──
   El contenedor tiene posición relativa y alto fijo por align-self: stretch.
   La imagen usa position:absolute + inset:0 para cubrir 100% siempre. */
.service-image {
    width: 50%;
    flex-shrink: 0;
    overflow: hidden;
    position: relative;
    align-self: stretch;  /* estira al mismo alto que el texto */
}
.service-image img {
    position: absolute;
    inset: 0;
    width: 100%;
    height: 100%;
    object-fit: cover;
    object-position: center;
    transition: transform 1.2s ease, filter .6s ease;
}
.service-card:hover .service-image img {
    transform: scale(1.08);
    filter: brightness(1.05) contrast(1.04);
}
.service-row:not(.reverse) .service-image::after {
    content: "";
    position: absolute; inset: 0;
    background: linear-gradient(to right, transparent 50%, #0d1016 100%);
}
.service-row.reverse .service-image::after {
    content: "";
    position: absolute; inset: 0;
    background: linear-gradient(to left, #0d1016 0%, transparent 50%);
}
 
/* Contenido */
.service-content {
    flex: 1;
    padding: 48px 44px;
    display: flex; flex-direction: column; justify-content: center;
    position: relative; color: white;
    min-width: 0;
}
.service-number {
    position: absolute; top: 20px; right: 28px;
    font-size: 100px; font-weight: 900; line-height: 1;
    color: rgba(255,255,255,.035); pointer-events: none; user-select: none;
}
.service-title-h2 {
    font-size: clamp(22px, 2.8vw, 58px);
    font-weight: 900; line-height: .95;
    letter-spacing: -1px; margin-bottom: 16px;
    color: white;
}
.service-title-h2 span { color: var(--green); }
.service-desc {
    font-size: clamp(.82rem, 1.1vw, 1rem);
    color: rgba(255,255,255,.62);
    line-height: 1.8; margin-bottom: 24px;
}
 
/* Badges */
.feature-group { display: flex; flex-wrap: wrap; gap: 10px; }
.feature-badge {
    background: rgba(255,255,255,.06);
    border: 1px solid rgba(255,255,255,.08);
    color: white; padding: 10px 16px; border-radius: 60px;
    display: flex; align-items: center; gap: 8px;
    font-size: .84rem; transition: var(--tr);
    backdrop-filter: blur(10px);
    white-space: nowrap;
}
.feature-badge:hover {
    transform: translateY(-3px);
    background: rgba(34,242,154,.12);
    border-color: rgba(34,242,154,.3);
}
.feature-badge i { color: var(--green); flex-shrink: 0; }
 
/* ══════════════════════════════════════════
   FEATURES SECTION
══════════════════════════════════════════ */
.features-section {
    position: relative;
    padding: 110px 24px 90px;
    max-width: 1400px;
    margin: 0 auto;
}
.features-section::before {
    content: "";
    position: absolute; top: 10px; left: 50%;
    transform: translateX(-50%);
    width: 650px; height: 220px;
    background: radial-gradient(circle, rgba(34,242,154,.16) 0%, rgba(34,242,154,.05) 40%, transparent 75%);
    filter: blur(70px);
    pointer-events: none;
}
.section-header {
    position: relative;
    text-align: center;
    margin-bottom: 60px;
    z-index: 2;
}
.section-eyebrow {
    display: inline-flex;
    align-items: center; justify-content: center;
    gap: 10px;
    padding: 14px 30px;
    border-radius: 999px;
    background: linear-gradient(135deg, #0b1219 0%, #101b24 100%);
    border: 2px solid rgba(34,242,154,.35);
    color: #22f29a;
    font-size: clamp(.78rem, 1vw, 1rem);
    font-weight: 900;
    letter-spacing: .28em; text-transform: uppercase;
    margin-bottom: 24px;
    box-shadow: 0 0 18px rgba(34,242,154,.20), inset 0 0 20px rgba(34,242,154,.05);
    position: relative; overflow: hidden;
}
.section-eyebrow::before {
    content: "";
    position: absolute; top: 0; left: -120%;
    width: 70%; height: 100%;
    background: linear-gradient(90deg, transparent, rgba(255,255,255,.25), transparent);
    transform: skewX(-20deg);
    animation: eyebrowScan 4s linear infinite;
}
@keyframes eyebrowScan { 100% { left: 160%; } }
 
.section-h2 {
    font-size: clamp(30px, 5.5vw, 82px);
    font-weight: 900;
    letter-spacing: -3px; line-height: .92;
    margin-bottom: 16px;
    color: #07111a;
    text-transform: uppercase;
}
.section-h2::after {
    content: "";
    display: block;
    width: 110px; height: 5px;
    margin: 20px auto 0;
    border-radius: 999px;
    background: linear-gradient(90deg, #22f29a, #12c97a);
    box-shadow: 0 0 18px rgba(34,242,154,.55), 0 0 40px rgba(34,242,154,.25);
}
.section-sub {
    color: #5d6773;
    font-size: clamp(.88rem, 1.1vw, 1.08rem);
    line-height: 1.9; max-width: 620px;
    margin: 0 auto; font-weight: 500;
}
.features-grid {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 20px;
}
.feature-card {
    position: relative; overflow: hidden;
    background: rgba(9,16,24,.96);
    border: 1px solid rgba(34,242,154,.08);
    border-radius: 28px;
    padding: 32px 26px;
    transition: .45s ease; cursor: pointer;
}
.feature-card::before {
    content: "";
    position: absolute; top: 0; left: -100%;
    width: 100%; height: 2px;
    background: linear-gradient(90deg, transparent, #22f29a, transparent);
    transition: .9s ease;
}
.feature-card:hover::before { left: 100%; }
.feature-card::after {
    content: "";
    position: absolute; inset: 0;
    background: radial-gradient(circle at top, rgba(34,242,154,.08), transparent 60%);
    opacity: 0; transition: .5s;
}
.feature-card:hover::after { opacity: 1; }
.feature-card:hover {
    transform: translateY(-10px);
    border-color: rgba(34,242,154,.25);
    box-shadow: 0 25px 60px rgba(0,0,0,.25), 0 0 50px rgba(34,242,154,.08);
}
.feature-icon {
    width: 56px; height: 56px;
    border-radius: 16px;
    background: rgba(34,242,154,.10);
    border: 1px solid rgba(34,242,154,.15);
    display: flex; align-items: center; justify-content: center;
    margin-bottom: 20px;
    transition: .4s ease;
    font-size: 1.3rem; color: #22f29a;
}
.feature-card:hover .feature-icon {
    transform: scale(1.08);
    background: rgba(34,242,154,.16);
    box-shadow: 0 0 25px rgba(34,242,154,.18);
}
.feature-h3 {
    font-size: 1rem; font-weight: 800;
    color: white; margin-bottom: 10px;
}
.feature-p {
    color: rgba(255,255,255,.62);
    font-size: .88rem; line-height: 1.8;
}
.feature-more {
    display: flex; align-items: center; gap: 6px;
    color: #22f29a; font-size: .8rem; font-weight: 700;
    margin-top: 16px;
    opacity: 0; transform: translateY(5px);
    transition: .35s ease;
    position: relative;
    z-index: 100;
    pointer-events: auto;
}
.feature-card:hover .feature-more { opacity: 1; transform: translateY(0); }
 
/* ══════════════════════════════════════════
   FOOTER
══════════════════════════════════════════ */
footer {
    border-top: 1px solid var(--border);
    padding: 28px 20px;
    text-align: center;
    background: var(--dark);
}
.footer-logo {
    font-size: 1.1rem; font-weight: 900;
    letter-spacing: -1px; color: var(--text);
    display: inline-block; margin-bottom: 8px;
}
.footer-logo span { color: var(--green); }
.footer-copy { color: var(--text-muted); font-size: .8rem; }
 
.footer-social {
    display: flex;
    justify-content: center;
    gap: 20px;
    margin-top: 20px;
    flex-wrap: wrap;
}
.footer-social a {
    color: white;
    padding: 12px 20px;
    border-radius: 50px;
    background: rgba(255,255,255,.05);
    border: 1px solid rgba(34,242,154,.15);
    transition: .3s;
}
.footer-social a:hover {
    background: rgba(34,242,154,.12);
    transform: translateY(-3px);
}
.footer-social i { color: #22f29a; margin-right: 8px; }
.footer-contact {
    margin-top: 25px;
    color: rgba(255,255,255,.8);
    line-height: 2;
}
.footer-contact i { color: #22f29a; width: 20px; }
 
/* ══════════════════════════════════════════
   ANIMACIONES HERO PALABRAS
══════════════════════════════════════════ */
.word-left {
    display: inline-block;
    animation: heroLeft 1.5s cubic-bezier(.17,.89,.32,1.27);
}
.word-right {
    display: inline-block;
    animation: heroRight 1.5s cubic-bezier(.17,.89,.32,1.27);
}
@keyframes heroLeft {
    0%   { opacity: 0; transform: translateX(-100vw); }
    80%  { transform: translateX(20px); }
    100% { opacity: 1; transform: translateX(0); }
}
@keyframes heroRight {
    0%   { opacity: 0; transform: translateX(100vw); }
    80%  { transform: translateX(-20px); }
    100% { opacity: 1; transform: translateX(0); }
}
 
/* ══════════════════════════════════════════
   RESPONSIVE ≤ 1024px
══════════════════════════════════════════ */
@media (max-width: 1024px) {
    .features-grid { grid-template-columns: repeat(2, 1fr); }
    .service-content { padding: 36px 30px; }
    .service-row { min-height: 320px; }
}
 
/* ══════════════════════════════════════════
   RESPONSIVE ≤ 768px
══════════════════════════════════════════ */
@media (max-width: 768px) {
    .navbar { padding: 16px 20px; }
    .hero-section { background-attachment: scroll; }
    .hero-text { margin-bottom: 26vh; }
    .hero-truck { width: 75%; right: 0; bottom: 0; max-width: 100%; }
    .content-overlay { border-radius: 32px 32px 0 0; padding-top: 56px; }
    .services-wrap {
        grid-template-columns: 1fr;
        gap: 16px;
        padding: 0 16px 16px;
    }
    .service-row,
    .service-row.reverse { flex-direction: column; min-height: auto; }
    /* En móvil la imagen vuelve a flujo normal con height fija */
    .service-image {
        width: 100%;
        height: 220px;
        min-height: 220px;
        align-self: auto;
    }
    .service-row:not(.reverse) .service-image::after,
    .service-row.reverse .service-image::after {
        background: linear-gradient(to bottom, transparent 40%, #0d1016 100%);
    }
    .service-content { padding: 24px 20px 28px; }
    .service-title-h2 { font-size: clamp(20px, 5vw, 34px); margin-bottom: 12px; }
    .service-desc { font-size: .9rem; margin-bottom: 16px; }
    .service-number { font-size: 56px; top: 10px; right: 14px; }
    .feature-group { gap: 8px; }
    .feature-badge { font-size: .76rem; padding: 9px 13px; }
    .features-section { padding: 70px 16px 56px; }
    .section-h2 { letter-spacing: -2px; }
}
 
/* ══════════════════════════════════════════
   RESPONSIVE ≤ 480px
══════════════════════════════════════════ */
@media (max-width: 480px) {
    .navbar { padding: 14px 16px; }
    .navbar-logo { font-size: 1.1rem; }
    .hero-text { margin-bottom: 32vh; }
    .hero-truck { width: 90%; right: -4%; bottom: 0; }
    .content-overlay { border-radius: 24px 24px 0 0; padding-top: 40px; }
    .services-wrap { padding: 0 12px 12px; gap: 14px; }
    .service-card { border-radius: 22px; }
    .service-image { height: 180px; min-height: 180px; }
    .service-content { padding: 18px 16px 22px; }
    .service-title-h2 { font-size: 22px; margin-bottom: 10px; }
    .service-desc { font-size: .84rem; line-height: 1.65; margin-bottom: 14px; }
    .service-number { font-size: 44px; top: 8px; right: 12px; }
    .feature-badge { font-size: .72rem; padding: 8px 11px; }
    .features-section { padding: 52px 12px 44px; }
    .features-grid { grid-template-columns: 1fr; gap: 12px; }
    .section-eyebrow { font-size: .76rem; padding: 12px 20px; letter-spacing: .16em; }
    .section-h2 { letter-spacing: -1.5px; }
    .section-sub { font-size: .86rem; }
    .feature-card { padding: 24px 20px; border-radius: 22px; }
    .feature-icon { width: 48px; height: 48px; font-size: 1.1rem; }
    footer { padding: 22px 14px; }
}
 
/* ══════════════════════════════════════════
   RESPONSIVE ≤ 360px
══════════════════════════════════════════ */
@media (max-width: 360px) {
    .hero-truck { width: 100%; right: -6%; }
    .hero-text { margin-bottom: 34vh; }
    .service-image { height: 150px; min-height: 150px; }
    .service-title-h2 { font-size: 19px; }
    .feature-badge { font-size: .68rem; padding: 7px 10px; }
}
 
/* ══════════════════════════════════════════
   LANDSCAPE MÓVIL
══════════════════════════════════════════ */
@media (max-height: 500px) and (orientation: landscape) {
    .hero-text { margin-bottom: 4vh; }
    .hero-truck { width: 38%; right: 2%; bottom: 0; }
}
        </style>
    </head>
    <body>

        <nav class="navbar">
            <span class="navbar-logo">Diesel<span>Tracker</span></span>
        </nav>

        <!-- HERO: parallax con background-attachment:fixed, sin JS, sin fixed/absolute -->
        <section class="hero-section">
            <div class="hero-text">
                <p class="hero-eyebrow">Tecnología logística avanzada</p>
                <h1 class="hero-h1">
    <span class="word-left">TECNOLOGÍA</span><br>
    EN <span class="word-right">MOVIMIENTO</span>
</h1>
                <div class="accent-line"></div>
                <p class="hero-sub">Ingeniería avanzada para el control total de tu flota, combustible y seguridad logística.</p>
            </div>
           
        </section>

        <!-- CONTENIDO: pega directo al hero, sin espacio negro -->
        <main class="content-overlay">
            <div class="green-pulse"></div>

            <div class="services-wrap">

                <div class="service-card" data-aos="fade-right" data-aos-duration="1300">
                    <div class="service-row">
                        <div class="service-image"><img src="<%=uno%>" alt="GPS Telemetría"></div>
                        <div class="service-content">
                            <span class="service-number">01</span>
                            <h2 class="service-title-h2">GPS & <span>Telemetría</span></h2>
                            <p class="service-desc">Ubicación en tiempo real, monitoreo de rutas, velocidad, consumo y comportamiento del operador. Visibilidad total desde cualquier dispositivo.</p>
                            <div class="feature-group">
                                <div class="feature-badge"><i class="fa fa-map-marker-alt"></i> Rastreo en vivo</div>
                                
                                <div class="feature-badge"><i class="fa fa-gas-pump"></i> Consumo inteligente</div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="service-card" data-aos="fade-left" data-aos-duration="1300">
                    <div class="service-row reverse">
                        <div class="service-image"><img src="<%=tres%>" alt="Control Combustible"></div>
                        <div class="service-content">
                            <span class="service-number">02</span>
                            <h2 class="service-title-h2">Control de <span>Combustible</span></h2>
                            <p class="service-desc">Sensores industriales para monitoreo de diesel, detección de cargas, descargas y prevención de robo. Reduce costos y elimina fugas.</p>
                            <div class="feature-group">
                                <div class="feature-badge"><i class="fa fa-oil-can"></i> Diesel seguro</div>
                                <div class="feature-badge"><i class="fa fa-chart-line"></i> Monitoreo continuo</div>
                                <div class="feature-badge"><i class="fa fa-shield-alt"></i> Anti-robo activo</div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="service-card" data-aos="fade-right" data-aos-duration="1300">
                    <div class="service-row">
                        <div class="service-image"><img src="<%= dos%>" alt="Seguridad Activa"></div>
                        <div class="service-content">
                            <span class="service-number">03</span>
                            <h2 class="service-title-h2">Seguridad <span>Activa</span></h2>
                            <p class="service-desc">Brake-Lock e inmovilización remota para proteger tus unidades contra robo y movimientos no autorizados. Respuesta inmediata ante eventos críticos.</p>
                            <div class="feature-group">
                                <div class="feature-badge"><i class="fa fa-lock"></i> Inmovilización remota</div>
                                <div class="feature-badge"><i class="fa fa-truck"></i> Protección vehicular</div>
                                <div class="feature-badge"><i class="fa fa-satellite"></i> Supervisión 24/7</div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="service-card" data-aos="fade-left" data-aos-duration="1300">
                    <div class="service-row reverse">
                        <div class="service-image"><img src="<%= cuatro%>" alt="Gestión de Flota"></div>
                        <div class="service-content">
                            <span class="service-number">04</span>
                            <h2 class="service-title-h2">Gestión de <span>Flota</span></h2>
                            <p class="service-desc">Administra toda tu flota desde un solo panel: mantenimientos, documentación vehicular, asignación de operadores y alertas preventivas automáticas.</p>
                            <div class="feature-group">
                                <div class="feature-badge"><i class="fa fa-desktop"></i> Panel unificado</div>
                                <div class="feature-badge"><i class="fa fa-bell"></i> Alertas preventivas</div>
                                <div class="feature-badge"><i class="fa fa-wifi"></i> Conectividad total</div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="service-card" data-aos="fade-right" data-aos-duration="1300">
                    <div class="service-row">
                        <div class="service-image"><img src="<%= cinco%>" alt="Reportes"></div>
                        <div class="service-content">
                            <span class="service-number">05</span>
                            <h2 class="service-title-h2">Reportes & <span>Analytics</span></h2>
                            <p class="service-desc">Dashboards interactivos con métricas en tiempo real. Exporta reportes automáticos y toma decisiones basadas en datos precisos de tu operación.</p>
                            <div class="feature-group">
                                <div class="feature-badge"><i class="fa fa-chart-bar"></i> Dashboards live</div>
                                <div class="feature-badge"><i class="fa fa-file-export"></i> Exportación auto</div>
                                <div class="feature-badge"><i class="fa fa-brain"></i> Inteligencia de datos</div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="service-card" data-aos="fade-left" data-aos-duration="1300">
                    <div class="service-row reverse">
                        <div class="service-image"><img src="<%=seis%>" alt="Soporte"></div>
                        <div class="service-content">
                            <span class="service-number">06</span>
                            <h2 class="service-title-h2">Soporte <span>24/7</span></h2>
                            <p class="service-desc">Equipo técnico especializado disponible las 24 horas. Atención remota y en campo para garantizar la continuidad operativa de tu flota.</p>
                            <div class="feature-group">
                                <div class="feature-badge"><i class="fa fa-headset"></i> Atención inmediata</div>
                                <div class="feature-badge"><i class="fa fa-tools"></i> Soporte en campo</div>
                                <div class="feature-badge"><i class="fa fa-phone"></i> Línea directa</div>
                            </div>
                        </div>
                    </div>
                </div>
                        
               <!-- 07 -->
<div class="service-card" data-aos="fade-right" data-aos-duration="1300">
    <div class="service-row">
        <div class="service-image"><img src="<%= ocho %>" alt="Calibraciones"></div>
        <div class="service-content">
            <span class="service-number">07</span>
            <h2 class="service-title-h2">Calibraciones <span>Exactas</span></h2>
            <p class="service-desc">
                Garantizamos la precisión de cada sensor de combustible mediante
                calibraciones certificadas y mediciones exactas para una lectura confiable.
            </p>
            <div class="feature-group">
                <div class="feature-badge"><i class="fa fa-ruler-combined"></i> Precisión total</div>
                <div class="feature-badge"><i class="fa fa-gauge-high"></i> Sensores calibrados</div>
                <div class="feature-badge"><i class="fa fa-check-circle"></i> Datos confiables</div>
            </div>
        </div>
    </div>
</div>

<!-- 08 -->
<div class="service-card" data-aos="fade-left" data-aos-duration="1300">
    <div class="service-row reverse">
        <div class="service-image"><img src="<%= nueve %>" alt="Mapas"></div>
        <div class="service-content">
            <span class="service-number">08</span>
            <h2 class="service-title-h2">Mapas de <span>Ubicación</span></h2>
            <p class="service-desc">
                Visualiza la posición exacta de cada unidad en mapas inteligentes,
                con rutas históricas, zonas seguras y monitoreo en tiempo real.
            </p>
            <div class="feature-group">
                <div class="feature-badge"><i class="fa fa-map"></i> Mapas interactivos</div>
                <div class="feature-badge"><i class="fa fa-location-dot"></i> Ubicación precisa</div>
                <div class="feature-badge"><i class="fa fa-route"></i> Historial de rutas</div>
            </div>
        </div>
    </div>
</div>

<!-- 09 -->
<div class="service-card" data-aos="fade-right" data-aos-duration="1300">
    <div class="service-row">
        <div class="service-image"><img src="<%= siete %>" alt="Geozonas"></div>
        <div class="service-content">
            <span class="service-number">09</span>
            <h2 class="service-title-h2">Geocercas <span>Inteligentes</span></h2>
            <p class="service-desc">
                Crea zonas de control y recibe alertas cuando una unidad entra,
                sale o permanezca más tiempo del permitido.
            </p>
            <div class="feature-group">
                <div class="feature-badge"><i class="fa fa-draw-polygon"></i> Zonas seguras</div>
                <div class="feature-badge"><i class="fa fa-bell"></i> Alertas automáticas</div>
                <div class="feature-badge"><i class="fa fa-shield"></i> Mayor control</div>
            </div>
        </div>
    </div>
</div>

<!-- 10 -->
<div class="service-card" data-aos="fade-left" data-aos-duration="1300">
    <div class="service-row reverse">
        <div class="service-image"><img src="<%= diez %>" alt="Mantenimiento"></div>
        <div class="service-content">
            <span class="service-number">10</span>
            <h2 class="service-title-h2">Mantenimiento <span>Preventivo</span></h2>
            <p class="service-desc">
                Programa servicios, cambios de aceite, verificaciones y revisiones
                periódicas para prolongar la vida útil de tu flota.
            </p>
            <div class="feature-group">
                <div class="feature-badge"><i class="fa fa-wrench"></i> Servicios programados</div>
                <div class="feature-badge"><i class="fa fa-calendar"></i> Recordatorios</div>
                <div class="feature-badge"><i class="fa fa-truck-fast"></i> Menos paros</div>
            </div>
        </div>
    </div>
</div>         

            </div>

            <section class="features-section">
                <div class="section-header" data-aos="fade-up">
                    <p class="section-eyebrow">Plataforma completa</p>
                    <h2 class="section-h2">Todo en un solo lugar</h2>
                    <p class="section-sub">Herramientas diseñadas para la operación logística moderna.</p>
                </div>
                <div class="features-grid">

    <div class="feature-card" data-aos="fade-up">
        <div class="feature-icon">
            <i class="fa fa-key"></i>
        </div>
        <h3 class="feature-h3">Gestor de Códigos</h3>
        <p class="feature-p">
            Administración avanzada de accesos y códigos de seguridad para tu flota.
        </p>
        <a href="https://web.ditracker.com/diseltracker"
           target="_blank"
           class="feature-more">
            Ver más <i class="fa fa-chevron-right"></i>
        </a>
    </div>

    <div class="feature-card" data-aos="fade-up" data-aos-delay="80">
        <div class="feature-icon">
            <i class="fa fa-clipboard-list"></i>
        </div>
        <h3 class="feature-h3">Gestor de Actividades</h3>
        <p class="feature-p">
            Planea, organiza y supervisa tareas operativas de toda tu empresa.
        </p>
        <div class="feature-more">
            Ver más <i class="fa fa-chevron-right"></i>
        </div>
    </div>

    <div class="feature-card" data-aos="fade-up" data-aos-delay="160">
        <div class="feature-icon">
            <i class="fa fa-ticket"></i>
        </div>
        <h3 class="feature-h3">Gestor de Tickets</h3>
        <p class="feature-p">
            Seguimiento de incidencias, soporte técnico y control de solicitudes.
        </p>
        <div class="feature-more">
            Ver más <i class="fa fa-chevron-right"></i>
        </div>
    </div>

    <div class="feature-card" data-aos="fade-up" data-aos-delay="240">
        <div class="feature-icon">
            <i class="fa fa-chart-line"></i>
        </div>
        <h3 class="feature-h3">Indicadores KPI</h3>
        <p class="feature-p">
            Métricas estratégicas para evaluar el rendimiento de tu operación.
        </p>
        <div class="feature-more">
            Ver más <i class="fa fa-chevron-right"></i>
        </div>
    </div>

</div>
            </section>

            <footer>

    <div class="footer-logo">
        Diesel<span>Tracker</span>
    </div>

    <p class="footer-copy">
        Tecnología logística avanzada para el control total de tu flota.
    </p>

   

          <div class="footer-social"> <a href="https://www.facebook.com/profile.php?id=61590611994198&locale=es_LA" target="_blank">
            <i class="fab fa-facebook-f"></i>
            Facebook
        </a>

        <a href="https://wa.me/5215572048538?text=Hola%2C%20aqu%C3%AD%20puedo%20cotizar" target="_blank">
            <i class="fab fa-whatsapp"></i>
            WhatsApp
        </a>  </div>  

   

   

    <p class="footer-copy" style="margin-top:20px;">
        © 2026 Diesel Tracker — Todos los derechos reservados.
    </p>

</footer>
        </main>

        <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
        <script>
            AOS.init({duration: 1200, once: false, mirror: true});

            /* Solo el camion usa JS — es una imagen PNG, no un fondo */
            var truck = document.getElementById('heroTruck');
            var heroEl = document.querySelector('.hero-section');

            window.addEventListener('scroll', function () {
                var s = window.scrollY;
                var h = heroEl.offsetHeight;
                if (s <= h) {
                    truck.style.transform = 'translateY(' + (s * 0.18) + 'px)';
                }
            }, {passive: true});
        </script>

    </body>
</html>