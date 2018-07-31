.class Lcom/android/settings/location/LocationSettings$3;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/LocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/location/LocationSettings;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/location/LocationSettings$3;->this$0:Lcom/android/settings/location/LocationSettings;

    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 622
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings$3;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v1}, Lcom/android/settings/location/LocationSettings;->-get2(Lcom/android/settings/location/LocationSettings;)Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->isChecked()Z

    move-result v0

    .line 623
    .local v0, "switchState":Z
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings$3;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v1}, Lcom/android/settings/location/LocationSettings;->-get3(Lcom/android/settings/location/LocationSettings;)Landroid/os/UserManager;

    move-result-object v1

    const-string/jumbo v2, "no_share_location"

    .line 624
    xor-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/android/settings/location/LocationSettings$3;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v4}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Landroid/os/UserHandle;

    move-result-object v4

    .line 623
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 625
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings$3;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v1}, Lcom/android/settings/location/LocationSettings;->-get2(Lcom/android/settings/location/LocationSettings;)Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 626
    const v1, 0x7f0f0ff8

    .line 625
    :goto_0
    invoke-virtual {v2, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setSummary(I)V

    .line 627
    const/4 v1, 0x1

    return v1

    .line 626
    :cond_0
    const v1, 0x7f0f0ff9

    goto :goto_0
.end method
