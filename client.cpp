#include "client.h"

Client::Client(QObject* parent)
    : QObject{parent}
    , m_socket{new QTcpSocket}
{
}

bool Client::connect(QString hostName, quint16 hostPort)
{
    m_socket->connectToHost(hostName, hostPort);
    return m_socket->waitForConnected();
}

bool Client::sendData(QByteArray data)
{
    if (m_socket->state() == QAbstractSocket::ConnectedState) {
        m_socket->write(data);
        return m_socket->waitForBytesWritten();
    }
    return false;
}
