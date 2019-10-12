.class Lcom/test/demo/androidlogindemo/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/test/demo/androidlogindemo/MainActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 56
    iput-object p1, p0, Lcom/test/demo/androidlogindemo/MainActivity$1;->this$0:Lcom/test/demo/androidlogindemo/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 59
    sget-object v0, Lcom/test/demo/androidlogindemo/MainActivity;->secureSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 60
    return-void
.end method
