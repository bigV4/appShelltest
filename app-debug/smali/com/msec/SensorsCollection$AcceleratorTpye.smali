.class Lcom/msec/SensorsCollection$AcceleratorTpye;
.super Ljava/lang/Object;
.source "SensorsCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/msec/SensorsCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AcceleratorTpye"
.end annotation


# static fields
.field private static final GRAVITY:Ljava/lang/String; = "1"

.field private static final LINEAR:Ljava/lang/String; = "0"


# instance fields
.field final synthetic this$0:Lcom/msec/SensorsCollection;


# direct methods
.method private constructor <init>(Lcom/msec/SensorsCollection;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/msec/SensorsCollection$AcceleratorTpye;->this$0:Lcom/msec/SensorsCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
