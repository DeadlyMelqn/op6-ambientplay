.class public final Landroid/content/pm/AuxiliaryResolveInfo;
.super Landroid/content/IntentFilter;
.source "AuxiliaryResolveInfo.java"


# instance fields
.field public final failureIntent:Landroid/content/Intent;

.field public final installFailureActivity:Landroid/content/ComponentName;

.field public final needsPhaseTwo:Z

.field public final packageName:Ljava/lang/String;

.field public final resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

.field public final splitName:Ljava/lang/String;

.field public final token:Ljava/lang/String;

.field public final versionCode:I


# direct methods
.method public constructor <init>(Landroid/content/pm/InstantAppResolveInfo;Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)V
    .locals 1
    .param p1, "resolveInfo"    # Landroid/content/pm/InstantAppResolveInfo;
    .param p2, "orig"    # Landroid/content/IntentFilter;
    .param p3, "splitName"    # Ljava/lang/String;
    .param p4, "token"    # Ljava/lang/String;
    .param p5, "needsPhase2"    # Z
    .param p6, "failureIntent"    # Landroid/content/Intent;

    .prologue
    .line 59
    invoke-direct {p0, p2}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    .line 60
    iput-object p1, p0, Landroid/content/pm/AuxiliaryResolveInfo;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    .line 61
    invoke-virtual {p1}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/AuxiliaryResolveInfo;->packageName:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Landroid/content/pm/AuxiliaryResolveInfo;->splitName:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    .line 64
    iput-boolean p5, p0, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    .line 65
    invoke-virtual {p1}, Landroid/content/pm/InstantAppResolveInfo;->getVersionCode()I

    move-result v0

    iput v0, p0, Landroid/content/pm/AuxiliaryResolveInfo;->versionCode:I

    .line 66
    iput-object p6, p0, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/AuxiliaryResolveInfo;->installFailureActivity:Landroid/content/ComponentName;

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;ILandroid/content/Intent;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "splitName"    # Ljava/lang/String;
    .param p3, "failureActivity"    # Landroid/content/ComponentName;
    .param p4, "versionCode"    # I
    .param p5, "failureIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 77
    iput-object p1, p0, Landroid/content/pm/AuxiliaryResolveInfo;->packageName:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Landroid/content/pm/AuxiliaryResolveInfo;->installFailureActivity:Landroid/content/ComponentName;

    .line 79
    iput-object p2, p0, Landroid/content/pm/AuxiliaryResolveInfo;->splitName:Ljava/lang/String;

    .line 80
    iput p4, p0, Landroid/content/pm/AuxiliaryResolveInfo;->versionCode:I

    .line 81
    iput-object v0, p0, Landroid/content/pm/AuxiliaryResolveInfo;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    .line 82
    iput-object v0, p0, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    .line 84
    iput-object p5, p0, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    .line 85
    return-void
.end method
