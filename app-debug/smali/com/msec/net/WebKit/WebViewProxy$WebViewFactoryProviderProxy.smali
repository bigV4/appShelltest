.class Lcom/msec/net/WebKit/WebViewProxy$WebViewFactoryProviderProxy;
.super Ljava/lang/Object;
.source "WebViewProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/msec/net/WebKit/WebViewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebViewFactoryProviderProxy"
.end annotation


# instance fields
.field private mFactoryProvider:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/Object;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/msec/net/WebKit/WebViewProxy$WebViewFactoryProviderProxy;->mFactoryProvider:Ljava/lang/Object;

    .line 46
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewProxy$WebViewFactoryProviderProxy;->mFactoryProvider:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    .local v0, "obj":Ljava/lang/Object;
    const-string v1, "createWebView"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 53
    const-string v1, "WebViewFactoryProviderProxy createWebView"

    invoke-static {v1}, Lcom/msec/MLog;->logd(Ljava/lang/String;)V

    .line 54
    const/4 v1, 0x0

    aget-object v2, p3, v1

    instance-of v2, v2, Lcom/msec/net/WebKit/WebView;

    if-nez v2, :cond_0

    .line 55
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    .line 56
    .local v2, "interfaces":[Ljava/lang/Class;
    const-string v3, "android.webkit.WebViewProvider"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v1

    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-instance v4, Lcom/msec/net/WebKit/WebViewProxy$WebViewProviderProxy;

    aget-object v1, p3, v1

    check-cast v1, Landroid/webkit/WebView;

    invoke-direct {v4, v1, v0}, Lcom/msec/net/WebKit/WebViewProxy$WebViewProviderProxy;-><init>(Landroid/webkit/WebView;Ljava/lang/Object;)V

    invoke-static {v3, v2, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    .end local v2    # "interfaces":[Ljava/lang/Class;
    :cond_0
    return-object v0
.end method
