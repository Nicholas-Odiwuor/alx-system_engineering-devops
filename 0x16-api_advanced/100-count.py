#!/usr/bin/python3
"""
Recursive function that queries the Reddit API, parses the title of all hot articles,
and prints a sorted count of given keywords (case-insensitive).
"""
import requests

def count_words(subreddit, word_list, after=None, word_count={}):
    """Recursively queries the Reddit API, parses titles, and counts keywords."""
    headers = {'User-Agent': 'Mozilla/5.0'}
    url = f"https://www.reddit.com/r/{subreddit}/hot.json"
    params = {"limit": 100, "after": after}
    
    response = requests.get(url, headers=headers, params=params, allow_redirects=False)
    if response.status_code != 200:
        return
    
    data = response.json().get("data", {})
    after = data.get("after", None)
    posts = data.get("children", [])
    
    for post in posts:
        title = post["data"].get("title", "").lower().split()
        
        for word in word_list:
            word_lower = word.lower()
            count = title.count(word_lower)
            if count > 0:
                word_count[word_lower] = word_count.get(word_lower, 0) + count
    
    if after:
        return count_words(subreddit, word_list, after, word_count)
    
    sorted_counts = sorted(word_count.items(), key=lambda x: (-x[1], x[0]))
    
    for word, count in sorted_counts:
        print(f"{word}: {count}")

