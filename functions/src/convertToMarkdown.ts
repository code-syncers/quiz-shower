import * as logger from "firebase-functions/logger";

const URLTOMARKDOWN_BASE_URL = "https://urltomarkdown.herokuapp.com";

/**
 * Converts web page designated by the provided URL to markdown.
 * @param {string} url The URL to convert to markdown.
 * @return {string} The markdown string.
 * @throws An error if there is an issue with the URL or internal API.
 */
export async function convertToMarkdown(url: string) {
  const encodedUrl = encodeURIComponent(url);

  const response = await fetch(`${URLTOMARKDOWN_BASE_URL}?url=${encodedUrl}`);

  if (!response.ok) {
    logger.error(
      `HTTP Request Error: ${response.status} ${response.statusText}`,
    );
    throw new Error(
      `HTTP Request Error: ${response.status} ${response.statusText}`,
    );
  }

  const markdownString = await response.text();
  return markdownString;
}
