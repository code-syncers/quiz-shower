import { createChatCompletion } from "./createChatCompletion";
import {
  CompletedQuiz,
  FunctionObject,
  Message,
  QuizBody,
} from "./types/types";

export const createArticleQuiz = async (content: string): Promise<QuizBody> => {
  const message: Message = {
    role: "user",
    content: `次の文書から、理解度を試すための3択クイズを1問、作成してください。\n ${content}`,
  };

  const functions: FunctionObject[] = [
    {
      name: "create_quizzes",
      description: "文書の理解度を試すための3択クイズを1問、作成する",
      parameters: {
        type: "object",
        properties: {
          title: {
            type: "string",
            description: "クイズのタイトル",
          },
          quizSentence: {
            type: "string",
            description: "クイズの問題文",
          },
          option1: {
            type: "string",
            description: "クイズの選択肢1",
          },
          option2: {
            type: "string",
            description: "選択肢2",
          },
          option3: {
            type: "string",
            description: "選択肢3",
          },
          answers: {
            type: "string",
            items: {
              type: "string",
            },
            description: "1問目のクイズの正解, e.g. [1], [1, 3]",
          },
          explanation: {
            type: "string",
            description: "クイズの解説",
          },
        },
        required: [
          "title",
          "quizSentence",
          "option1",
          "option2",
          "option3",
          "answers",
          "explanation",
        ],
      },
    },
  ];

  const response = await createChatCompletion([message], functions);
  const functionCall = response.choices[0].message.function_call;
  if (!functionCall) {
    throw new Error("No function call found");
  }
  const completedQuiz: CompletedQuiz = JSON.parse(functionCall.arguments);

  return {
    title: completedQuiz.title,
    sentence: completedQuiz.quizSentence,
    options: [
      completedQuiz.option1,
      completedQuiz.option2,
      completedQuiz.option3,
    ],
    answers: completedQuiz.answers
      .split(",")
      .map((e) => e.trim())
      .map((item) => item.replace(/[^0-9]/g, "")),
    explanation: completedQuiz.explanation,
  };
};
