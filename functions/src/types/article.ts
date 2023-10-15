import * as admin from "firebase-admin";
import { Timestamp } from "firebase-admin/firestore";

export type Article = {
  id: string;
  createdBy: string;
  createdAt: Timestamp;
  title: string;
  description: string;
  isBookmarked: boolean;
  type: "url" | "manual";
  content: string;
  isPublished: boolean;
};

export const articleConverter = {
  toFirestore(article: Article): admin.firestore.DocumentData {
    return {
      id: article.id,
      createdBy: article.createdBy,
      createdAt: article.createdAt,
      title: article.title,
      description: article.description,
      isBookmarked: article.isBookmarked,
      type: article.type,
      content: article.content,
      isPublished: article.isPublished,
    };
  },
  fromFirestore(snapshot: admin.firestore.QueryDocumentSnapshot): Article {
    const data = snapshot.data();

    return {
      id: data.id,
      createdBy: data.createdBy,
      createdAt: data.createdAt,
      title: data.title,
      description: data.description,
      isBookmarked: data.isBookmarked,
      type: data.type,
      content: data.content,
      isPublished: data.isPublished,
    };
  },
};
