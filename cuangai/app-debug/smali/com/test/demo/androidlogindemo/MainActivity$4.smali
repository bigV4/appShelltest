.class Lcom/test/demo/androidlogindemo/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/test/demo/androidlogindemo/MainActivity;->makeToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/test/demo/androidlogindemo/MainActivity;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/test/demo/androidlogindemo/MainActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/test/demo/androidlogindemo/MainActivity;

    .line 221
    iput-object p1, p0, Lcom/test/demo/androidlogindemo/MainActivity$4;->this$0:Lcom/test/demo/androidlogindemo/MainActivity;

    iput-object p2, p0, Lcom/test/demo/androidlogindemo/MainActivity$4;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/test/demo/androidlogindemo/MainActivity$4;->this$0:Lcom/test/demo/androidlogindemo/MainActivity;

    invoke-static {v0}, Lcom/test/demo/androidlogindemo/MainActivity;->access$000(Lcom/test/demo/androidlogindemo/MainActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/test/demo/androidlogindemo/MainActivity$4;->val$msg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 224
    return-void
.end method
