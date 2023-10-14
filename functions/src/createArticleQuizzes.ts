import crypto from "crypto";
import { convertToMarkdown } from "./convertToMarkdown";
import { createArticleQuiz } from "./createArticleQuiz";
import { Quiz } from "./types/quiz";

export const createArticleQuizzes = async (
  articleId: string,
  type: "url" | "manual",
  content: string,
  count: number,
) => {
  if (type !== "url") {
    throw new Error(
      "Unimplemented Error: Only URL content is supported right now.",
    );
  }

  // When type is URL, convert the URL to markdown.
  const markdownString = await convertToMarkdown(content);

  // Create a quizzes from the markdown string.
  const createQuiz = async (): Promise<Quiz> => {
    const quizBody = await createArticleQuiz(markdownString);

    return {
      id: crypto.randomUUID(),
      articleId: articleId,
      title: quizBody.title,
      statement: quizBody.sentence,
      isFavorite: false,
      options: quizBody.options,
      answers: quizBody.answers,
      explanation: quizBody.explanation,
    };
  };

  const quizzes = await Promise.all(Array.from({ length: count }, createQuiz));

  return quizzes;
};
