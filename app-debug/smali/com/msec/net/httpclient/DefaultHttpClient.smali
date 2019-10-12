.class public Lcom/msec/net/httpclient/DefaultHttpClient;
.super Lcom/msec/net/httpclient/AbstractHttpClient;
.source "DefaultHttpClient.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/msec/net/httpclient/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 1
    .param p1, "conman"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;

    .line 9
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    invoke-direct {p0, v0}, Lcom/msec/net/httpclient/AbstractHttpClient;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .locals 1
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/msec/net/httpclient/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 15
    return-void
.end method
