import * as admin from "firebase-admin";
import * as logger from "firebase-functions/logger";
import { onDocumentCreated } from "firebase-functions/v2/firestore";
import { createArticleQuizzes } from "./createArticleQuizzes";
import { Article } from "./types/article";
import { quizConverter } from "./types/quiz";

const NUMBER_OF_QUIZZES = 4;

export const onArticleCreated = onDocumentCreated(
  "articles/{articleId}",
  async (event) => {
    const snapshot = event.data;
    if (!snapshot) {
      logger.error("No data associated with the event\n");
      return;
    }

    const article = snapshot.data() as Article;
    const quizzesRef = admin
      .firestore()
      .collection("articles")
      .doc(article.id)
      .collection("quizzes")
      .withConverter(quizConverter);

    try {
      const quizzes = await createArticleQuizzes(
        article.id,
        article.type,
        article.content,
        NUMBER_OF_QUIZZES,
      );

      await Promise.all(
        quizzes.map(
          async (quiz) =>
            await quizzesRef.doc(quiz.id).set(quiz, { merge: true }),
        ),
      );
    } catch (error) {
      logger.error(error);
    }
  },
);
