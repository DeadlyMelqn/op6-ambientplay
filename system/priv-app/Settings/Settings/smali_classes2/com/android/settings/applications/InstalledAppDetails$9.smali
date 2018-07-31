.class Lcom/android/settings/applications/InstalledAppDetails$9;
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
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$9;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    .line 1062
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 1065
    const-class v0, Lcom/android/settings/applications/PictureInPictureDetails;

    .line 1066
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails$9;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v2, v1, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    .line 1067
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails$9;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v1, v1, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails$9;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    .line 1068
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails$9;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Lcom/android/settings/applications/InstalledAppDetails;->getMetricsCategory()I

    move-result v6

    .line 1066
    const v1, 0x7f0f1234

    .line 1068
    const/4 v5, -0x1

    .line 1065
    invoke-static/range {v0 .. v6}, Lcom/android/settings/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroid/app/Fragment;II)V

    .line 1069
    const/4 v0, 0x1

    return v0
.end method
