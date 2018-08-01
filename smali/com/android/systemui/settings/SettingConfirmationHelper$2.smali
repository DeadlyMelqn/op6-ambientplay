.class final Lcom/android/systemui/settings/SettingConfirmationHelper$2;
.super Ljava/lang/Object;
.source "SettingConfirmationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/SettingConfirmationHelper;->prompt(Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;

.field final synthetic val$settingName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/SettingConfirmationHelper$2;->val$listener:Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;

    iput-object p2, p0, Lcom/android/systemui/settings/SettingConfirmationHelper$2;->val$settingName:Ljava/lang/String;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/systemui/settings/SettingConfirmationHelper$2;->val$listener:Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;

    iget-object v1, p0, Lcom/android/systemui/settings/SettingConfirmationHelper$2;->val$settingName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;->onSettingDeny(Ljava/lang/String;)V

    .line 198
    return-void
.end method
