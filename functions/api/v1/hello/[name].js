export function onRequest(context) {
  if (context.params.name === undefined) {
    return new Response("Please provide a name", { status: 400 });
  }

  const responseHeaders = new Headers({
    "Content-Type": "application/json",
  });
  const response = {
    hello: context.params.name,
  };
  return new Response(JSON.stringify(response), {
    headers: responseHeaders,
  });
}
