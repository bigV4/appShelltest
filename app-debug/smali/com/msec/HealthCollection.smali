.class Lcom/msec/HealthCollection;
.super Ljava/lang/Object;
.source "HealthCollection.java"

# interfaces
.implements Lcom/msec/SysInfoCollection;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end()Ljava/lang/String;
    .locals 1

    .line 14
    const-string v0, "::"

    return-object v0
.end method

.method public start(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 10
    iput-object p1, p0, Lcom/msec/HealthCollection;->mContext:Landroid/content/Context;

    .line 11
    return-void
.end method
