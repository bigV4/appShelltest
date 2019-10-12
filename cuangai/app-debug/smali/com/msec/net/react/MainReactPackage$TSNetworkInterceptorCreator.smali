.class Lcom/msec/net/react/MainReactPackage$TSNetworkInterceptorCreator;
.super Ljava/lang/Object;
.source "MainReactPackage.java"

# interfaces
.implements Lcom/facebook/react/modules/network/NetworkInterceptorCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/msec/net/react/MainReactPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TSNetworkInterceptorCreator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/msec/net/react/MainReactPackage;


# direct methods
.method constructor <init>(Lcom/msec/net/react/MainReactPackage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/msec/net/react/MainReactPackage;

    .line 70
    iput-object p1, p0, Lcom/msec/net/react/MainReactPackage$TSNetworkInterceptorCreator;->this$0:Lcom/msec/net/react/MainReactPackage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lokhttp3/Interceptor;
    .locals 1

    .line 73
    new-instance v0, Lcom/msec/net/okhttp3/TSInterceptor;

    invoke-direct {v0}, Lcom/msec/net/okhttp3/TSInterceptor;-><init>()V

    return-object v0
.end method
