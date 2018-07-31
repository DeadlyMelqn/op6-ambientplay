.class Lcom/android/settings/applications/InstalledAppDetails$3;
.super Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/InstalledAppDetails;
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
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$3;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    .line 1384
    invoke-direct {p0}, Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPermissionSummaryResult(IIILjava/util/List;)V
    .locals 8
    .param p1, "standardGrantedPermissionCount"    # I
    .param p2, "requestedPermissionCount"    # I
    .param p3, "additionalGrantedPermissionCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "grantedGroupLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1389
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails$3;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v4}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1390
    return-void

    .line 1392
    :cond_0
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails$3;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v4}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1393
    .local v2, "res":Landroid/content/res/Resources;
    const/4 v3, 0x0

    .line 1395
    .local v3, "summary":Ljava/lang/CharSequence;
    if-nez p2, :cond_2

    .line 1397
    const v4, 0x7f0f1037

    .line 1396
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1398
    .local v3, "summary":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails$3;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v4}, Lcom/android/settings/applications/InstalledAppDetails;->-get3(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 1399
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails$3;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v4}, Lcom/android/settings/applications/InstalledAppDetails;->-get3(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 1418
    :goto_0
    sget-boolean v0, Landroid/os/Build$VERSION;->IS_CTA_BUILD:Z

    .line 1419
    .local v0, "isCtaVersion":Z
    if-nez v0, :cond_1

    .line 1420
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails$3;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v4}, Lcom/android/settings/applications/InstalledAppDetails;->-get3(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1423
    :cond_1
    return-void

    .line 1401
    .end local v0    # "isCtaVersion":Z
    .local v3, "summary":Ljava/lang/CharSequence;
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1402
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-lez p3, :cond_3

    .line 1404
    new-array v4, v7, [Ljava/lang/Object;

    .line 1406
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 1405
    const v5, 0x7f13001d

    .line 1404
    invoke-virtual {v2, v5, p3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1408
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 1410
    const v4, 0x7f0f1036

    .line 1409
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1414
    .local v3, "summary":Ljava/lang/CharSequence;
    :goto_1
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails$3;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v4}, Lcom/android/settings/applications/InstalledAppDetails;->-get3(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails$3;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 1415
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails$3;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v4}, Lcom/android/settings/applications/InstalledAppDetails;->-get3(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 1412
    .local v3, "summary":Ljava/lang/CharSequence;
    :cond_4
    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    .local v3, "summary":Ljava/lang/CharSequence;
    goto :goto_1
.end method
