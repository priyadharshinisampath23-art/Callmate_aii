<script>
if ("serviceWorker" in navigator) {
  window.addEventListener("load", () => {
    navigator.serviceWorker.register("./sw.js")
      .then(() => console.log("PWA ready"))
      .catch(error => console.error("PWA error:", error));
  });
}
</script>