.class public final Lcom/android/server/pm/PackageManagerService$SharedLibraryEntry;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SharedLibraryEntry"
.end annotation


# instance fields
.field public final apk:Ljava/lang/String;

.field public final info:Landroid/content/pm/SharedLibraryInfo;

.field public final path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V
    .locals 6
    .param p1, "_path"    # Ljava/lang/String;
    .param p2, "_apk"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "version"    # I
    .param p5, "type"    # I
    .param p6, "declaringPackageName"    # Ljava/lang/String;
    .param p7, "declaringPackageVersionCode"    # I

    .prologue
    .line 1034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1036
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$SharedLibraryEntry;->path:Ljava/lang/String;

    .line 1037
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$SharedLibraryEntry;->apk:Ljava/lang/String;

    .line 1038
    new-instance v0, Landroid/content/pm/SharedLibraryInfo;

    new-instance v4, Landroid/content/pm/VersionedPackage;

    invoke-direct {v4, p6, p7}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    .line 1039
    const/4 v5, 0x0

    move-object v1, p3

    move v2, p4

    move v3, p5

    .line 1038
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;IILandroid/content/pm/VersionedPackage;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$SharedLibraryEntry;->info:Landroid/content/pm/SharedLibraryInfo;

    .line 1040
    return-void
.end method
