.class public final Landroid/support/v4/widget/EdgeEffectCompat;
.super Ljava/lang/Object;
.source "EdgeEffectCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectApi21Impl;,
        Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectBaseImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectBaseImpl;


# instance fields
.field private mEdgeEffect:Landroid/widget/EdgeEffect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 40
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectApi21Impl;

    invoke-direct/range {v0 .. v0}, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectApi21Impl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectBaseImpl;

    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectBaseImpl;

    invoke-direct/range {v0 .. v0}, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectBaseImpl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectBaseImpl;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    return-void
.end method

.method public static onPull(Landroid/widget/EdgeEffect;FF)V
    .locals 1
    .param p0    # Landroid/widget/EdgeEffect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 176
    sget-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectBaseImpl;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectBaseImpl;->onPull(Landroid/widget/EdgeEffect;FF)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 228
    iget-object p0, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result p0

    return p0
.end method

.method public finish()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    iget-object p0, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EdgeEffect;->finish()V

    return-void
.end method

.method public isFinished()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99
    iget-object p0, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p0

    return p0
.end method

.method public onAbsorb(I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 210
    iget-object p0, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public onPull(F)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 128
    iget-object p0, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    const/4 p0, 0x1

    return p0
.end method

.method public onPull(FF)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 153
    sget-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectBaseImpl;

    iget-object p0, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectBaseImpl;->onPull(Landroid/widget/EdgeEffect;FF)V

    const/4 p0, 0x1

    return p0
.end method

.method public onRelease()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 191
    iget-object v0, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual/range {v0 .. v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 192
    iget-object p0, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p0

    return p0
.end method

.method public setSize(II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    iget-object p0, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {p0, p1, p2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method