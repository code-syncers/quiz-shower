import * as logger from "firebase-functions/logger";
import { onRequest } from "firebase-functions/v2/https";
import { createArticleQuizzes } from "./createArticleQuizzes";

export const debugCreateQuiz = onRequest(
  { region: "asia-northeast1" },
  async (_, res) => {
    const articleId = "debug-article-id";
    const type = "url";
    const content = "https://developer.android.com/topic/architecture";
    const count = 4;

    try {
      const quizzes = await createArticleQuizzes(
        articleId,
        type,
        content,
        count,
      );
      quizzes.forEach((quiz) => logger.debug(quiz));
    } catch (error) {
      logger.error(error);
    }

    res.status(200).send("Successfully created quizzes.");
  },
);
