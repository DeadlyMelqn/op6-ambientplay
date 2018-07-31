.class Lcom/android/settings/CryptKeeper$5;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CryptKeeper;->setupUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field owner_info:Ljava/lang/String;

.field passwordType:I

.field password_visible:Z

.field pattern_visible:Z

.field final synthetic this$0:Lcom/android/settings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/CryptKeeper$5;->this$0:Lcom/android/settings/CryptKeeper;

    .line 548
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 549
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/CryptKeeper$5;->passwordType:I

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 554
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    .line 557
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$5;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-wrap0(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IStorageManager;

    move-result-object v1

    .line 558
    .local v1, "service":Landroid/os/storage/IStorageManager;
    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->getPasswordType()I

    move-result v2

    iput v2, p0, Lcom/android/settings/CryptKeeper$5;->passwordType:I

    .line 559
    const-string/jumbo v2, "OwnerInfo"

    invoke-interface {v1, v2}, Landroid/os/storage/IStorageManager;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/CryptKeeper$5;->owner_info:Ljava/lang/String;

    .line 560
    const-string/jumbo v2, "0"

    const-string/jumbo v3, "PatternVisible"

    invoke-interface {v1, v3}, Landroid/os/storage/IStorageManager;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/CryptKeeper$5;->pattern_visible:Z

    .line 561
    const-string/jumbo v2, "0"

    const-string/jumbo v3, "PasswordVisible"

    invoke-interface {v1, v3}, Landroid/os/storage/IStorageManager;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/CryptKeeper$5;->password_visible:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    .end local v1    # "service":Landroid/os/storage/IStorageManager;
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 562
    :catch_0
    move-exception v0

    .line 563
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CryptKeeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error calling mount service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 569
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper$5;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 7
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 571
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$5;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v2}, Lcom/android/settings/CryptKeeper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "show_password"

    .line 572
    iget-boolean v2, p0, Lcom/android/settings/CryptKeeper$5;->password_visible:Z

    if-eqz v2, :cond_2

    move v2, v3

    .line 571
    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 574
    iget v2, p0, Lcom/android/settings/CryptKeeper$5;->passwordType:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_3

    .line 575
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$5;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x7f04005c

    invoke-virtual {v2, v5}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 576
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$5;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x7f0f0d8d

    invoke-static {v2, v5}, Lcom/android/settings/CryptKeeper;->-set2(Lcom/android/settings/CryptKeeper;I)I

    .line 585
    :goto_1
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$5;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x7f0a0125

    invoke-virtual {v2, v5}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 586
    .local v1, "status":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$5;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get3(Lcom/android/settings/CryptKeeper;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 588
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$5;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x7f0a012d

    invoke-virtual {v2, v5}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 589
    .local v0, "ownerInfo":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$5;->owner_info:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 594
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$5;->this$0:Lcom/android/settings/CryptKeeper;

    iget v3, p0, Lcom/android/settings/CryptKeeper$5;->passwordType:I

    invoke-static {v2, v3}, Lcom/android/settings/CryptKeeper;->-wrap6(Lcom/android/settings/CryptKeeper;I)V

    .line 597
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$5;->this$0:Lcom/android/settings/CryptKeeper;

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x400000

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 599
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$5;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get2(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 600
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$5;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get2(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/CryptKeeper$5;->pattern_visible:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 602
    :cond_0
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$5;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get1(Lcom/android/settings/CryptKeeper;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 604
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$5;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2, v4}, Lcom/android/settings/CryptKeeper;->-wrap7(Lcom/android/settings/CryptKeeper;Z)V

    .line 605
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$5;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-wrap2(Lcom/android/settings/CryptKeeper;)V

    .line 608
    :cond_1
    return-void

    .end local v0    # "ownerInfo":Landroid/widget/TextView;
    .end local v1    # "status":Landroid/widget/TextView;
    :cond_2
    move v2, v4

    .line 572
    goto :goto_0

    .line 577
    :cond_3
    iget v2, p0, Lcom/android/settings/CryptKeeper$5;->passwordType:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_4

    .line 578
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$5;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x7f04005a

    invoke-virtual {v2, v5}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 579
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$5;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2, v4}, Lcom/android/settings/CryptKeeper;->-wrap7(Lcom/android/settings/CryptKeeper;Z)V

    .line 580
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$5;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x7f0f0d8e

    invoke-static {v2, v5}, Lcom/android/settings/CryptKeeper;->-set2(Lcom/android/settings/CryptKeeper;I)I

    goto :goto_1

    .line 582
    :cond_4
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$5;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x7f040058

    invoke-virtual {v2, v5}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 583
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$5;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x7f0f0d8c

    invoke-static {v2, v5}, Lcom/android/settings/CryptKeeper;->-set2(Lcom/android/settings/CryptKeeper;I)I

    goto/16 :goto_1
.end method
