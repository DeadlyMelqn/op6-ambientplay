.class Lcom/android/settings/notification/ZenModeRuleSettingsBase$1;
.super Ljava/lang/Object;
.source "ZenModeRuleSettingsBase.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeRuleSettingsBase;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeRuleSettingsBase;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeRuleSettingsBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/ZenModeRuleSettingsBase;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase$1;->this$0:Lcom/android/settings/notification/ZenModeRuleSettingsBase;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase$1;->this$0:Lcom/android/settings/notification/ZenModeRuleSettingsBase;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->-wrap0(Lcom/android/settings/notification/ZenModeRuleSettingsBase;)V

    .line 103
    const/4 v0, 0x1

    return v0
.end method