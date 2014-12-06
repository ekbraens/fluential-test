!!UPDATE!!
I have completed the challenge! Got some lunch, let my mind wander a little bit without the specter of a ticking clock over my mind and things came together.

I was on the right track using an NSDictionary to store the values, but when I went to iterate over them to check whether the strings were inside the example data I kept getting an error that indicated I was not comparing a string against a string.

Turns out the way I stored the data in the NSDictionary (with arrays) added a level of convolution I was not taking into account. I was iterating through the keys the after the initial 2 hours, but not the array the key pointed to. I was comparing an array to a string. So now I have two for loops to iterate through inside the appropriate methods. Once for keys, once for the corresponding array. 

After that debacle it was smooth sailing. Glad I stuck with it and am appreciative of the leniency granted. 

Again, I am not sure if I documented everything to standards, as I am not entirely sure what was meant by ‘document’. I took it was throughly comment, and that is reflected in my code and here in the readme.txt now. 

The tests I ran were various strings, called testSting that are inside the main.m file. I fear may not have tested against an edge case, but I can’t think of another one. I am confident the way I have set up the methods the resulting return value should be accurate. But then again everyone knows what comes before the fall, haha.

Thanks again
Eric


AFTER THE ALLOTTED TIME
did not finish the challenge!

ran out of time

had a few confusions at the beginning and slowed me down

once i got into the meat of the challenge, i stumbled getting the strings out of the nsdictionary i had set up to handle all of the sets of words

i would like to believe if i had more time i would have figured it out

a real shame, I’m a bit embarrassed.

 