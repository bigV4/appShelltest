.class public Lcom/msec/net/volley/HurlStack;
.super Ljava/lang/Object;
.source "HurlStack.java"

# interfaces
.implements Lcom/android/volley/toolbox/HttpStack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/msec/net/volley/HurlStack$UrlRewriter;
    }
.end annotation


# static fields
.field private static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"


# instance fields
.field private final mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final mUrlRewriter:Lcom/msec/net/volley/HurlStack$UrlRewriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/msec/net/volley/HurlStack;-><init>(Lcom/msec/net/volley/HurlStack$UrlRewriter;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/msec/net/volley/HurlStack$UrlRewriter;)V
    .locals 1
    .param p1, "urlRewriter"    # Lcom/msec/net/volley/HurlStack$UrlRewriter;

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/msec/net/volley/HurlStack;-><init>(Lcom/msec/net/volley/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lcom/msec/net/volley/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0
    .param p1, "urlRewriter"    # Lcom/msec/net/volley/HurlStack$UrlRewriter;
    .param p2, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/msec/net/volley/HurlStack;->mUrlRewriter:Lcom/msec/net/volley/HurlStack$UrlRewriter;

    .line 88
    iput-object p2, p0, Lcom/msec/net/volley/HurlStack;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 89
    return-void
.end method

.method private static addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V
    .locals 3
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/android/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 240
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    invoke-virtual {p1}, Lcom/android/volley/Request;->getBody()[B

    move-result-object v0

    .line 241
    .local v0, "body":[B
    if-eqz v0, :cond_0

    .line 242
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 243
    const-string v1, "Content-Type"

    invoke-virtual {p1}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 245
    .local v1, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 246
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 248
    .end local v1    # "out":Ljava/io/DataOutputStream;
    :cond_0
    return-void
.end method

.method private static entityFromConnection(Ljava/net/HttpURLConnection;)Lorg/apache/http/HttpEntity;
    .locals 4
    .param p0, "connection"    # Ljava/net/HttpURLConnection;

    .line 138
    new-instance v0, Lorg/apache/http/entity/BasicHttpEntity;

    invoke-direct {v0}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    .line 141
    .local v0, "entity":Lorg/apache/http/entity/BasicHttpEntity;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .local v1, "inputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 142
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 143
    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 145
    .local v1, "inputStream":Ljava/io/InputStream;
    :goto_0
    invoke-virtual {v0, v1}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    .line 146
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 147
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/http/entity/BasicHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/http/entity/BasicHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 149
    return-object v0
.end method

.method private openConnection(Lcom/msec/net/URL;Lcom/android/volley/Request;)Ljava/net/HttpURLConnection;
    .locals 4
    .param p1, "url"    # Lcom/msec/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/msec/net/URL;",
            "Lcom/android/volley/Request<",
            "*>;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    .local p2, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    invoke-virtual {p0, p1}, Lcom/msec/net/volley/HurlStack;->createConnection(Lcom/msec/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 168
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {p2}, Lcom/android/volley/Request;->getTimeoutMs()I

    move-result v1

    .line 169
    .local v1, "timeoutMs":I
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 170
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 171
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 172
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 175
    const-string v2, "https"

    invoke-virtual {p1}, Lcom/msec/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/msec/net/volley/HurlStack;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v2, :cond_0

    .line 176
    move-object v2, v0

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v3, p0, Lcom/msec/net/volley/HurlStack;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 179
    :cond_0
    return-object v0
.end method

.method static setConnectionParametersForRequest(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V
    .locals 3
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/android/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 185
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    invoke-virtual {p1}, Lcom/android/volley/Request;->getMethod()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 234
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown method type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :pswitch_0
    const-string v0, "PATCH"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 231
    invoke-static {p0, p1}, Lcom/msec/net/volley/HurlStack;->addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V

    .line 232
    goto :goto_0

    .line 227
    :pswitch_1
    const-string v0, "TRACE"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 228
    goto :goto_0

    .line 224
    :pswitch_2
    const-string v0, "OPTIONS"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 225
    goto :goto_0

    .line 221
    :pswitch_3
    const-string v0, "HEAD"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 222
    goto :goto_0

    .line 210
    :pswitch_4
    const-string v0, "DELETE"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 211
    goto :goto_0

    .line 217
    :pswitch_5
    const-string v0, "PUT"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 218
    invoke-static {p0, p1}, Lcom/msec/net/volley/HurlStack;->addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V

    .line 219
    goto :goto_0

    .line 213
    :pswitch_6
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 214
    invoke-static {p0, p1}, Lcom/msec/net/volley/HurlStack;->addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V

    .line 215
    goto :goto_0

    .line 207
    :pswitch_7
    const-string v0, "GET"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 208
    goto :goto_0

    .line 190
    :pswitch_8
    invoke-virtual {p1}, Lcom/android/volley/Request;->getPostBody()[B

    move-result-object v0

    .line 191
    .local v0, "postBody":[B
    if-eqz v0, :cond_0

    .line 195
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 196
    const-string v1, "POST"

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 197
    const-string v1, "Content-Type"

    .line 198
    invoke-virtual {p1}, Lcom/android/volley/Request;->getPostBodyContentType()Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-virtual {p0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 200
    .local v1, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 201
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 202
    .end local v1    # "out":Ljava/io/DataOutputStream;
    nop

    .line 236
    .end local v0    # "postBody":[B
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected createConnection(Lcom/msec/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p1, "url"    # Lcom/msec/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-virtual {p1}, Lcom/msec/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public performRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 94
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    .local p2, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 96
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 97
    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 98
    iget-object v5, v0, Lcom/msec/net/volley/HurlStack;->mUrlRewriter:Lcom/msec/net/volley/HurlStack$UrlRewriter;

    if-eqz v5, :cond_1

    .line 99
    iget-object v5, v0, Lcom/msec/net/volley/HurlStack;->mUrlRewriter:Lcom/msec/net/volley/HurlStack$UrlRewriter;

    invoke-interface {v5, v2}, Lcom/msec/net/volley/HurlStack$UrlRewriter;->rewriteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, "rewritten":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 103
    move-object v2, v5

    goto :goto_0

    .line 101
    :cond_0
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "URL blocked by rewriter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 105
    .end local v5    # "rewritten":Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v5, Lcom/msec/net/URL;

    invoke-direct {v5, v2}, Lcom/msec/net/URL;-><init>(Ljava/lang/String;)V

    .line 106
    .local v5, "parsedUrl":Lcom/msec/net/URL;
    invoke-direct {v0, v5, v1}, Lcom/msec/net/volley/HurlStack;->openConnection(Lcom/msec/net/URL;Lcom/android/volley/Request;)Ljava/net/HttpURLConnection;

    move-result-object v6

    .line 107
    .local v6, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 108
    .local v8, "headerName":Ljava/lang/String;
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .end local v8    # "headerName":Ljava/lang/String;
    goto :goto_1

    .line 110
    :cond_2
    invoke-static {v6, v1}, Lcom/msec/net/volley/HurlStack;->setConnectionParametersForRequest(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V

    .line 112
    new-instance v7, Lorg/apache/http/ProtocolVersion;

    const-string v8, "HTTP"

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9, v9}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    .line 113
    .local v7, "protocolVersion":Lorg/apache/http/ProtocolVersion;
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 114
    .local v8, "responseCode":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    .line 119
    new-instance v9, Lorg/apache/http/message/BasicStatusLine;

    .line 120
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v7, v10, v11}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    .line 121
    .local v9, "responseStatus":Lorg/apache/http/StatusLine;
    new-instance v10, Lorg/apache/http/message/BasicHttpResponse;

    invoke-direct {v10, v9}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;)V

    .line 122
    .local v10, "response":Lorg/apache/http/message/BasicHttpResponse;
    invoke-static {v6}, Lcom/msec/net/volley/HurlStack;->entityFromConnection(Ljava/net/HttpURLConnection;)Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/apache/http/message/BasicHttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 123
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 124
    .local v12, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 125
    new-instance v13, Lorg/apache/http/message/BasicHeader;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v13, v14, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v13

    .line 126
    .local v0, "h":Lorg/apache/http/Header;
    invoke-virtual {v10, v0}, Lorg/apache/http/message/BasicHttpResponse;->addHeader(Lorg/apache/http/Header;)V

    .line 128
    .end local v0    # "h":Lorg/apache/http/Header;
    .end local v12    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_3
    nop

    .line 123
    move-object/from16 v0, p0

    goto :goto_2

    .line 129
    :cond_4
    return-object v10

    .line 117
    .end local v9    # "responseStatus":Lorg/apache/http/StatusLine;
    .end local v10    # "response":Lorg/apache/http/message/BasicHttpResponse;
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v9, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
