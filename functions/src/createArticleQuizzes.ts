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
  // When type is URL, convert the URL to markdown.
  const markdownString = await convertToMarkdown(content);

  // Create a quizzes from the markdown string.
  const articleContent = type === "url" ? markdownString : content;
  const createQuiz = async (): Promise<Quiz> => {
    const quizBody = await createArticleQuiz(articleContent);

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
