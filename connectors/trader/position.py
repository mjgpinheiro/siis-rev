# @date 2018-08-08
# @author Frederic SCHERMA
# @license Copyright (c) 2018 Dream Overflow
# Position model

from constants import LONG, SHORT

class Position(object):
    """
    Trader side position.
    Profit/loss are computed in base currency.
    Profit/loss rate consider the traded volume and margin level.
    To have the change rate from the opened price use the change_rate method.
    Fee are defined in rate (0.01 meaning 1%)

    The rollover is not computed into the profit/loss, it might be done at the account level

    @todo A currency string formatter, using the currency_symbol if defined and with the correct decimal
    and position of the symbol (ex: $1000.01 or 1175.37€ or 11.3751B)
    """

    STATE_PENDING = 0
    STATE_OPENED = 1
    STATE_CLOSING = 3
    STATE_CLOSED = 4

    def __init__(self):
        super().__init__()

        self._position_id = None
        self._state = Position.STATE_PENDING

        self._market_id = ""
        self._shared = False
        self._quantity = 0.0

        self._direction = LONG
    
        self._profit_loss = 0.0
        self._profit_loss_rate = 0.0
        
        self._profit_loss_market = 0.0
        self._profit_loss_market_rate = 0.0

        self._created_time = None
        self._market_close = False

        self._leverage = 1.0

        self._entry_price = 0.0

        self._take_profit = None
        self._stop_loss = None

    def set(self, direction, market_id, quantity, take_profit=None, stop_loss=None, leverage=None):
        self._state = Position.STATE_OPENED
        self._direction = direction
        self._market_id = market_id
        self._quantity = quantity
        self._take_profit = take_profit
        self._stop_loss = stop_loss
        self._leverage = leverage

    def closing(self, exit_price=None):
        self._state = Position.STATE_CLOSING
        self._exit_price = exit_price

    def exit(self, exit_price=None):
        self._state = Position.STATE_CLOSED
        self._exit_price = exit_price

    def set_position_id(self, position_id):
        self._position_id = position_id

    def set_copied_position_id(self, position_id):
        self._copied_position_id = position_id

    @property
    def is_opened(self):
        return self._state == Position.STATE_OPENED

    @property
    def is_closing(self):
        return self._state == Position.STATE_CLOSING

    @property
    def is_closed(self):
        return self._state == Position.STATE_CLOSED

    @property
    def state(self):
        return self._state

    @property
    def position_id(self):
        return self._position_id

    @property
    def copied_position_id(self):
        return self._copied_position_id

    @property
    def market_id(self):
        return self._market_id

    @property
    def direction(self):
        return self._direction

    @property
    def take_profit(self):
        return self._take_profit
    
    @property
    def stop_loss(self):
        return self._stop_loss
    
    @property
    def entry_price(self):
        return self._entry_price

    @property
    def leverage(self):
        return self._leverage

    @property
    def shared(self):
        return self._shared

    @property
    def profit_loss(self):
        return self._profit_loss

    @property
    def profit_loss_rate(self):
        return self._profit_loss_rate

    @property
    def profit_loss_market(self):
        return self._profit_loss_market

    @property
    def profit_loss_market_rate(self):
        return self._profit_loss_market_rate

    @property
    def market_close(self):
        return self._market_close

    @property
    def created_time(self):
        return self._created_time

    @property
    def quantity(self):
        return self._quantity
 
    @market_id.setter
    def market_id(self, market_id):
        self._market_id = market_id

    @direction.setter
    def direction(self, direction):
        self._direction = direction

    @profit_loss.setter
    def profit_loss(self, profit_loss):
        self._profit_loss = profit_loss

    @profit_loss_rate.setter
    def profit_loss_rate(self, profit_loss_rate):
        self._profit_loss_rate = profit_loss_rate
    
    @profit_loss_market.setter
    def profit_loss_market(self, profit_loss_market):
        self._profit_loss_market = profit_loss_market

    @profit_loss_market_rate.setter
    def profit_loss_market_rate(self, profit_loss_market_rate):
        self._profit_loss_market_rate = profit_loss_market_rate
    
    @market_close.setter
    def market_close(self, market_close):
        self._market_close = market_close

    @created_time.setter
    def created_time(self, timestamp):
        self._created_time = timestamp

    @quantity.setter
    def quantity(self, quantity):
        self._quantity = quantity

    @entry_price.setter
    def entry_price(self, entry_price):
        self._entry_price = entry_price

    @shared.setter
    def shared(self, shared):
        self._shared = shared

    @leverage.setter
    def leverage(self, leverage):
        self._leverage = leverage

    @take_profit.setter
    def take_profit(self, tp):
        self._take_profit = tp

    @stop_loss.setter
    def stop_loss(self, sl):
        self._stop_loss = sl

    def mapped_dir(self, if_long="Long", if_short="Short", default=None):
        """
        Map the direction to one of the given object or string parameters.
        """
        if self._direction == LONG:
            return if_long
        elif self._direction == SHORT:
            return if_short

        return default

    def change_rate(self, market):
        """
        Compute and return the gained rate related to the entry and market price.
        Its only the change of the price in percent, does not take care of the quantiy, margin, leverage, meaning of a pip...
        @return Profit or loss rate (ex: 0.45 means 0.45%)
        """
        if market is None:
            return 0.0

        # delta price if closing at market
        if self.direction == LONG:
            delta_price = market.bid - self.entry_price
        elif self.direction == SHORT:
            delta_price = self.entry_price - market.ofr
        else:
            delta_price = 0.0

        return delta_price / self.entry_price if self.entry_price else 0.0

    def update_profit_loss(self, market):
        """
        Compute profit_loss and profit_loss_rate for maker and taker.
        @param market A valid market object related to the market of the position.
        """
        if market is None or not market.bid or not market.ofr:
            return

        if self.entry_price is None:
            return

        # delta price if closing at market
        if self.direction == LONG:
            delta_price = market.bid - self.entry_price
        elif self.direction == SHORT:
            delta_price = self.entry_price - market.ofr
        else:
            delta_price = 0.0

        # cost of the position in base currency
        position_cost = self.quantity * (market.contract_size * market.lot_size)
        raw_profit_loss = self.quantity * (delta_price / market.one_pip_means) * market.value_per_pip

        # use maker fee and commission
        self._profit_loss = raw_profit_loss - (position_cost * market.maker_fee) - (position_cost * market.commission)
        self._profit_loss_rate = (self._profit_loss / position_cost) if self._profit_loss != 0.0 else 0.0

        # use taker fee and commission
        self._profit_loss_market = raw_profit_loss - (position_cost * market.taker_fee) - (position_cost * market.commission)
        self._profit_loss_market_rate = (self._profit_loss_market / position_cost) if self._profit_loss_market != 0.0 else 0.0

    def close_direction(self):
        """
        Return the inverse of the direction of the position that is needed to close or revert this position.
        It does not invert the position ! Its just a syntaxic sugar.
        """
        return LONG if self.direction == SHORT else SHORT

    def position_cost(self, market):
        """
        Return the cost of the position in base currency. It does not take care about the margin factor / leverage.
        """
        if market is None:
            return 0.0

        return self.quantity * (market.lot_size * market.contract_size)

    def margin_cost(self, market):
        """
        Return the used margin in base currency (using margin factor). Have to divide per base exchange rate to have
        it in account base currency. But in backtesting we don't have all the rate from base pair to base account.
        """
        if market is None:
            return 0.0

        return self.quantity * (market.lot_size * market.contract_size) * market.margin_factor
