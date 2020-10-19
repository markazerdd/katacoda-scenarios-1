This lab uses a docker version of a fake ecommerce website called "StoreDog". 

1. To get started with RUM, we first need to set up a Datadog RUM application. If you navigate to the [RUM Applications](https://app.datadoghq.com/rum/list) section of your Datadog account.
2. Click the **New Application** button.
3. Enter a name for the application. You can use `StoreDog` or whatever you prefer for your site.
4. Click the **Generate Client Token** button.
5. You will see options for integrating on different platforms. We are integrating on the web using JavaScript, so ensure that `JS` is selected.
6. If you are using NPM to manage dependencies for your project front end, you can integrate RUM using the `@datadog/browser-rum` package. However, here we are just going to inline the JavaScript, so select the `Bundle` tab.
7. Back in the lab platform, use the `IDE` tab (it may take a few seconds to load) to navigate to our front end code. The file is located at `store-frontend-instrumented-fixed/store-front-end/app/views/layouts/application.html.erb`.
8. You'll see that we have already integrated the RUM script in the front end and set the initialization arguments. (This may look slightly different than the code snippet from the website but works the same way)