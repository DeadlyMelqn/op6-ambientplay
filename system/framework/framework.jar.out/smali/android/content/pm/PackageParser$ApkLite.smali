.class public Landroid/content/pm/PackageParser$ApkLite;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApkLite"
.end annotation


# instance fields
.field public final certificates:[[Ljava/security/cert/Certificate;

.field public final codePath:Ljava/lang/String;

.field public final configForSplit:Ljava/lang/String;

.field public final coreApp:Z

.field public final debuggable:Z

.field public final extractNativeLibs:Z

.field public final installLocation:I

.field public isFeatureSplit:Z

.field public final isolatedSplits:Z

.field public final multiArch:Z

.field public final oplibDependencyStr:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final revisionCode:I

.field public final signatures:[Landroid/content/pm/Signature;

.field public final splitName:Ljava/lang/String;

.field public final use32bitAbi:Z

.field public final usesSplitName:Ljava/lang/String;

.field public final verifiers:[Landroid/content/pm/VerifierInfo;

.field public final versionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILjava/util/List;[Landroid/content/pm/Signature;[[Ljava/security/cert/Certificate;ZZZZZZLjava/lang/String;)V
    .locals 2
    .param p1, "codePath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "splitName"    # Ljava/lang/String;
    .param p4, "isFeatureSplit"    # Z
    .param p5, "configForSplit"    # Ljava/lang/String;
    .param p6, "usesSplitName"    # Ljava/lang/String;
    .param p7, "versionCode"    # I
    .param p8, "revisionCode"    # I
    .param p9, "installLocation"    # I
    .param p11, "signatures"    # [Landroid/content/pm/Signature;
    .param p12, "certificates"    # [[Ljava/security/cert/Certificate;
    .param p13, "coreApp"    # Z
    .param p14, "debuggable"    # Z
    .param p15, "multiArch"    # Z
    .param p16, "use32bitAbi"    # Z
    .param p17, "extractNativeLibs"    # Z
    .param p18, "isolatedSplits"    # Z
    .param p19, "oplibDependencyStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/VerifierInfo;",
            ">;[",
            "Landroid/content/pm/Signature;",
            "[[",
            "Ljava/security/cert/Certificate;",
            "ZZZZZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 525
    .local p10, "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    iput-object p1, p0, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    .line 532
    iput-object p2, p0, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    .line 533
    iput-object p3, p0, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    .line 534
    iput-boolean p4, p0, Landroid/content/pm/PackageParser$ApkLite;->isFeatureSplit:Z

    .line 535
    iput-object p5, p0, Landroid/content/pm/PackageParser$ApkLite;->configForSplit:Ljava/lang/String;

    .line 536
    iput-object p6, p0, Landroid/content/pm/PackageParser$ApkLite;->usesSplitName:Ljava/lang/String;

    .line 537
    iput p7, p0, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    .line 538
    iput p8, p0, Landroid/content/pm/PackageParser$ApkLite;->revisionCode:I

    .line 539
    iput p9, p0, Landroid/content/pm/PackageParser$ApkLite;->installLocation:I

    .line 540
    invoke-interface {p10}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/pm/VerifierInfo;

    invoke-interface {p10, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/VerifierInfo;

    iput-object v1, p0, Landroid/content/pm/PackageParser$ApkLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    .line 541
    iput-object p11, p0, Landroid/content/pm/PackageParser$ApkLite;->signatures:[Landroid/content/pm/Signature;

    .line 542
    iput-object p12, p0, Landroid/content/pm/PackageParser$ApkLite;->certificates:[[Ljava/security/cert/Certificate;

    .line 543
    iput-boolean p13, p0, Landroid/content/pm/PackageParser$ApkLite;->coreApp:Z

    .line 544
    move/from16 v0, p14

    iput-boolean v0, p0, Landroid/content/pm/PackageParser$ApkLite;->debuggable:Z

    .line 545
    move/from16 v0, p15

    iput-boolean v0, p0, Landroid/content/pm/PackageParser$ApkLite;->multiArch:Z

    .line 546
    move/from16 v0, p16

    iput-boolean v0, p0, Landroid/content/pm/PackageParser$ApkLite;->use32bitAbi:Z

    .line 547
    move/from16 v0, p17

    iput-boolean v0, p0, Landroid/content/pm/PackageParser$ApkLite;->extractNativeLibs:Z

    .line 548
    move/from16 v0, p18

    iput-boolean v0, p0, Landroid/content/pm/PackageParser$ApkLite;->isolatedSplits:Z

    .line 549
    move-object/from16 v0, p19

    iput-object v0, p0, Landroid/content/pm/PackageParser$ApkLite;->oplibDependencyStr:Ljava/lang/String;

    .line 550
    return-void
.end method
