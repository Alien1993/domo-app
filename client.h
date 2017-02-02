#ifndef CLIENT_H
#define CLIENT_H

#include <QObject>
#include <QTcpSocket>

class Client : public QObject
{
    Q_OBJECT

public:
    Client(QObject* parent = Q_NULLPTR);
    ~Client() {}

    Q_INVOKABLE bool connect(QString hostName, quint16 hostPort);
    Q_INVOKABLE bool sendData(QByteArray data);

private:
    QTcpSocket* m_socket;
};

#endif
