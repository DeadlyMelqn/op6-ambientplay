.class Lcom/android/settings/applications/InstalledAppDetails$10;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/InstalledAppDetails;->addDynamicPrefs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$10;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    .line 1078
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$10;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    const-class v1, Lcom/android/settings/applications/ExternalSourcesDetails;

    .line 1082
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$10;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    const v3, 0x7f0f018b

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1081
    invoke-static {v0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails;->-wrap2(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/Class;Ljava/lang/CharSequence;)V

    .line 1083
    const/4 v0, 0x1

    return v0
.end method
