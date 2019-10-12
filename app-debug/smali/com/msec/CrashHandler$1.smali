.class Lcom/msec/CrashHandler$1;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/msec/CrashHandler;->postCrashLog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/msec/CrashHandler;


# direct methods
.method constructor <init>(Lcom/msec/CrashHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/msec/CrashHandler;

    .line 231
    iput-object p1, p0, Lcom/msec/CrashHandler$1;->this$0:Lcom/msec/CrashHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 234
    invoke-static {}, Lcom/msec/CrashHandler;->access$000()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 235
    const/4 v0, 0x0

    move-object v1, v0

    .line 237
    .local v1, "fin":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/msec/CrashHandler$1;->this$0:Lcom/msec/CrashHandler;

    invoke-static {v3}, Lcom/msec/CrashHandler;->access$100(Lcom/msec/CrashHandler;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 239
    .local v2, "baseCrashFile":Ljava/io/File;
    const-string v3, ""

    .line 240
    .local v3, "dumpFilename":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .local v4, "baseFieldString":Ljava/lang/StringBuilder;
    const-string v5, ""

    .line 243
    .local v5, "saveDumpFilename":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 244
    const/4 v2, 0x0

    .line 245
    iget-object v6, p0, Lcom/msec/CrashHandler$1;->this$0:Lcom/msec/CrashHandler;

    invoke-static {v6}, Lcom/msec/CrashHandler;->access$200(Lcom/msec/CrashHandler;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 246
    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    .line 340
    invoke-static {}, Lcom/msec/CrashHandler;->access$000()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 341
    if-eqz v1, :cond_0

    .line 343
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 348
    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v6, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 346
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 247
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_2

    .line 253
    :try_start_2
    new-instance v8, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v8

    .line 254
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v8

    .line 255
    .local v8, "fsize":I
    new-array v9, v8, [B

    .line 256
    .local v9, "baseFieldBytes":[B
    invoke-virtual {v1, v9, v6, v8}, Ljava/io/FileInputStream;->read([BII)I

    .line 258
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v9}, Ljava/lang/String;-><init>([B)V

    .line 259
    .local v10, "fileData":Ljava/lang/String;
    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v6

    move-object v3, v11

    .line 260
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .end local v8    # "fsize":I
    .end local v9    # "baseFieldBytes":[B
    .end local v10    # "fileData":Ljava/lang/String;
    goto :goto_1

    .line 263
    :cond_2
    iget-object v8, p0, Lcom/msec/CrashHandler$1;->this$0:Lcom/msec/CrashHandler;

    const-string v9, ""

    const-string v10, ""

    invoke-static {v8, v9, v10}, Lcom/msec/CrashHandler;->access$300(Lcom/msec/CrashHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :goto_1
    const/4 v8, 0x0

    .line 268
    .local v8, "dumpFileBytes":[B
    const-string v9, "-"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x2

    if-nez v9, :cond_3

    .line 269
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    .local v9, "dumpFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 271
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 272
    .local v11, "dumpFileIn":Ljava/io/FileInputStream;
    invoke-virtual {v11}, Ljava/io/FileInputStream;->available()I

    move-result v12

    new-array v12, v12, [B

    move-object v8, v12

    .line 273
    invoke-virtual {v11}, Ljava/io/FileInputStream;->available()I

    move-result v12

    invoke-virtual {v11, v8, v6, v12}, Ljava/io/FileInputStream;->read([BII)I

    .line 274
    iget-object v6, p0, Lcom/msec/CrashHandler$1;->this$0:Lcom/msec/CrashHandler;

    invoke-static {v6}, Lcom/msec/CrashHandler;->access$400(Lcom/msec/CrashHandler;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 276
    iget-object v6, p0, Lcom/msec/CrashHandler$1;->this$0:Lcom/msec/CrashHandler;

    invoke-static {v6, v8}, Lcom/msec/CrashHandler;->access$500(Lcom/msec/CrashHandler;[B)[B

    move-result-object v6

    .line 277
    .local v6, "compressedBytes":[B
    if-eqz v6, :cond_3

    .line 278
    invoke-static {v6, v10}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v12

    move-object v8, v12

    .line 283
    .end local v6    # "compressedBytes":[B
    .end local v9    # "dumpFile":Ljava/io/File;
    .end local v11    # "dumpFileIn":Ljava/io/FileInputStream;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " \""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    nop

    .line 285
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 284
    invoke-static {v6}, Lcom/msec/MSecClient;->_ts_secureFixedData([B)[B

    move-result-object v6

    .line 286
    .local v6, "baseFieldBytes":[B
    if-eqz v6, :cond_c

    array-length v9, v6

    if-nez v9, :cond_4

    goto/16 :goto_6

    .line 292
    :cond_4
    new-instance v9, Ljava/net/URL;

    invoke-static {}, Lcom/msec/CrashHandler;->getCrashURL()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 293
    .local v9, "handleCrash":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/msec/MSecClient;->isProxyOnline(Ljava/lang/String;)Z

    move-result v11
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v11, :cond_6

    .line 340
    invoke-static {}, Lcom/msec/CrashHandler;->access$000()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 341
    if-eqz v1, :cond_5

    .line 343
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 348
    goto :goto_2

    .line 344
    :catch_1
    move-exception v0

    .line 345
    .restart local v0    # "e":Ljava/io/IOException;
    sget-boolean v7, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v7, :cond_5

    .line 346
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 294
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    :goto_2
    return-void

    .line 297
    :cond_6
    :try_start_4
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    check-cast v11, Ljava/net/HttpURLConnection;

    .line 299
    .local v11, "conn":Ljava/net/HttpURLConnection;
    instance-of v12, v11, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v12, :cond_7

    .line 300
    invoke-static {}, Lcom/msec/CrashHandler;->access$600()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/msec/CertHelper;->getSSLSocketFactory(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v12

    .line 301
    .local v12, "sslSock":Ljavax/net/ssl/SSLSocketFactory;
    if-eqz v12, :cond_7

    .line 302
    move-object v13, v11

    check-cast v13, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v13, v12}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 306
    .end local v12    # "sslSock":Ljavax/net/ssl/SSLSocketFactory;
    :cond_7
    const-string v12, "POST"

    invoke-virtual {v11, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 307
    const/16 v12, 0x4e20

    invoke-virtual {v11, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 308
    invoke-virtual {v11, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 309
    invoke-virtual {v11, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 311
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    .line 312
    .local v12, "connOutputStream":Ljava/io/OutputStream;
    iget-object v13, p0, Lcom/msec/CrashHandler$1;->this$0:Lcom/msec/CrashHandler;

    invoke-static {v13, v12, v6, v10}, Lcom/msec/CrashHandler;->access$700(Lcom/msec/CrashHandler;Ljava/io/OutputStream;[BI)V

    .line 313
    if-eqz v8, :cond_8

    .line 314
    iget-object v0, p0, Lcom/msec/CrashHandler$1;->this$0:Lcom/msec/CrashHandler;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v0, v12, v10, v7}, Lcom/msec/CrashHandler;->access$700(Lcom/msec/CrashHandler;Ljava/io/OutputStream;[BI)V

    .line 315
    iget-object v0, p0, Lcom/msec/CrashHandler$1;->this$0:Lcom/msec/CrashHandler;

    const/4 v7, 0x4

    invoke-static {v0, v12, v8, v7}, Lcom/msec/CrashHandler;->access$700(Lcom/msec/CrashHandler;Ljava/io/OutputStream;[BI)V

    goto :goto_3

    .line 318
    :cond_8
    iget-object v10, p0, Lcom/msec/CrashHandler$1;->this$0:Lcom/msec/CrashHandler;

    invoke-static {v10, v12, v0, v7}, Lcom/msec/CrashHandler;->access$700(Lcom/msec/CrashHandler;Ljava/io/OutputStream;[BI)V

    .line 320
    :goto_3
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    .line 321
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 323
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v7, 0xc8

    if-ne v0, v7, :cond_a

    .line 324
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 325
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 326
    :cond_9
    iget-object v0, p0, Lcom/msec/CrashHandler$1;->this$0:Lcom/msec/CrashHandler;

    invoke-static {v0}, Lcom/msec/CrashHandler;->access$800(Lcom/msec/CrashHandler;)V

    .line 327
    invoke-static {}, Lcom/msec/CrashHandler;->access$900()V

    .line 329
    :cond_a
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 340
    .end local v2    # "baseCrashFile":Ljava/io/File;
    .end local v3    # "dumpFilename":Ljava/lang/String;
    .end local v4    # "baseFieldString":Ljava/lang/StringBuilder;
    .end local v5    # "saveDumpFilename":Ljava/lang/String;
    .end local v6    # "baseFieldBytes":[B
    .end local v8    # "dumpFileBytes":[B
    .end local v9    # "handleCrash":Ljava/net/URL;
    .end local v11    # "conn":Ljava/net/HttpURLConnection;
    .end local v12    # "connOutputStream":Ljava/io/OutputStream;
    invoke-static {}, Lcom/msec/CrashHandler;->access$000()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 341
    if-eqz v1, :cond_10

    .line 343
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 348
    :cond_b
    :goto_4
    goto/16 :goto_8

    .line 344
    :catch_2
    move-exception v0

    .line 345
    .restart local v0    # "e":Ljava/io/IOException;
    sget-boolean v2, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_b

    .line 346
    :goto_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 340
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "baseCrashFile":Ljava/io/File;
    .restart local v3    # "dumpFilename":Ljava/lang/String;
    .restart local v4    # "baseFieldString":Ljava/lang/StringBuilder;
    .restart local v5    # "saveDumpFilename":Ljava/lang/String;
    .restart local v6    # "baseFieldBytes":[B
    .restart local v8    # "dumpFileBytes":[B
    :cond_c
    :goto_6
    invoke-static {}, Lcom/msec/CrashHandler;->access$000()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 341
    if-eqz v1, :cond_d

    .line 343
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 348
    goto :goto_7

    .line 344
    :catch_3
    move-exception v0

    .line 345
    .restart local v0    # "e":Ljava/io/IOException;
    sget-boolean v7, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v7, :cond_d

    .line 346
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 287
    .end local v0    # "e":Ljava/io/IOException;
    :cond_d
    :goto_7
    return-void

    .line 340
    .end local v2    # "baseCrashFile":Ljava/io/File;
    .end local v3    # "dumpFilename":Ljava/lang/String;
    .end local v4    # "baseFieldString":Ljava/lang/StringBuilder;
    .end local v5    # "saveDumpFilename":Ljava/lang/String;
    .end local v6    # "baseFieldBytes":[B
    .end local v8    # "dumpFileBytes":[B
    :catchall_0
    move-exception v0

    goto :goto_9

    .line 335
    :catch_4
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    sget-boolean v2, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_e

    .line 337
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 340
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_e
    invoke-static {}, Lcom/msec/CrashHandler;->access$000()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 341
    if-eqz v1, :cond_10

    .line 343
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_4

    .line 344
    :catch_5
    move-exception v0

    .line 345
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v2, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_b

    goto :goto_5

    .line 330
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 331
    .local v0, "e":Ljava/net/SocketException;
    :try_start_9
    sget-boolean v2, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_f

    .line 332
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 334
    :cond_f
    invoke-static {}, Lcom/msec/CrashHandler;->deleteCrashURL()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 340
    .end local v0    # "e":Ljava/net/SocketException;
    invoke-static {}, Lcom/msec/CrashHandler;->access$000()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 341
    if-eqz v1, :cond_10

    .line 343
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_4

    .line 344
    :catch_7
    move-exception v0

    .line 345
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v2, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_b

    goto :goto_5

    .line 351
    .end local v0    # "e":Ljava/io/IOException;
    :cond_10
    :goto_8
    return-void

    .line 340
    :goto_9
    invoke-static {}, Lcom/msec/CrashHandler;->access$000()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 341
    if-eqz v1, :cond_11

    .line 343
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 348
    goto :goto_a

    .line 344
    :catch_8
    move-exception v2

    .line 345
    .local v2, "e":Ljava/io/IOException;
    sget-boolean v3, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v3, :cond_11

    .line 346
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 348
    .end local v2    # "e":Ljava/io/IOException;
    :cond_11
    :goto_a
    throw v0
.end method
