.class public Landroid/content/pm/PackageBackwardCompatibility;
.super Ljava/lang/Object;
.source "PackageBackwardCompatibility.java"


# static fields
.field private static final ANDROID_TEST_MOCK:Ljava/lang/String; = "android.test.mock"

.field private static final ANDROID_TEST_RUNNER:Ljava/lang/String; = "android.test.runner"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static modifySharedLibraries(Landroid/content/pm/PackageParser$Package;)V
    .locals 4
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 47
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    .line 48
    .local v1, "usesLibraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 50
    .local v2, "usesOptionalLibraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v1}, Landroid/content/pm/PackageBackwardCompatibility;->orgApacheHttpLegacy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 51
    invoke-static {v2}, Landroid/content/pm/PackageBackwardCompatibility;->orgApacheHttpLegacy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 55
    const-string/jumbo v3, "android.test.mock"

    invoke-static {v1, v3}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 56
    const-string/jumbo v3, "android.test.mock"

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    .line 57
    :goto_0
    const-string/jumbo v3, "android.test.runner"

    invoke-static {v1, v3}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    xor-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_0

    .line 58
    const-string/jumbo v3, "android.test.mock"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_0
    const-string/jumbo v3, "android.test.runner"

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    xor-int/lit8 v3, v0, 0x1

    .line 60
    if-eqz v3, :cond_1

    .line 62
    const-string/jumbo v3, "android.test.mock"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_1
    iput-object v1, p0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    .line 66
    iput-object v2, p0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 67
    return-void

    .line 55
    :cond_2
    const/4 v0, 0x1

    .local v0, "androidTestMockPresent":Z
    goto :goto_0
.end method

.method private static orgApacheHttpLegacy(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "libraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v0, "org.apache.http.legacy"

    invoke-static {p0, v0}, Lcom/android/internal/util/ArrayUtils;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
