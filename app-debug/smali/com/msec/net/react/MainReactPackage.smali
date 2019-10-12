.class public Lcom/msec/net/react/MainReactPackage;
.super Lcom/facebook/react/shell/MainReactPackage;
.source "MainReactPackage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/msec/net/react/MainReactPackage$TSNetworkInterceptorCreator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/facebook/react/shell/MainReactPackage;-><init>()V

    return-void
.end method

.method private adjustModules(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            "Ljava/util/List<",
            "Lcom/facebook/react/bridge/ModuleSpec;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/facebook/react/bridge/ModuleSpec;",
            ">;"
        }
    .end annotation

    .line 28
    .local p2, "moduleSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/bridge/ModuleSpec;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 30
    .local v0, "modules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/react/bridge/ModuleSpec;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/bridge/ModuleSpec;

    .line 32
    .local v2, "spec":Lcom/facebook/react/bridge/ModuleSpec;
    const-class v3, Lcom/facebook/react/modules/network/NetworkingModule;

    invoke-virtual {v2}, Lcom/facebook/react/bridge/ModuleSpec;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33
    invoke-direct {p0, p1, v2}, Lcom/msec/net/react/MainReactPackage;->getCustomNetworkingModule(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/bridge/ModuleSpec;)Lcom/facebook/react/bridge/ModuleSpec;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 34
    goto :goto_1

    .line 30
    .end local v2    # "spec":Lcom/facebook/react/bridge/ModuleSpec;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-object v0
.end method

.method private getCustomNetworkingModule(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/bridge/ModuleSpec;)Lcom/facebook/react/bridge/ModuleSpec;
    .locals 9
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p2, "spec"    # Lcom/facebook/react/bridge/ModuleSpec;

    .line 42
    new-instance v0, Lcom/msec/net/react/MainReactPackage$1;

    invoke-direct {v0, p0, p1}, Lcom/msec/net/react/MainReactPackage$1;-><init>(Lcom/msec/net/react/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 51
    .local v0, "provider":Ljavax/inject/Provider;
    const-class v1, Lcom/facebook/react/bridge/ModuleSpec;

    .line 53
    .local v1, "clazz":Ljava/lang/Class;
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    :try_start_0
    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Class;

    aput-object v6, v5, v2

    const-class v6, Ljavax/inject/Provider;

    aput-object v6, v5, v4

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 54
    .local v5, "constructor":Ljava/lang/reflect/Constructor;
    new-array v6, v3, [Ljava/lang/Object;

    const-class v7, Lcom/facebook/react/modules/network/NetworkingModule;

    aput-object v7, v6, v2

    aput-object v0, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/react/bridge/ModuleSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 55
    .end local v5    # "constructor":Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v5

    .line 57
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v6, "nativeModuleSpec"

    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Class;

    aput-object v8, v7, v2

    const-class v8, Ljavax/inject/Provider;

    aput-object v8, v7, v4

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 58
    .local v6, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 59
    const/4 v7, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-class v8, Lcom/facebook/react/bridge/NativeModule;

    aput-object v8, v3, v2

    aput-object v0, v3, v4

    invoke-virtual {v6, v7, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/bridge/ModuleSpec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 60
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v2

    .line 61
    .local v2, "e1":Ljava/lang/Exception;
    sget-boolean v3, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 62
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    .end local v2    # "e1":Ljava/lang/Exception;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_0
    return-object p2
.end method


# virtual methods
.method public getNativeModules(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 2
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/bridge/ModuleSpec;",
            ">;"
        }
    .end annotation

    .line 23
    invoke-super {p0, p1}, Lcom/facebook/react/shell/MainReactPackage;->getNativeModules(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;

    move-result-object v0

    .line 24
    .local v0, "nativeModules":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/bridge/ModuleSpec;>;"
    invoke-direct {p0, p1, v0}, Lcom/msec/net/react/MainReactPackage;->adjustModules(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
