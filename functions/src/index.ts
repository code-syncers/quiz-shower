import * as admin from "firebase-admin";

admin.initializeApp();
admin.firestore().settings({ timestampsInSnapshots: true });

export { debugCreateQuiz } from "./debugCreateQuiz";
export { onArticleCreated } from "./onArticleCreated";
