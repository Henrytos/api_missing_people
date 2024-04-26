import { Request, Response, Router } from "express";
import { StatusCodes } from "http-status-codes";

export const router = Router();

router.get("/", (req: Request, res: Response) => {
  console.log("heloo");
  return res.status(StatusCodes.OK);
});
