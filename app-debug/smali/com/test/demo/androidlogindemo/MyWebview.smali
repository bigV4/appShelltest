.class public Lcom/test/demo/androidlogindemo/MyWebview;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MyWebview.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 13
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v0, 0x7f090028

    invoke-virtual {p0, v0}, Lcom/test/demo/androidlogindemo/MyWebview;->setContentView(I)V

    .line 16
    const v0, 0x7f070098

    invoke-virtual {p0, v0}, Lcom/test/demo/androidlogindemo/MyWebview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 18
    .local v0, "webview":Landroid/webkit/WebView;
    invoke-virtual {p0}, Lcom/test/demo/androidlogindemo/MyWebview;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 19
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 20
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 21
    const-string v3, "url"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 22
    .local v3, "url":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 23
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 26
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method
