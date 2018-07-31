.class final Lcom/oneplus/embryo/EmbryoApp$NullEmbryo;
.super Ljava/lang/Object;
.source "EmbryoApp.java"

# interfaces
.implements Lcom/oneplus/embryo/IEmbryoApp;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/embryo/EmbryoApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NullEmbryo"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/embryo/EmbryoApp$NullEmbryo;)V
    .locals 0
    .param p1, "-this0"    # Lcom/oneplus/embryo/EmbryoApp$NullEmbryo;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/embryo/EmbryoApp$NullEmbryo;-><init>()V

    return-void
.end method


# virtual methods
.method public attach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    return-void
.end method

.method public checkDecorLayout(Landroid/content/Context;I)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResource"    # I

    .prologue
    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public checkHWUI(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    return-void
.end method

.method public checkMainLayout(Landroid/content/Context;I)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResource"    # I

    .prologue
    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRunnable()Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 200
    return-object p0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method
