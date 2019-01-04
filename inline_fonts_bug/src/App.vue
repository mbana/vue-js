<template>
  <div id="app">
    <div id="nav">
      <router-link to="/">Home</router-link>|
      <router-link to="/about">About</router-link>
    </div>
    <router-view />
  </div>
</template>

<style>
#app {
  /* font-family: "Avenir", Helvetica, Arial, sans-serif; */
  /* font-family: "Metropolis", "Arial", sans-serif; */
  font-family: "Metropolis";
  /* -webkit-font-smoothing: antialiased; */
  /* -moz-osx-font-smoothing: grayscale; */
  text-align: center;
  /* color: #2c3e50; */
}
#nav {
  padding: 30px;
}

#nav a {
  font-weight: bold;
  color: #2c3e50;
}

#nav a.router-link-exact-active {
  color: #42b983;
}

@font-face {
  font-family: "Metropolis";
  src: local("Metropolis Regular"), local("Metropolis-Regular"),
    url("./assets/fonts/metropolis/Webfonts/WOFF2/Metropolis-Regular.woff2")
      format("woff2"),
    url("./assets/fonts/metropolis/Webfonts/WOFF/Metropolis-Regular.woff")
      format("font-woff"),
    url("./assets/fonts/metropolis/TrueType/Metropolis-Regular.ttf")
      format("truetype");
  font-weight: normal;
  font-style: normal;
}

@font-face {
  font-family: "Metropolis";
  src: local("Metropolis Bold"), local("Metropolis-Bold"),
    url("./assets/fonts/metropolis/Webfonts/WOFF2/Metropolis-Bold.woff2")
      format("woff2"),
    url("./assets/fonts/metropolis/Webfonts/WOFF/Metropolis-Bold.woff")
      format("font-woff"),
    url("./assets/fonts/metropolis/TrueType/Metropolis-Bold.ttf")
      format("truetype");
  font-weight: bold;
  font-style: normal;
}

@font-face {
  font-family: "Metropolis";
  src: local("Metropolis Light"), local("Metropolis-Light"),
    url("./assets/fonts/metropolis/Webfonts/WOFF2/Metropolis-Light.woff2")
      format("woff2"),
    url("./assets/fonts/metropolis/Webfonts/WOFF/Metropolis-Light.woff")
      format("font-woff"),
    url("./assets/fonts/metropolis/TrueType/Metropolis-Light.ttf")
      format("truetype");
  font-weight: 300;
  font-style: normal;
}

@font-face {
  font-family: "Metropolis";
  src: local("Metropolis Medium"), local("Metropolis-Medium"),
    url("./assets/fonts/metropolis/Webfonts/WOFF2/Metropolis-Medium.woff2")
      format("woff2"),
    url("./assets/fonts/metropolis/Webfonts/WOFF/Metropolis-Medium.woff")
      format("font-woff"),
    url("./assets/fonts/metropolis/TrueType/Metropolis-Medium.ttf")
      format("truetype");
  font-weight: 500;
  font-style: normal;
}

@font-face {
  font-family: "Metropolis Extra";
  src: local("Metropolis Extra Light"), local("Metropolis-ExtraLight"),
    url("./assets/fonts/metropolis/Webfonts/WOFF2/Metropolis-ExtraLight.woff2")
      format("woff2");
  font-weight: 200;
  font-style: normal;
}

@font-face {
  font-family: "Metropolis";
  src: local("Metropolis Black Italic"), local("Metropolis-BlackItalic"),
    url("./assets/fonts/metropolis/Webfonts/WOFF2/Metropolis-BlackItalic.woff2")
      format("woff2");
  font-weight: 900;
  font-style: italic;
}

@font-face {
  font-family: "Metropolis";
  src: local("Metropolis Light Italic"), local("Metropolis-LightItalic"),
    url("./assets/fonts/metropolis/Webfonts/WOFF2/Metropolis-LightItalic.woff2")
      format("woff2");
  font-weight: 300;
  font-style: italic;
}

@font-face {
  font-family: "Metropolis Extra";
  src: local("Metropolis Extra Light Italic"),
    local("Metropolis-ExtraLightItalic"),
    url("./assets/fonts/metropolis/Webfonts/WOFF2/Metropolis-ExtraLightItalic.woff2")
      format("woff2");
  font-weight: 200;
  font-style: italic;
}

@font-face {
  font-family: "Metropolis";
  src: local("Metropolis Black"), local("Metropolis-Black"),
    url("./assets/fonts/metropolis/Webfonts/WOFF2/Metropolis-Black.woff2")
      format("woff2");
  font-weight: 900;
  font-style: normal;
}

@font-face {
  font-family: "Metropolis Extra";
  src: local("Metropolis Extra Bold"), local("Metropolis-ExtraBold"),
    url("./assets/fonts/metropolis/Webfonts/WOFF2/Metropolis-ExtraBold.woff2")
      format("woff2");
  font-weight: 800;
  font-style: normal;
}

@font-face {
  font-family: "Metropolis Semi";
  src: local("Metropolis Semi Bold Italic"), local("Metropolis-SemiBoldItalic"),
    url("./assets/fonts/metropolis/Webfonts/WOFF2/Metropolis-SemiBoldItalic.woff2")
      format("woff2");
  font-weight: 600;
  font-style: italic;
}

@font-face {
  font-family: "Metropolis";
  src: local("Metropolis Bold Italic"), local("Metropolis-BoldItalic"),
    url("./assets/fonts/metropolis/Webfonts/WOFF2/Metropolis-BoldItalic.woff2")
      format("woff2");
  font-weight: bold;
  font-style: italic;
}

@font-face {
  font-family: "Metropolis Semi";
  src: local("Metropolis Semi Bold"), local("Metropolis-SemiBold"),
    url("./assets/fonts/metropolis/Webfonts/WOFF2/Metropolis-SemiBold.woff2")
      format("woff2");
  font-weight: 600;
  font-style: normal;
}

@font-face {
  font-family: "Metropolis Extra";
  src: local("Metropolis Extra Bold Italic"),
    local("Metropolis-ExtraBoldItalic"),
    url("./assets/fonts/metropolis/Webfonts/WOFF2/Metropolis-ExtraBoldItalic.woff2")
      format("woff2");
  font-weight: 800;
  font-style: italic;
}

@font-face {
  font-family: "Metropolis";
  src: local("Metropolis Regular Italic"), local("Metropolis-RegularItalic"),
    url("./assets/fonts/metropolis/Webfonts/WOFF2/Metropolis-RegularItalic.woff2")
      format("woff2");
  font-weight: normal;
  font-style: italic;
}

@font-face {
  font-family: "Metropolis";
  src: local("Metropolis Medium Italic"), local("Metropolis-MediumItalic"),
    url("./assets/fonts/metropolis/Webfonts/WOFF2/Metropolis-MediumItalic.woff2")
      format("woff2");
  font-weight: 500;
  font-style: italic;
}

@font-face {
  font-family: "Metropolis";
  src: local("Metropolis Thin Italic"), local("Metropolis-ThinItalic"),
    url("./assets/fonts/metropolis/Webfonts/WOFF2/Metropolis-ThinItalic.woff2")
      format("woff2");
  font-weight: 100;
  font-style: italic;
}

@font-face {
  font-family: "Metropolis";
  src: local("Metropolis Thin"), local("Metropolis-Thin"),
    url("./assets/fonts/metropolis/Webfonts/WOFF2/Metropolis-Thin.woff2")
      format("woff2");
  font-weight: 100;
  font-style: normal;
}

@font-face {
  font-family: "Metropolis";
  src: local("Metropolis Light"), local("Metropolis-Light"),
    url("./assets/fonts/metropolis/Webfonts/WOFF2/Metropolis-Light.woff2")
      format("woff2");
  font-weight: 300;
  font-style: normal;
}

@font-face {
  font-family: "Metropolis Extra";
  src: local("Metropolis Extra Light Italic"),
    local("Metropolis-ExtraLightItalic"),
    url("./assets/fonts/metropolis/Webfonts/WOFF2/Metropolis-ExtraLightItalic.woff2")
      format("woff2");
  font-weight: 200;
  font-style: italic;
}

@font-face {
  font-family: "Metropolis Extra";
  src: local("Metropolis Extra Bold Italic"),
    local("Metropolis-ExtraBoldItalic"),
    url("./assets/fonts/metropolis/Webfonts/WOFF2/Metropolis-ExtraBoldItalic.woff2")
      format("woff2");
  font-weight: 800;
  font-style: italic;
}

@font-face {
  font-family: "Metropolis";
  src: local("Metropolis Thin Italic"), local("Metropolis-ThinItalic"),
    url("./assets/fonts/metropolis/Webfonts/WOFF2/Metropolis-ThinItalic.woff2")
      format("woff2");
  font-weight: 100;
  font-style: italic;
}

@font-face {
  font-family: "Metropolis Extra";
  src: local("Metropolis Extra Bold"), local("Metropolis-ExtraBold"),
    url("./assets/fonts/metropolis/Webfonts/WOFF2/Metropolis-ExtraBold.woff2")
      format("woff2");
  font-weight: 800;
  font-style: normal;
}

@font-face {
  font-family: "Metropolis";
  src: local("Metropolis Black Italic"), local("Metropolis-BlackItalic"),
    url("./assets/fonts/metropolis/Webfonts/WOFF2/Metropolis-BlackItalic.woff2")
      format("woff2");
  font-weight: 900;
  font-style: italic;
}

@font-face {
  font-family: "Metropolis";
  src: local("Metropolis Black"), local("Metropolis-Black"),
    url("./assets/fonts/metropolis/Webfonts/WOFF2/Metropolis-Black.woff2")
      format("woff2");
  font-weight: 900;
  font-style: normal;
}

@font-face {
  font-family: "Metropolis";
  src: local("Metropolis Regular"), local("Metropolis-Regular"),
    url("./assets/fonts/metropolis/Webfonts/WOFF2/Metropolis-Regular.woff2")
      format("woff2");
  font-weight: normal;
  font-style: normal;
}

@font-face {
  font-family: "Metropolis Semi";
  src: local("Metropolis Semi Bold Italic"), local("Metropolis-SemiBoldItalic"),
    url("./assets/fonts/metropolis/Webfonts/WOFF2/Metropolis-SemiBoldItalic.woff2")
      format("woff2");
  font-weight: 600;
  font-style: italic;
}

@font-face {
  font-family: "Metropolis";
  src: local("Metropolis Medium"), local("Metropolis-Medium"),
    url("./assets/fonts/metropolis/Webfonts/WOFF2/Metropolis-Medium.woff2")
      format("woff2");
  font-weight: 500;
  font-style: normal;
}

@font-face {
  font-family: "Metropolis Extra";
  src: local("Metropolis Extra Light"), local("Metropolis-ExtraLight"),
    url("./assets/fonts/metropolis/Webfonts/WOFF2/Metropolis-ExtraLight.woff2")
      format("woff2");
  font-weight: 200;
  font-style: normal;
}

@font-face {
  font-family: "Metropolis Semi";
  src: local("Metropolis Semi Bold"), local("Metropolis-SemiBold"),
    url("./assets/fonts/metropolis/Webfonts/WOFF2/Metropolis-SemiBold.woff2")
      format("woff2");
  font-weight: 600;
  font-style: normal;
}

@font-face {
  font-family: "Metropolis";
  src: local("Metropolis Medium Italic"), local("Metropolis-MediumItalic"),
    url("./assets/fonts/metropolis/Webfonts/WOFF2/Metropolis-MediumItalic.woff2")
      format("woff2");
  font-weight: 500;
  font-style: italic;
}

@font-face {
  font-family: "Metropolis";
  src: local("Metropolis Bold"), local("Metropolis-Bold"),
    url("./assets/fonts/metropolis/Webfonts/WOFF2/Metropolis-Bold.woff2")
      format("woff2");
  font-weight: bold;
  font-style: normal;
}

@font-face {
  font-family: "Metropolis";
  src: local("Metropolis Thin"), local("Metropolis-Thin"),
    url("./assets/fonts/metropolis/Webfonts/WOFF2/Metropolis-Thin.woff2")
      format("woff2");
  font-weight: 100;
  font-style: normal;
}

@font-face {
  font-family: "Metropolis";
  src: local("Metropolis Light Italic"), local("Metropolis-LightItalic"),
    url("./assets/fonts/metropolis/Webfonts/WOFF2/Metropolis-LightItalic.woff2")
      format("woff2");
  font-weight: 300;
  font-style: italic;
}

@font-face {
  font-family: "Metropolis";
  src: local("Metropolis Bold Italic"), local("Metropolis-BoldItalic"),
    url("./assets/fonts/metropolis/Webfonts/WOFF2/Metropolis-BoldItalic.woff2")
      format("woff2");
  font-weight: bold;
  font-style: italic;
}

@font-face {
  font-family: "Metropolis";
  src: local("Metropolis Regular Italic"), local("Metropolis-RegularItalic"),
    url("./assets/fonts/metropolis/Webfonts/WOFF2/Metropolis-RegularItalic.woff2")
      format("woff2");
  font-weight: normal;
  font-style: italic;
}
</style>
