.class Lcom/test/demo/androidlogindemo/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/test/demo/androidlogindemo/MainActivity;->userLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/test/demo/androidlogindemo/MainActivity;

.field final synthetic val$fData:Ljava/lang/String;

.field final synthetic val$fServer:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/test/demo/androidlogindemo/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/test/demo/androidlogindemo/MainActivity;

    .line 104
    iput-object p1, p0, Lcom/test/demo/androidlogindemo/MainActivity$3;->this$0:Lcom/test/demo/androidlogindemo/MainActivity;

    iput-object p2, p0, Lcom/test/demo/androidlogindemo/MainActivity$3;->val$fServer:Ljava/lang/String;

    iput-object p3, p0, Lcom/test/demo/androidlogindemo/MainActivity$3;->val$fData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/test/demo/androidlogindemo/MainActivity$3;->this$0:Lcom/test/demo/androidlogindemo/MainActivity;

    iget-object v1, p0, Lcom/test/demo/androidlogindemo/MainActivity$3;->val$fServer:Ljava/lang/String;

    iget-object v2, p0, Lcom/test/demo/androidlogindemo/MainActivity$3;->val$fData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/test/demo/androidlogindemo/MainActivity;->postData(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method
