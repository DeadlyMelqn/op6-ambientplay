.class Lcom/android/settings/notification/SoundSettings$5;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/SoundSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/SoundSettings;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/notification/SoundSettings$5;->this$0:Lcom/android/settings/notification/SoundSettings;

    .line 823
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 826
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$5;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings/notification/SoundSettings;->-get5(Lcom/android/settings/notification/SoundSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 827
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$5;->this$0:Lcom/android/settings/notification/SoundSettings;

    .line 828
    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings$5;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v2}, Lcom/android/settings/notification/SoundSettings;->-get2(Lcom/android/settings/notification/SoundSettings;)Landroid/content/Context;

    move-result-object v2

    .line 827
    invoke-static {v1, v2, v3}, Lcom/android/settings/notification/SoundSettings;->-wrap2(Lcom/android/settings/notification/SoundSettings;Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 829
    .local v0, "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 830
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$5;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings/notification/SoundSettings;->-get3(Lcom/android/settings/notification/SoundSettings;)Lcom/android/settings/notification/SoundSettings$H;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/android/settings/notification/SoundSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 833
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$5;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings/notification/SoundSettings;->-get4(Lcom/android/settings/notification/SoundSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 834
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$5;->this$0:Lcom/android/settings/notification/SoundSettings;

    .line 835
    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings$5;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v2}, Lcom/android/settings/notification/SoundSettings;->-get2(Lcom/android/settings/notification/SoundSettings;)Landroid/content/Context;

    move-result-object v2

    .line 834
    invoke-static {v1, v2, v4}, Lcom/android/settings/notification/SoundSettings;->-wrap2(Lcom/android/settings/notification/SoundSettings;Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 836
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 837
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$5;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings/notification/SoundSettings;->-get3(Lcom/android/settings/notification/SoundSettings;)Lcom/android/settings/notification/SoundSettings$H;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/android/settings/notification/SoundSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 840
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$5;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings/notification/SoundSettings;->-get1(Lcom/android/settings/notification/SoundSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 842
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$5;->this$0:Lcom/android/settings/notification/SoundSettings;

    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings$5;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v2}, Lcom/android/settings/notification/SoundSettings;->-get2(Lcom/android/settings/notification/SoundSettings;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lcom/android/settings/notification/SoundSettings;->-wrap2(Lcom/android/settings/notification/SoundSettings;Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 843
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 844
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$5;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings/notification/SoundSettings;->-get3(Lcom/android/settings/notification/SoundSettings;)Lcom/android/settings/notification/SoundSettings$H;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/notification/SoundSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 848
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$5;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings/notification/SoundSettings;->-get6(Lcom/android/settings/notification/SoundSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 849
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$5;->this$0:Lcom/android/settings/notification/SoundSettings;

    .line 850
    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings$5;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v2}, Lcom/android/settings/notification/SoundSettings;->-get2(Lcom/android/settings/notification/SoundSettings;)Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x8

    .line 849
    invoke-static {v1, v2, v3}, Lcom/android/settings/notification/SoundSettings;->-wrap2(Lcom/android/settings/notification/SoundSettings;Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 851
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_3

    .line 852
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$5;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings/notification/SoundSettings;->-get3(Lcom/android/settings/notification/SoundSettings;)Lcom/android/settings/notification/SoundSettings$H;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/notification/SoundSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 856
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_3
    return-void
.end method
