.class Lcom/android/settings/notification/NotificationSettingsBase$2;
.super Ljava/lang/Object;
.source "NotificationSettingsBase.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationSettingsBase;->setupImportanceToggle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationSettingsBase;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationSettingsBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/NotificationSettingsBase;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase$2;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 320
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, -0x3e8

    .line 321
    .local v0, "importance":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase$2;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v3, v3, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v3, v0}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 322
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase$2;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v3, v3, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 323
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase$2;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v3, v3, Lcom/android/settings/notification/NotificationSettingsBase;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettingsBase$2;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v4, v4, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettingsBase$2;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget v5, v5, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    iget-object v6, p0, Lcom/android/settings/notification/NotificationSettingsBase$2;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v6, v6, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/settings/notification/NotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 324
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase$2;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettingsBase$2;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v4, v4, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    if-nez v4, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v3, v1}, Lcom/android/settings/notification/NotificationSettingsBase;->updateDependents(Z)V

    .line 325
    return v2

    .line 320
    .end local v0    # "importance":I
    :cond_1
    const/4 v0, 0x2

    .restart local v0    # "importance":I
    goto :goto_0
.end method
