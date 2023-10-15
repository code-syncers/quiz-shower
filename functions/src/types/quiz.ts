import * as admin from "firebase-admin";

export type Quiz = {
  id: string;
  articleId: string;
  title: string;
  statement: string;
  isFavorite: boolean;
  options: string[];
  answers: string[];
  explanation: string;
};

export const quizConverter = {
  toFirestore(quiz: Quiz): admin.firestore.DocumentData {
    return {
      id: quiz.id,
      articleId: quiz.articleId,
      title: quiz.title,
      statement: quiz.statement,
      isFavorite: quiz.isFavorite,
      options: quiz.options,
      answers: quiz.answers,
      explanation: quiz.explanation,
    };
  },
  fromFirestore(snapshot: admin.firestore.QueryDocumentSnapshot): Quiz {
    const data = snapshot.data();

    return {
      id: data.id,
      articleId: data.articleId,
      title: data.title,
      statement: data.statement,
      isFavorite: data.isFavorite,
      options: data.options,
      answers: data.answers,
      explanation: data.explanation,
    };
  },
};
