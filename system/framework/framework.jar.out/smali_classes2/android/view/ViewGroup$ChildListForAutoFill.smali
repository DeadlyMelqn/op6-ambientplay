.class Landroid/view/ViewGroup$ChildListForAutoFill;
.super Ljava/util/ArrayList;
.source "ViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChildListForAutoFill"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x20

.field private static final sPool:Landroid/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SimplePool",
            "<",
            "Landroid/view/ViewGroup$ChildListForAutoFill;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8263
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    .line 8262
    sput-object v0, Landroid/view/ViewGroup$ChildListForAutoFill;->sPool:Landroid/util/Pools$SimplePool;

    .line 8259
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 8259
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public static obtain()Landroid/view/ViewGroup$ChildListForAutoFill;
    .locals 2

    .prologue
    .line 8266
    sget-object v1, Landroid/view/ViewGroup$ChildListForAutoFill;->sPool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v1}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$ChildListForAutoFill;

    .line 8267
    .local v0, "list":Landroid/view/ViewGroup$ChildListForAutoFill;
    if-nez v0, :cond_0

    .line 8268
    new-instance v0, Landroid/view/ViewGroup$ChildListForAutoFill;

    .end local v0    # "list":Landroid/view/ViewGroup$ChildListForAutoFill;
    invoke-direct {v0}, Landroid/view/ViewGroup$ChildListForAutoFill;-><init>()V

    .line 8270
    .restart local v0    # "list":Landroid/view/ViewGroup$ChildListForAutoFill;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public recycle()V
    .locals 1

    .prologue
    .line 8274
    invoke-virtual {p0}, Landroid/view/ViewGroup$ChildListForAutoFill;->clear()V

    .line 8275
    sget-object v0, Landroid/view/ViewGroup$ChildListForAutoFill;->sPool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 8276
    return-void
.end method
