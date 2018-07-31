.class Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$2;
.super Ljava/lang/Object;
.source "OPRingtoneBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 262
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->-get1(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 263
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    .line 264
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 263
    invoke-static {v1, v2}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 273
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    iget-object v0, v0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$2$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$2$1;-><init>(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 280
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->-get1(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 266
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    .line 267
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 266
    invoke-static {v1, v2}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    goto :goto_0

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    .line 270
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 271
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    iget v2, v2, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    .line 269
    invoke-static {v1, v2}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    goto :goto_0
.end method
