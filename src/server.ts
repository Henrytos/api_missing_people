import express from "express";
import cors from "cors";
import { router } from "./router";
const app = express();
const port = process.env.PORT || 8080;

app.use(
  cors({
    origin: "*",
  })
);

app.use("/api", router);

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});
