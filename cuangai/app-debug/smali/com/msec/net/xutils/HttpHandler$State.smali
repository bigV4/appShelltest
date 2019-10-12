.class public final enum Lcom/msec/net/xutils/HttpHandler$State;
.super Ljava/lang/Enum;
.source "HttpHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/msec/net/xutils/HttpHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/msec/net/xutils/HttpHandler$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/msec/net/xutils/HttpHandler$State;

.field public static final enum CANCELLED:Lcom/msec/net/xutils/HttpHandler$State;

.field public static final enum FAILURE:Lcom/msec/net/xutils/HttpHandler$State;

.field public static final enum LOADING:Lcom/msec/net/xutils/HttpHandler$State;

.field public static final enum STARTED:Lcom/msec/net/xutils/HttpHandler$State;

.field public static final enum SUCCESS:Lcom/msec/net/xutils/HttpHandler$State;

.field public static final enum WAITING:Lcom/msec/net/xutils/HttpHandler$State;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 321
    new-instance v0, Lcom/msec/net/xutils/HttpHandler$State;

    const-string v1, "WAITING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/msec/net/xutils/HttpHandler$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/msec/net/xutils/HttpHandler$State;->WAITING:Lcom/msec/net/xutils/HttpHandler$State;

    new-instance v0, Lcom/msec/net/xutils/HttpHandler$State;

    const-string v1, "STARTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/msec/net/xutils/HttpHandler$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/msec/net/xutils/HttpHandler$State;->STARTED:Lcom/msec/net/xutils/HttpHandler$State;

    new-instance v0, Lcom/msec/net/xutils/HttpHandler$State;

    const-string v1, "LOADING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/msec/net/xutils/HttpHandler$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/msec/net/xutils/HttpHandler$State;->LOADING:Lcom/msec/net/xutils/HttpHandler$State;

    new-instance v0, Lcom/msec/net/xutils/HttpHandler$State;

    const-string v1, "FAILURE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/msec/net/xutils/HttpHandler$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/msec/net/xutils/HttpHandler$State;->FAILURE:Lcom/msec/net/xutils/HttpHandler$State;

    new-instance v0, Lcom/msec/net/xutils/HttpHandler$State;

    const-string v1, "CANCELLED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/msec/net/xutils/HttpHandler$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/msec/net/xutils/HttpHandler$State;->CANCELLED:Lcom/msec/net/xutils/HttpHandler$State;

    new-instance v0, Lcom/msec/net/xutils/HttpHandler$State;

    const-string v1, "SUCCESS"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/msec/net/xutils/HttpHandler$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/msec/net/xutils/HttpHandler$State;->SUCCESS:Lcom/msec/net/xutils/HttpHandler$State;

    .line 320
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/msec/net/xutils/HttpHandler$State;

    sget-object v1, Lcom/msec/net/xutils/HttpHandler$State;->WAITING:Lcom/msec/net/xutils/HttpHandler$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/msec/net/xutils/HttpHandler$State;->STARTED:Lcom/msec/net/xutils/HttpHandler$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/msec/net/xutils/HttpHandler$State;->LOADING:Lcom/msec/net/xutils/HttpHandler$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/msec/net/xutils/HttpHandler$State;->FAILURE:Lcom/msec/net/xutils/HttpHandler$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/msec/net/xutils/HttpHandler$State;->CANCELLED:Lcom/msec/net/xutils/HttpHandler$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/msec/net/xutils/HttpHandler$State;->SUCCESS:Lcom/msec/net/xutils/HttpHandler$State;

    aput-object v1, v0, v7

    sput-object v0, Lcom/msec/net/xutils/HttpHandler$State;->$VALUES:[Lcom/msec/net/xutils/HttpHandler$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 324
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 322
    const/4 p1, 0x0

    iput p1, p0, Lcom/msec/net/xutils/HttpHandler$State;->value:I

    .line 325
    iput p3, p0, Lcom/msec/net/xutils/HttpHandler$State;->value:I

    .line 326
    return-void
.end method

.method public static valueOf(I)Lcom/msec/net/xutils/HttpHandler$State;
    .locals 1
    .param p0, "value"    # I

    .line 329
    packed-switch p0, :pswitch_data_0

    .line 343
    sget-object v0, Lcom/msec/net/xutils/HttpHandler$State;->FAILURE:Lcom/msec/net/xutils/HttpHandler$State;

    return-object v0

    .line 341
    :pswitch_0
    sget-object v0, Lcom/msec/net/xutils/HttpHandler$State;->SUCCESS:Lcom/msec/net/xutils/HttpHandler$State;

    return-object v0

    .line 339
    :pswitch_1
    sget-object v0, Lcom/msec/net/xutils/HttpHandler$State;->CANCELLED:Lcom/msec/net/xutils/HttpHandler$State;

    return-object v0

    .line 337
    :pswitch_2
    sget-object v0, Lcom/msec/net/xutils/HttpHandler$State;->FAILURE:Lcom/msec/net/xutils/HttpHandler$State;

    return-object v0

    .line 335
    :pswitch_3
    sget-object v0, Lcom/msec/net/xutils/HttpHandler$State;->LOADING:Lcom/msec/net/xutils/HttpHandler$State;

    return-object v0

    .line 333
    :pswitch_4
    sget-object v0, Lcom/msec/net/xutils/HttpHandler$State;->STARTED:Lcom/msec/net/xutils/HttpHandler$State;

    return-object v0

    .line 331
    :pswitch_5
    sget-object v0, Lcom/msec/net/xutils/HttpHandler$State;->WAITING:Lcom/msec/net/xutils/HttpHandler$State;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/msec/net/xutils/HttpHandler$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 320
    const-class v0, Lcom/msec/net/xutils/HttpHandler$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/msec/net/xutils/HttpHandler$State;

    return-object v0
.end method

.method public static values()[Lcom/msec/net/xutils/HttpHandler$State;
    .locals 1

    .line 320
    sget-object v0, Lcom/msec/net/xutils/HttpHandler$State;->$VALUES:[Lcom/msec/net/xutils/HttpHandler$State;

    invoke-virtual {v0}, [Lcom/msec/net/xutils/HttpHandler$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/msec/net/xutils/HttpHandler$State;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 348
    iget v0, p0, Lcom/msec/net/xutils/HttpHandler$State;->value:I

    return v0
.end method
