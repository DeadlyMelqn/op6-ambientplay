.class Lcom/android/settings/location/LocationSettings$6;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/LocationSettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationSettings;

.field final synthetic val$activity:Lcom/android/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationSettings;Lcom/android/settings/SettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/location/LocationSettings;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/location/LocationSettings$6;->this$0:Lcom/android/settings/location/LocationSettings;

    iput-object p2, p0, Lcom/android/settings/location/LocationSettings$6;->val$activity:Lcom/android/settings/SettingsActivity;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v2, 0x0

    .line 239
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings$6;->val$activity:Lcom/android/settings/SettingsActivity;

    .line 240
    const-class v1, Lcom/android/settings/location/LocationMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 241
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings$6;->this$0:Lcom/android/settings/location/LocationSettings;

    const v3, 0x7f0f0a81

    .line 242
    const/4 v6, 0x0

    move-object v4, v2

    .line 239
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 243
    const/4 v0, 0x1

    return v0
.end method
