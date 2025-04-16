/**
 * POST /api/submit
 */
export async function onRequestPost(context) {
  try {
    let body = await context.request.text();
    if (body.length === 0 || body == "{}") {
      return new Response("No content sent in POST request", { status: 400 });
    }
    let input = JSON.parse(body);
    console.log(input);
    let pretty = JSON.stringify(input, null, 2);
    return new Response(pretty, {
      headers: {
        "Content-Type": "application/json",
      },
    });
  } catch (err) {
    console.error(err);
    return new Response("Error parsing JSON content", { status: 400 });
  }
}
