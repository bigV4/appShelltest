.class Lcom/test/demo/androidlogindemo/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/test/demo/androidlogindemo/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/test/demo/androidlogindemo/MainActivity;


# direct methods
.method constructor <init>(Lcom/test/demo/androidlogindemo/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/test/demo/androidlogindemo/MainActivity;

    .line 77
    iput-object p1, p0, Lcom/test/demo/androidlogindemo/MainActivity$2;->this$0:Lcom/test/demo/androidlogindemo/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f070097

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 85
    :pswitch_0
    iget-object v0, p0, Lcom/test/demo/androidlogindemo/MainActivity$2;->this$0:Lcom/test/demo/androidlogindemo/MainActivity;

    invoke-virtual {v0}, Lcom/test/demo/androidlogindemo/MainActivity;->userLogout()V

    .line 86
    goto :goto_0

    .line 82
    :pswitch_1
    iget-object v0, p0, Lcom/test/demo/androidlogindemo/MainActivity$2;->this$0:Lcom/test/demo/androidlogindemo/MainActivity;

    invoke-virtual {v0}, Lcom/test/demo/androidlogindemo/MainActivity;->userLogin()V

    .line 83
    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/test/demo/androidlogindemo/MainActivity$2;->this$0:Lcom/test/demo/androidlogindemo/MainActivity;

    invoke-virtual {v0}, Lcom/test/demo/androidlogindemo/MainActivity;->webPage()V

    .line 91
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f07004e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
