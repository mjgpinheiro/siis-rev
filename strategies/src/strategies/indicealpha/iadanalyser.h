/**
 * @brief SiiS indicealpha strategy D analyser.
 * @copyright Copyright (C) 2019 SiiS
 * @author Frederic SCHERMA (frederic.scherma@gmail.com)
 * @date 2019-06-03
 */

#ifndef SIIS_IADANALYSER_H
#define SIIS_IADANALYSER_H

#include "siis/analysers/stdanalyser.h"

#include "siis/indicators/atr/atr.h"
#include "siis/indicators/sma/sma.h"
#include "siis/indicators/ema/ema.h"
#include "siis/indicators/rsi/rsi.h"
#include "siis/indicators/td9/td9.h"

namespace siis {

/**
 * @brief SiiS indicealpha strategy D analyser.
 * @author Frederic Scherma
 * @date 2019-06-03
 * Prefered for slow timeframe from 2h to 1d. Its a copy from A version plus slow ema/sma.
 */
class SIIS_API IaDAnalyser : public StdAnalyser
{
public:

    IaDAnalyser(
            Strategy *strategy,
            o3d::Double timeframe,
            o3d::Double subTimeframe,
            o3d::Int32 depth,
            o3d::Int32 history,
            Price::Method priceMethod=Price::PRICE_CLOSE);

    virtual ~IaDAnalyser() override;

    virtual void init(AnalyserConfig conf) override;
    virtual void terminate() override;
    virtual TradeSignal compute(o3d::Double timestamp, o3d::Double lastTimestamp) override;

private:

    Atr m_atr;
    Sma m_sma;
    Sma m_midSma;
    Sma m_slowSma;
    Ema m_ema;
    Rsi m_rsi;
    Td9 m_td9;
};

} // namespace siis

#endif // SIIS_IADANALYSER_H
