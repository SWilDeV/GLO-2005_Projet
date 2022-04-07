<template>
  <div>
    <b-navbar type="dark" variant="dark">
      <b-navbar-nav>
        <!-- Home-->
        <b-nav-item
          ><router-link to="/" class="nav-link"> Home </router-link></b-nav-item
        >

        <!-- Tournois-->
        <b-nav-item-dropdown text="Tournois" class="nav-link" right>
          <b-dropdown-item
            ><router-link
              to="/tournois"
              class="text-decoration-none text-reset"
            >
              Voir les tournois</router-link
            ></b-dropdown-item
          >
          <b-dropdown-item
            ><router-link
              to="/creerTournois"
              class="text-decoration-none text-reset"
            >
              Creer un tournoi</router-link
            ></b-dropdown-item
          >
        </b-nav-item-dropdown>

        <!-- User-->
        <b-nav-item-dropdown text="User" class="nav-link" right>
          <b-dropdown-item
            ><router-link to="/profile" class="text-decoration-none text-reset">
              Profile
            </router-link></b-dropdown-item
          >
          <b-dropdown-item href="#"
            ><router-link
              to="/profileSettings"
              class="text-decoration-none text-reset"
            >
              Settings
            </router-link></b-dropdown-item
          >
        </b-nav-item-dropdown>

        <!-- Langue-->
        <b-nav-item-dropdown text="Langue" class="nav-link" right>
          <b-dropdown-item href="#">EN</b-dropdown-item>
          <b-dropdown-item href="#">FR</b-dropdown-item>
        </b-nav-item-dropdown>

        <b-nav-item
          ><a
            ><router-link to="/register" class="nav-link">
              Register
            </router-link></a
          ></b-nav-item
        >
        <b-nav-item
          ><router-link to="/signIn" class="nav-link">
            Sign in
          </router-link></b-nav-item
        >
        <b-nav-item class="nav-link"><a>Sign out</a></b-nav-item>
      </b-navbar-nav>
    </b-navbar>

    <!-- ------------------------------------------------------  -->

    <!-- <nav class="navbar navbar-default">
      <div class="container">
        <div class="navbar-header">
          <button
            type="button"
            class="navbar-toggle collapsed"
            data-toggle="collapse"
            data-target="#navbar"
            aria-expanded="false"
            aria-controls="navbar"
          >
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" [routerLink]="['/']">PangoTango</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav navbar-left">
            <li
              [routerLinkActive]="['active']"
              [routerLinkActiveOptions]="{ exact: true }"
            >
              <a [routerLink]="['/']" class="test1">Home</a>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li
              *ngIf="!AuthService.loggedIn()"
              [routerLinkActive]="['active']"
              [routerLinkActiveOptions]="{ exact: true }"
            >
              <a [routerLink]="['/dashboard']" class="display-1">Dashboard</a>
            </li>
            <li
              *ngIf="!AuthService.loggedIn()"
              [routerLinkActive]="['active']"
              [routerLinkActiveOptions]="{ exact: true }"
            >
              <a [routerLink]="['/profile']">Friends</a>
            </li>
            <li
              *ngIf="AuthService.loggedIn()"
              [routerLinkActive]="['active']"
              [routerLinkActiveOptions]="{ exact: true }"
            >
              <a [routerLink]="['/login']">Login</a>
            </li>
            <li
              *ngIf="AuthService.loggedIn()"
              [routerLinkActive]="['active']"
              [routerLinkActiveOptions]="{ exact: true }"
            >
              <a [routerLink]="['/register']">Register</a>
            </li>
            <li *ngIf="!AuthService.loggedIn()">
              <a (click)="onLogoutClick()" href="#">Logout</a>
            </li>
          </ul>
        </div>
      </div>
    </nav> -->
  </div>
</template>

<script>
export default { name: "NavBar" };
</script>

<style></style>
