.class public Lcom/android/settings/applications/DefaultAppInfo;
.super Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;
.source "DefaultAppInfo.java"


# instance fields
.field public final componentName:Landroid/content/ComponentName;

.field protected final mPm:Lcom/android/settings/applications/PackageManagerWrapper;

.field public final packageItemInfo:Landroid/content/pm/PackageItemInfo;

.field public final summary:Ljava/lang/String;

.field public final userId:I


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/PackageManagerWrapper;ILandroid/content/ComponentName;)V
    .locals 1
    .param p1, "pm"    # Lcom/android/settings/applications/PackageManagerWrapper;
    .param p2, "uid"    # I
    .param p3, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/applications/DefaultAppInfo;-><init>(Lcom/android/settings/applications/PackageManagerWrapper;ILandroid/content/ComponentName;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/applications/PackageManagerWrapper;ILandroid/content/ComponentName;Ljava/lang/String;)V
    .locals 6
    .param p1, "pm"    # Lcom/android/settings/applications/PackageManagerWrapper;
    .param p2, "uid"    # I
    .param p3, "cn"    # Landroid/content/ComponentName;
    .param p4, "summary"    # Ljava/lang/String;

    .prologue
    .line 49
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/DefaultAppInfo;-><init>(Lcom/android/settings/applications/PackageManagerWrapper;ILandroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/applications/PackageManagerWrapper;ILandroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "pm"    # Lcom/android/settings/applications/PackageManagerWrapper;
    .param p2, "uid"    # I
    .param p3, "cn"    # Landroid/content/ComponentName;
    .param p4, "summary"    # Ljava/lang/String;
    .param p5, "enabled"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p5}, Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;-><init>(Z)V

    .line 55
    iput-object p1, p0, Lcom/android/settings/applications/DefaultAppInfo;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/DefaultAppInfo;->packageItemInfo:Landroid/content/pm/PackageItemInfo;

    .line 57
    iput p2, p0, Lcom/android/settings/applications/DefaultAppInfo;->userId:I

    .line 58
    iput-object p3, p0, Lcom/android/settings/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    .line 59
    iput-object p4, p0, Lcom/android/settings/applications/DefaultAppInfo;->summary:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/applications/PackageManagerWrapper;Landroid/content/pm/PackageItemInfo;)V
    .locals 2
    .param p1, "pm"    # Lcom/android/settings/applications/PackageManagerWrapper;
    .param p2, "info"    # Landroid/content/pm/PackageItemInfo;

    .prologue
    .line 73
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/applications/DefaultAppInfo;-><init>(Lcom/android/settings/applications/PackageManagerWrapper;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Z)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/applications/PackageManagerWrapper;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "pm"    # Lcom/android/settings/applications/PackageManagerWrapper;
    .param p2, "info"    # Landroid/content/pm/PackageItemInfo;
    .param p3, "summary"    # Ljava/lang/String;
    .param p4, "enabled"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p4}, Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;-><init>(Z)V

    .line 65
    iput-object p1, p0, Lcom/android/settings/applications/DefaultAppInfo;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    .line 66
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/DefaultAppInfo;->userId:I

    .line 67
    iput-object p2, p0, Lcom/android/settings/applications/DefaultAppInfo;->packageItemInfo:Landroid/content/pm/PackageItemInfo;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    .line 69
    iput-object p3, p0, Lcom/android/settings/applications/DefaultAppInfo;->summary:Ljava/lang/String;

    .line 70
    return-void
.end method

.method private getComponentInfo()Landroid/content/pm/ComponentInfo;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 135
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 136
    iget-object v3, p0, Lcom/android/settings/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    iget v4, p0, Lcom/android/settings/applications/DefaultAppInfo;->userId:I

    const/4 v5, 0x0

    .line 135
    invoke-interface {v2, v3, v5, v4}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 137
    .local v0, "componentInfo":Landroid/content/pm/ComponentInfo;
    if-nez v0, :cond_0

    .line 138
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 139
    iget-object v3, p0, Lcom/android/settings/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    iget v4, p0, Lcom/android/settings/applications/DefaultAppInfo;->userId:I

    const/4 v5, 0x0

    .line 138
    invoke-interface {v2, v3, v5, v4}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 141
    :cond_0
    return-object v0

    .line 142
    .end local v0    # "componentInfo":Landroid/content/pm/ComponentInfo;
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Landroid/os/RemoteException;
    return-object v6
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-object v0, p0, Lcom/android/settings/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/settings/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/DefaultAppInfo;->packageItemInfo:Landroid/content/pm/PackageItemInfo;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/android/settings/applications/DefaultAppInfo;->packageItemInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    return-object v0

    .line 129
    :cond_1
    return-object v1
.end method

.method public loadIcon()Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 101
    iget-object v3, p0, Lcom/android/settings/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_1

    .line 103
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/applications/DefaultAppInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v1

    .line 104
    .local v1, "componentInfo":Landroid/content/pm/ComponentInfo;
    if-eqz v1, :cond_0

    .line 105
    iget-object v3, p0, Lcom/android/settings/applications/DefaultAppInfo;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    invoke-interface {v3}, Lcom/android/settings/applications/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/ComponentInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3

    .line 107
    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/DefaultAppInfo;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    .line 108
    iget-object v4, p0, Lcom/android/settings/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/applications/DefaultAppInfo;->userId:I

    const/4 v6, 0x0

    .line 107
    invoke-interface {v3, v4, v6, v5}, Lcom/android/settings/applications/PackageManagerWrapper;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 109
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/android/settings/applications/DefaultAppInfo;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    invoke-interface {v3}, Lcom/android/settings/applications/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 111
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "componentInfo":Landroid/content/pm/ComponentInfo;
    :catch_0
    move-exception v2

    .line 112
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v7

    .line 115
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/applications/DefaultAppInfo;->packageItemInfo:Landroid/content/pm/PackageItemInfo;

    if-eqz v3, :cond_2

    .line 116
    iget-object v3, p0, Lcom/android/settings/applications/DefaultAppInfo;->packageItemInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v4, p0, Lcom/android/settings/applications/DefaultAppInfo;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    invoke-interface {v4}, Lcom/android/settings/applications/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3

    .line 118
    :cond_2
    return-object v7
.end method

.method public loadLabel()Ljava/lang/CharSequence;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 78
    iget-object v3, p0, Lcom/android/settings/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_1

    .line 80
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/applications/DefaultAppInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v1

    .line 81
    .local v1, "componentInfo":Landroid/content/pm/ComponentInfo;
    if-eqz v1, :cond_0

    .line 82
    iget-object v3, p0, Lcom/android/settings/applications/DefaultAppInfo;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    invoke-interface {v3}, Lcom/android/settings/applications/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 84
    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/DefaultAppInfo;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    .line 85
    iget-object v4, p0, Lcom/android/settings/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/applications/DefaultAppInfo;->userId:I

    const/4 v6, 0x0

    .line 84
    invoke-interface {v3, v4, v6, v5}, Lcom/android/settings/applications/PackageManagerWrapper;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 86
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/android/settings/applications/DefaultAppInfo;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    invoke-interface {v3}, Lcom/android/settings/applications/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 88
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "componentInfo":Landroid/content/pm/ComponentInfo;
    :catch_0
    move-exception v2

    .line 89
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v7

    .line 91
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/applications/DefaultAppInfo;->packageItemInfo:Landroid/content/pm/PackageItemInfo;

    if-eqz v3, :cond_2

    .line 92
    iget-object v3, p0, Lcom/android/settings/applications/DefaultAppInfo;->packageItemInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v4, p0, Lcom/android/settings/applications/DefaultAppInfo;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    invoke-interface {v4}, Lcom/android/settings/applications/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 94
    :cond_2
    return-object v7
.end method
