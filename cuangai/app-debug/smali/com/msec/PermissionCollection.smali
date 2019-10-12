.class Lcom/msec/PermissionCollection;
.super Ljava/lang/Object;
.source "PermissionCollection.java"

# interfaces
.implements Lcom/msec/SysInfoCollection;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end()Ljava/lang/String;
    .locals 8

    .line 17
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 19
    .local v0, "sb":Ljava/lang/StringBuffer;
    :try_start_0
    iget-object v1, p0, Lcom/msec/PermissionCollection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/msec/PermissionCollection;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 20
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 21
    .local v2, "permissions":[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 22
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 23
    .local v5, "str":Ljava/lang/String;
    iget-object v6, p0, Lcom/msec/PermissionCollection;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    .line 24
    .local v6, "permis":I
    if-nez v6, :cond_0

    .line 25
    const-string v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "=1,"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 27
    :cond_0
    const-string v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "=0,"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .end local v5    # "str":Ljava/lang/String;
    .end local v6    # "permis":I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 35
    .end local v2    # "permissions":[Ljava/lang/String;
    :cond_1
    goto :goto_2

    .line 31
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 32
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 33
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_3

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 40
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public start(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 12
    iput-object p1, p0, Lcom/msec/PermissionCollection;->mContext:Landroid/content/Context;

    .line 13
    return-void
.end method
