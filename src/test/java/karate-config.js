function fn() {
  var env = karate.env;
  karate.log("karate.env:", env);

  var config = {
    baseUrl: "https://petstore.swagger.io/v2",
    userEndpoint: "/user",
  };

  return config;
}
