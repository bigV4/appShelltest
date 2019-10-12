.class public Lcom/test/demo/androidlogindemo/LoginSuccess;
.super Landroid/support/v7/app/AppCompatActivity;
.source "LoginSuccess.java"


# instance fields
.field private welcome:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 13
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v0, 0x7f09001d

    invoke-virtual {p0, v0}, Lcom/test/demo/androidlogindemo/LoginSuccess;->setContentView(I)V

    .line 15
    const v0, 0x7f07008c

    invoke-virtual {p0, v0}, Lcom/test/demo/androidlogindemo/LoginSuccess;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/test/demo/androidlogindemo/LoginSuccess;->welcome:Landroid/widget/TextView;

    .line 16
    invoke-virtual {p0}, Lcom/test/demo/androidlogindemo/LoginSuccess;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 17
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 18
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 19
    const-string v2, "name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 20
    .local v2, "name":Ljava/lang/String;
    const-string v3, "sex"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "male"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "\u7537"

    goto :goto_0

    :cond_0
    const-string v3, "\u5973"

    .line 21
    .local v3, "sex":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_1

    .line 22
    iget-object v4, p0, Lcom/test/demo/androidlogindemo/LoginSuccess;->welcome:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " \u60a8\u597d\uff01\u6b22\u8fce\u56de\u6765\u3002\n\u8d26\u6237\u4fe1\u606f\uff1a\n\u59d3\u540d\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n\u5e74\u9f84\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "age"

    .line 25
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v6, "\u6027\u522b\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n\u8d44\u91d1\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "amount"

    .line 27
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 22
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "sex":Ljava/lang/String;
    :cond_1
    return-void
.end method
