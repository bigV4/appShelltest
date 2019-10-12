.class Lcom/msec/net/react/MainReactPackage$1;
.super Ljava/lang/Object;
.source "MainReactPackage.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/msec/net/react/MainReactPackage;->getCustomNetworkingModule(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/bridge/ModuleSpec;)Lcom/facebook/react/bridge/ModuleSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lcom/facebook/react/bridge/NativeModule;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/msec/net/react/MainReactPackage;

.field final synthetic val$context:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method constructor <init>(Lcom/msec/net/react/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/msec/net/react/MainReactPackage;

    .line 42
    iput-object p1, p0, Lcom/msec/net/react/MainReactPackage$1;->this$0:Lcom/msec/net/react/MainReactPackage;

    iput-object p2, p0, Lcom/msec/net/react/MainReactPackage$1;->val$context:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/facebook/react/bridge/NativeModule;
    .locals 3

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v0, "myNetworkInterceptorCreator":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/modules/network/NetworkInterceptorCreator;>;"
    new-instance v1, Lcom/msec/net/react/MainReactPackage$TSNetworkInterceptorCreator;

    iget-object v2, p0, Lcom/msec/net/react/MainReactPackage$1;->this$0:Lcom/msec/net/react/MainReactPackage;

    invoke-direct {v1, v2}, Lcom/msec/net/react/MainReactPackage$TSNetworkInterceptorCreator;-><init>(Lcom/msec/net/react/MainReactPackage;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v1, Lcom/facebook/react/modules/network/NetworkingModule;

    iget-object v2, p0, Lcom/msec/net/react/MainReactPackage$1;->val$context:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-direct {v1, v2, v0}, Lcom/facebook/react/modules/network/NetworkingModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;)V

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/msec/net/react/MainReactPackage$1;->get()Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    return-object v0
.end method
