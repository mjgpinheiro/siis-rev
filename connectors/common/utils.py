# @date 2019-01-06
# @author Frederic SCHERMA
# @license Copyright (c) 2019 Dream Overflow
# Utils

import time
import datetime
import math


class UTC(datetime.tzinfo):
    """
    UTC timezone to set for UTC datetime.
    """

    def utcoffset(self, dt):
        return datetime.timedelta(0)

    def tzname(self, dt):
        return "UTC"

    def dst(self, dt):
        return datetime.timedelta(0)


# timeframe to str map (double: str)
TIMEFRAME_TO_STR_MAP = {
    0: 't',
    1: '1s',
    10: '10s',
    30: '10s',    
    60: '1m',
    2*60: '2m',
    3*60: '3m',
    5*60: '5m',
    10*60: '10m',
    15*60: '15m',
    60*60: '1h',
    2*60*60: '2h',
    3*60*60: '3h',
    4*60*60: '4h',
    6*60*60: '6h',
    8*60*60: '8h',
    24*60*60: '1d',
    2*24*60*60: '2d',
    3*24*60*60: '3d',
    7*24*60*60: '1w',
    30*24*60*60: '1m'
}

# timeframe reverse map (str: double)
TIMEFRAME_FROM_STR_MAP = {v: k for k, v in TIMEFRAME_TO_STR_MAP.items()}


def timeframe_to_str(timeframe):
    if timeframe in TIMEFRAME_TO_STR_MAP:
        return TIMEFRAME_TO_STR_MAP[timeframe]
    else:
        return ""


def timeframe_from_str(timeframe):
    if timeframe in TIMEFRAME_FROM_STR_MAP:
        return TIMEFRAME_FROM_STR_MAP[timeframe]
    else:
        return 0.0


def matching_symbols_set(configured_symbols, available_symbols):
    """
    Special '*' symbol mean every symbol.
    Starting with '!' mean except this symbol.
    Starting with '*' mean every wildchar before the suffix.

    @param available_symbols List containing any supported markets symbol of the broker. Used when a wildchar is defined.
    """
    if '*' in configured_symbols:
        # all instruments
        watched_symbols = set(availables)

        # except...
        for configured_symbol in configured_symbols:
            if configured_symbol.startswith('!'):
                # ignore, not wildchar, remove it
                watched_symbols.remove(configured_symbol[1:])
    else:
        watched_symbols = set()

        for configured_symbol in configured_symbols:
            if configured_symbol.startswith('*'):
                # all ending symbols name with...
                suffix = configured_symbol[1:]

                for symbol in available_symbols:
                    # except...
                    if symbol.endswith(suffix) and ('!'+symbol) not in configured_symbols:
                        watched_symbols.add(symbol)

            elif not configured_symbol.startswith('!'):
                # not ignored, not wildchar
                watched_symbols.add(configured_symbol)

    return watched_symbols


def fix_thread_set_name():
    try:
        import threading
        import prctl
        def set_thread_name(name): prctl.set_name(name)

        def _thread_name_hack(self):
            set_thread_name(self.name)
            threading.Thread._bootstrap_original(self)

        threading.Thread._bootstrap_original = threading.Thread._bootstrap
        threading.Thread._bootstrap = _thread_name_hack
    except ImportError:
        print('WARN: prctl module is not installed. You will not be able to see thread names')
        def set_thread_name(name): pass


def truncate(number, digits) -> float:
    stepper = pow(10.0, digits)
    return math.trunc(stepper * number) / stepper


def basetime(tf, timestamp):
    if tf < 7*24*60*60:
        # simplest
        return int(timestamp / tf) * tf
    elif tf == 7*24*60*60:
        # must find the UTC first day of week
        dt = datetime.datetime.utcfromtimestamp(timestamp)
        dt = dt.replace(hour=0, minute=0, second=0, microsecond=0, tzinfo=UTC()) - datetime.timedelta(days=dt.weekday())
        return dt.timestamp()
    elif tf == 30*24*60*60:
        # replace by first day of month at 00h00 UTC
        dt = datetime.datetime.utcfromtimestamp(timestamp)
        dt = dt.replace(day=1, hour=0, minute=0, second=0, microsecond=0, tzinfo=UTC())
        return dt.timestamp()

    return 0