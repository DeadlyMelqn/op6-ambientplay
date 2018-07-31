.class Lcom/android/settings/location/LocationSettings$7;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$appEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field final synthetic val$pref:Lcom/oneplus/settings/ui/OPButtonPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationSettings;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/oneplus/settings/ui/OPButtonPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/location/LocationSettings;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/location/LocationSettings$7;->this$0:Lcom/android/settings/location/LocationSettings;

    iput-object p2, p0, Lcom/android/settings/location/LocationSettings$7;->val$appEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iput-object p3, p0, Lcom/android/settings/location/LocationSettings$7;->val$pref:Lcom/oneplus/settings/ui/OPButtonPreference;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings$7;->this$0:Lcom/android/settings/location/LocationSettings;

    iget-object v1, p0, Lcom/android/settings/location/LocationSettings$7;->val$appEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$7;->val$pref:Lcom/oneplus/settings/ui/OPButtonPreference;

    invoke-static {v0, v1, v2}, Lcom/android/settings/location/LocationSettings;->-wrap2(Lcom/android/settings/location/LocationSettings;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/oneplus/settings/ui/OPButtonPreference;)V

    .line 291
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings$7;->val$pref:Lcom/oneplus/settings/ui/OPButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPButtonPreference;->setButtonEnable(Z)V

    .line 292
    return-void
.end method
