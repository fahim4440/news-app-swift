# <h1>News App</h1>

This is a simple <strong>News App</strong> built using SwiftUI, demonstrating how to fetch data from a news API and display it in a user-friendly list view. The app fetches articles from an API and shows them in a list. Tapping on an article opens the corresponding URL in Safari.

## <h2>Features</h2>
<ul>
  <li><strong>Fetch News</strong>: The app fetches news articles from an API.</li>
  <li><strong>List of Articles</strong>: Display the fetched articles in a list with their title, description, and image.</li>
  <li><strong>Link to Safari</strong>: When an article is tapped, it opens the article's URL in Safari.</li>
  <li><strong>Dynamic Updates</strong>: The list of articles is fetched dynamically and updates as new data is received.</li>
</ul>

## <h2>Screenshots</h2>
<img src="screenshot1.png" alt="Screenshot 1" width="400">
<img src="screenshot2.png" alt="Screenshot 2" width="400">

## <h2>How It Works</h2>
<ol>
  <li><strong>API Integration</strong>: The app fetches data from a news API, which returns a list of articles in JSON format.</li>
  <li><strong>Data Decoding</strong>: The JSON response is decoded into a model using <code>Codable</code> and <code>Decodable</code>.</li>
  <li><strong>Display Articles</strong>: Articles are displayed in a list, and tapping on an article opens the link in Safari.</li>
  <li><strong>Custom Divider</strong>: The app uses a custom divider for a better UI appearance.</li>
</ol>

## <h2>Tech Stack</h2>
<ul>
  <li><strong>SwiftUI</strong>: For the user interface.</li>
  <li><strong>Combine</strong>: For handling asynchronous data fetching.</li>
  <li><strong>NewsAPI</strong>: For fetching the latest news articles.</li>
</ul>

## <h2>Installation</h2>
<ol>
  <li>Clone this repository to your local machine.</li>
  <li>Open the project in Xcode.</li>
  <li>Run the app on a simulator or a real device.</li>
</ol>

## <h2>API Key</h2>
You'll need an API key from <a href="https://newsapi.org/" target="_blank">NewsAPI</a>. Replace the placeholder API key in the <code>ApiManager.swift</code> file.
