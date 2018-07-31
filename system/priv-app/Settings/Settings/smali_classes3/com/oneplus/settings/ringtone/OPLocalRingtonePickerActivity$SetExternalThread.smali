.class Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;
.super Ljava/lang/Thread;
.source "OPLocalRingtonePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetExternalThread"
.end annotation


# instance fields
.field private isClose:Z

.field private mPreference:Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;

.field final synthetic this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;
    .param p2, "data"    # Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 357
    iput-object p2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->mPreference:Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;

    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->isClose:Z

    .line 359
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 363
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->mPreference:Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;

    invoke-static {v2, v3}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->-wrap0(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;)Landroid/net/Uri;

    move-result-object v1

    .line 364
    .local v1, "uriItem":Landroid/net/Uri;
    iget-boolean v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->isClose:Z

    if-nez v2, :cond_0

    if-nez v1, :cond_1

    .line 365
    :cond_0
    return-void

    .line 364
    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    iget-boolean v2, v2, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mContactsRingtone:Z

    if-nez v2, :cond_0

    .line 367
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-virtual {v2}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->getSimId()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 369
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-virtual {v2}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 368
    invoke-static {v2, v4, v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 377
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    iget-boolean v2, v2, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mHasDefaultItem:Z

    if-nez v2, :cond_6

    .line 378
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    iget-object v2, v2, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 379
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-virtual {v2}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 380
    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    iget v3, v3, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mType:I

    .line 379
    invoke-static {v2, v1, v3}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->updateDb(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 382
    :cond_3
    const-string/jumbo v2, "chenhl"

    const-string/jumbo v3, "set ringtone ok!"

    invoke-static {v2, v3}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :goto_1
    return-void

    .line 370
    :cond_4
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-virtual {v2}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->getSimId()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 372
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-virtual {v2}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    .line 371
    invoke-static {v2, v3, v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    .line 373
    :cond_5
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-virtual {v2}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->isThreePart()Z

    move-result v2

    if-nez v2, :cond_2

    .line 375
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-virtual {v2}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    iget v3, v3, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mType:I

    .line 374
    invoke-static {v2, v3, v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    .line 384
    :cond_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 385
    .local v0, "resultIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.ringtone.PICKED_URI"

    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    iget-object v3, v3, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 386
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->isClose:Z

    .line 392
    return-void
.end method
