import { OpenAI } from "openai";
import { FunctionObject, Message } from "./types/types";

export async function createChatCompletion(
  messages: Message[],
  functions: FunctionObject[],
) {
  const openai = new OpenAI({ apiKey: process.env.OPEN_AI_API_KEY });

  const response = await openai.chat.completions.create({
    messages: messages,
    model: "gpt-3.5-turbo",
    function_call: { name: "create_quizzes" },
    functions: functions,
  });

  return response;
}
