.class Landroid/support/multidex/MultiDexExtractor$1;
.super Ljava/lang/Object;
.source "MultiDexExtractor.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/multidex/MultiDexExtractor;->clearDexDir()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/multidex/MultiDexExtractor;


# direct methods
.method constructor <init>(Landroid/support/multidex/MultiDexExtractor;)V
    .locals 0

    .line 354
    iput-object p1, p0, Landroid/support/multidex/MultiDexExtractor$1;->this$0:Landroid/support/multidex/MultiDexExtractor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 0

    .line 357
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MultiDex.lock"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
