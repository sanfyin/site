---
title: Sliding Window Patterns
author: Sanfyin
date: 2022-06-01 00:34:00 +0800
categories: [DSA]
tags: [dsa, data structure, sliding window]
---

## Sliding Window pattern in DSA questions 

### 1. Maximum Sum Subarray of Size K (easy)

<details>
<summary>Questions Details</summary>

<p>Given an array of positive numbers and a positive number ‘k’, find the maximum sum of any contiguous subarray of size ‘k’.</p>

</br>
<b>Example 1:</b>
</br>
Input: [2, 1, 5, 1, 3, 2], k=3 
</br>
Output: 9

Explanation: Subarray with maximum sum is [5, 1, 3].

* Example 2:

Input: [2, 3, 4, 1, 5], k=2 

Output: 7

Explanation: Subarray with maximum sum is [3, 4].

</details>

<details>
  <summary>Implementation</summary>

{% tabs log %}

{% tab log Python %}
```python
def max_sub_array_of_size_k(k, arr):
  max_sum , window_sum = 0, 0
  window_start = 0

  for window_end in range(len(arr)):
    window_sum += arr[window_end]  # add the next element
    # slide the window, we don't need to slide if we've not hit 
    the required window size of 'k'
    if window_end >= k-1:
      max_sum = max(max_sum, window_sum)
      window_sum -= arr[window_start]  # subtract the element going out
      window_start += 1  # slide the window ahead
  return max_sum

def main():
  print("Maximum sum of a subarray of size K: " + 
  str(max_sub_array_of_size_k(3, [2, 1, 5, 1, 3, 2])))
  print("Maximum sum of a subarray of size K: " + 
  str(max_sub_array_of_size_k(2, [2, 3, 4, 1, 5])))

main()
```
{% endtab %}

{% tab log js %}
```javascript
console.log('hello');
```
{% endtab %}

{% tab log ruby %}
```ruby
pputs 'hello'
```
{% endtab %}

{% endtabs %}

</details>



# A collapsible section with markdown
<details>
  <summary>Click to expand!</summary>
  
  ## Heading
  1. A numbered
  2. list
     * With some
     * Sub bullets
</details>


<emu-alg>
  <ol>
    <li>Assert: Type(<var>iterator</var>) is Object.</li>
    <li>Assert: <var>completion</var> is a Completion Record.</li>
    <li>Let <var>hasReturn</var> be HasProperty(<var>iterator</var>, <code>"return"</code>).</li>
    <li>ReturnIfAbrupt(<var>hasReturn</var>).
      <ol>
        <li>If <var>hasReturn</var> is <emu-val>true</emu-val>, then
          <ol>
            <li>Let <var>innerResult</var> be Invoke(<var>iterator</var>, <code>"return"</code>, ( )).</li>
            <li>If <var>completion</var>.[[type]] is not <emu-const>throw</emu-const> and <var>innerResult</var>.[[type]] is <emu-const>throw</emu-const>, then
              <ol>
                <li>Return <var>innerResult</var>.</li>
              </ol>
            </li>
          </ol>
        </li>
      </ol>
    </li>
    <li>Return <var>completion</var>.</li>
  </ol>
</emu-alg>