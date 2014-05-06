float cube(float x)
{
    return x * x * x;
}
 
float average(float x, float y)
{
    return (x + y) / 2;
}
 
bool is_good_enough(float guess, float x)
{
    return abs(cube(guess) - x) < 0.001;
}
 
float improve(float guess, float x)
{
    float next = ((x / (guess * guess)) + 2 * guess) / 3;
    return average(guess, next);
}
 
float cbrt_itr(float guess, float x)
{
    if (is_good_enough(guess, x))
        return guess;
    else
        return cbrt_itr(improve(guess, x), x);
}

float cbrt(float x)
{
    return cbrt_itr(1.0, x);
}
