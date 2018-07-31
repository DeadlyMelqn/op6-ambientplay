.class public Lcom/android/systemui/util/SpecialCheck;
.super Ljava/lang/Object;
.source "SpecialCheck.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sTaskNotExcludeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 10
    const-string/jumbo v0, "SpecialCheck"

    sput-object v0, Lcom/android/systemui/util/SpecialCheck;->TAG:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/systemui/util/SpecialCheck;->sTaskNotExcludeSet:Ljava/util/Set;

    .line 17
    sget-object v0, Lcom/android/systemui/util/SpecialCheck;->sTaskNotExcludeSet:Ljava/util/Set;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.kingsoft"

    const-string/jumbo v3, "com.kingsoft.Main"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Lcom/android/systemui/util/SpecialCheck;->sTaskNotExcludeSet:Ljava/util/Set;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.tencent.mobileqq"

    const-string/jumbo v3, ".activity.SplashActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lcom/android/systemui/util/SpecialCheck;->sTaskNotExcludeSet:Ljava/util/Set;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.tencent.mm"

    const-string/jumbo v3, "com.tencent.mm.ui.LauncherUI"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static shouldNotExcludeTask(Landroid/content/ComponentName;)Z
    .locals 1
    .param p0, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 25
    sget-object v0, Lcom/android/systemui/util/SpecialCheck;->sTaskNotExcludeSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
