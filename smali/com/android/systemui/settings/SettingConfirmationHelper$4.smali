.class final Lcom/android/systemui/settings/SettingConfirmationHelper$4;
.super Ljava/lang/Object;
.source "SettingConfirmationHelper.java"

# interfaces
.implements Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/SettingConfirmationHelper;->prompt(Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$defaultValue:Z

.field final synthetic val$listener:Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;

.field final synthetic val$resolver:Landroid/content/ContentResolver;

.field final synthetic val$settingName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/ContentResolver;ZLcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/SettingConfirmationHelper$4;->val$settingName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/settings/SettingConfirmationHelper$4;->val$resolver:Landroid/content/ContentResolver;

    iput-boolean p3, p0, Lcom/android/systemui/settings/SettingConfirmationHelper$4;->val$defaultValue:Z

    iput-object p4, p0, Lcom/android/systemui/settings/SettingConfirmationHelper$4;->val$listener:Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onSettingConfirm(Ljava/lang/String;)V
    .locals 3
    .param p1, "settingNameTest"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/systemui/settings/SettingConfirmationHelper$4;->val$settingName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    const-string/jumbo v0, "SettingConfirmation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/settings/SettingConfirmationHelper$4;->val$settingName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Ignoring unexpected confirmation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/SettingConfirmationHelper$4;->val$resolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/settings/SettingConfirmationHelper$4;->val$settingName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/settings/SettingConfirmationHelper;->-wrap0(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 229
    iget-boolean v0, p0, Lcom/android/systemui/settings/SettingConfirmationHelper$4;->val$defaultValue:Z

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/android/systemui/settings/SettingConfirmationHelper$4;->val$listener:Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;

    iget-object v1, p0, Lcom/android/systemui/settings/SettingConfirmationHelper$4;->val$settingName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;->onSettingConfirm(Ljava/lang/String;)V

    .line 233
    :cond_1
    return-void
.end method

.method public onSettingDeny(Ljava/lang/String;)V
    .locals 3
    .param p1, "settingNameTest"    # Ljava/lang/String;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/systemui/settings/SettingConfirmationHelper$4;->val$settingName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    const-string/jumbo v0, "SettingConfirmation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/settings/SettingConfirmationHelper$4;->val$settingName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Ignoring unexpected denial"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/SettingConfirmationHelper$4;->val$resolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/settings/SettingConfirmationHelper$4;->val$settingName:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/settings/SettingConfirmationHelper;->-wrap0(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 243
    iget-boolean v0, p0, Lcom/android/systemui/settings/SettingConfirmationHelper$4;->val$defaultValue:Z

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/android/systemui/settings/SettingConfirmationHelper$4;->val$listener:Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;

    iget-object v1, p0, Lcom/android/systemui/settings/SettingConfirmationHelper$4;->val$settingName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;->onSettingDeny(Ljava/lang/String;)V

    .line 247
    :cond_1
    return-void
.end method
