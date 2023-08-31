def filter(iterable, fn):
    for item in iterable:
        if fn(item):
            yield item


