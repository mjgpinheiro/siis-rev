/**
 * @brief SiiS connector client.
 * @copyright Copyright (C) 2019 SiiS
 * @author Romain Locci
 * @date 2019-03-23
 */

#ifndef SIIS_CONNECTOR_MESSAGE_MODIFYPOSITION_H
#define SIIS_CONNECTOR_MESSAGE_MODIFYPOSITION_H

#include "connectormessagecore.h"

namespace siis {


class SIIS_API_TEMPLATE ConnectorMessageModifyPosition : public ConnectorMessageCore
{
public:

    ConnectorMessageModifyPosition(const o3d::String &positionId,
                                   o3d::Double stopLossPrice,
                                   o3d::Double takeProfitPrice);

    void write();
    void read(zmq::message_t *);

protected:

	void initSize();
	void initSizeReturn();

protected:

    o3d::String m_positionId;
	o3d::Double m_stopLossPrice;
	o3d::Double m_takeProfitPrice;

    o3d::Int32 m_result;
};

} // namespace siis

#endif // SIIS_CONNECTOR_MESSAGE_MODIFYPOSITION_H
