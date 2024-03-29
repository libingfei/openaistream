% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/messages.R
\name{messages}
\alias{messages}
\title{messages Class}
\description{
messages Class

messages Class
}
\section{Super class}{
\code{\link[openaistream:openai]{openaistream::openai}} -> \code{messages}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-messages-create}{\code{messages$create()}}
\item \href{#method-messages-retrieve}{\code{messages$retrieve()}}
\item \href{#method-messages-modify}{\code{messages$modify()}}
\item \href{#method-messages-list}{\code{messages$list()}}
\item \href{#method-messages-file_retrieve}{\code{messages$file_retrieve()}}
\item \href{#method-messages-file_list}{\code{messages$file_list()}}
\item \href{#method-messages-clone}{\code{messages$clone()}}
}
}
\if{html}{\out{
<details open><summary>Inherited methods</summary>
<ul>
<li><span class="pkg-link" data-pkg="openaistream" data-topic="openai" data-id="initialize"><a href='../../openaistream/html/openai.html#method-openai-initialize'><code>openaistream::openai$initialize()</code></a></span></li>
</ul>
</details>
}}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-messages-create"></a>}}
\if{latex}{\out{\hypertarget{method-messages-create}{}}}
\subsection{Method \code{create()}}{
Create a message.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{messages$create(thread_id, role, content, ..., verbosity = 0)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{thread_id}}{character Required. The ID of the thread to create a message for.}

\item{\code{role}}{character Required. The role of the entity that is creating the message. Currently only user is supported.}

\item{\code{content}}{character Required. The content of the message.}

\item{\code{...}}{Additional parameters as required by the OpenAI API. For example:file_ids,metadata}

\item{\code{verbosity}}{numeric. Verbosity level for the API call(0:no output;1:show headers;
2:show headers and bodies;3: show headers, bodies, and curl status messages.)}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A message object.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-messages-retrieve"></a>}}
\if{latex}{\out{\hypertarget{method-messages-retrieve}{}}}
\subsection{Method \code{retrieve()}}{
Retrieve a message.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{messages$retrieve(thread_id, message_id, verbosity = 0)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{thread_id}}{character Required. The ID of the thread the message belongs to.}

\item{\code{message_id}}{character Required. The ID of the message to retrieve.}

\item{\code{verbosity}}{numeric. Verbosity level for the API call(0:no output;1:show headers;
2:show headers and bodies;3: show headers, bodies, and curl status messages.)}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
The message object matching the specified ID.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-messages-modify"></a>}}
\if{latex}{\out{\hypertarget{method-messages-modify}{}}}
\subsection{Method \code{modify()}}{
Modifies a message.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{messages$modify(thread_id, message_id, ..., verbosity = 0)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{thread_id}}{character Required. The ID of the thread the message belongs to.}

\item{\code{message_id}}{character Required. The ID of the message to retrieve.}

\item{\code{...}}{Additional parameters as required by the OpenAI API. For example:metadata}

\item{\code{verbosity}}{numeric. Verbosity level for the API call(0:no output;1:show headers;
2:show headers and bodies;3: show headers, bodies, and curl status messages.)}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
The modified message object.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-messages-list"></a>}}
\if{latex}{\out{\hypertarget{method-messages-list}{}}}
\subsection{Method \code{list()}}{
Returns a list of messages for a given thread.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{messages$list(thread_id, ..., verbosity = 0)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{thread_id}}{character Required. The ID of the thread the messages belong to.}

\item{\code{...}}{Additional parameters as required by the OpenAI API.}

\item{\code{verbosity}}{numeric Verbosity level for the API call(0:no output;1:show headers;
2:show headers and bodies;3: show headers, bodies, and curl status messages.)}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A list of message objects.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-messages-file_retrieve"></a>}}
\if{latex}{\out{\hypertarget{method-messages-file_retrieve}{}}}
\subsection{Method \code{file_retrieve()}}{
Retrieves a message file.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{messages$file_retrieve(thread_id, message_id, file_id, verbosity = 0)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{thread_id}}{character Required. The ID of the thread the message belongs to.}

\item{\code{message_id}}{character Required. The ID of the message the file belongs to.}

\item{\code{file_id}}{character Required The ID of the file being retrieved.}

\item{\code{verbosity}}{numeric Verbosity level for the API call(0:no output;1:show headers;}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
The message file object.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-messages-file_list"></a>}}
\if{latex}{\out{\hypertarget{method-messages-file_list}{}}}
\subsection{Method \code{file_list()}}{
Returns a list of message files.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{messages$file_list(thread_id, message_id, ..., verbosity = 0)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{thread_id}}{character Required. The ID of the thread the message belongs to.}

\item{\code{message_id}}{character Required. The ID of the message the file belongs to.}

\item{\code{...}}{Additional parameters as required by the OpenAI API.}

\item{\code{verbosity}}{numeric Verbosity level for the API call(0:no output;1:show headers;}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A list of message file objects.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-messages-clone"></a>}}
\if{latex}{\out{\hypertarget{method-messages-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{messages$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
