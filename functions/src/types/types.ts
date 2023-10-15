// Refer to kazuooooo/functions_calling_example
// https://github.com/kazuooooo/functions_calling_example

export type CompletedQuiz = {
  title: string;
  quizSentence: string;
  option1: string;
  option2: string;
  option3: string;
  answers: string;
  explanation: string;
};

export type CompletionAPIResponse = {
  id: string;
  object: string;
  created: number;
  model: string;
  choices: {
    index: number;
    message: {
      role: Role;
      content: null | string;
      function_call: {
        name: string;
        arguments: string;
      };
    };
    finish_reason: "function_call" | "stop";
  }[];
};

export type FunctionObject = {
  name: string;
  description: string;
  parameters: FunctionParameters;
  function_call?: string;
};

export type FunctionParameterProperty = {
  type: string;
  items?: {
    type: string;
  };
  description: string;
  enum?: string[];
};

export type FunctionParameters = {
  type: string;
  properties: {
    [key: string]: FunctionParameterProperty;
  };
  required: string[];
};

export type Message = { role: Role; content: string; name?: string };
export type QuizBody = {
  title: string;
  sentence: string;
  options: string[];
  answers: string[];
  explanation: string;
};

export type Role = "system" | "user" | "assistant" | "function";
