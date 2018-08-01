.class public Lcom/android/systemui/qs/CellTileView$SignalIcon;
.super Lcom/android/systemui/plugins/qs/QSTile$Icon;
.source "CellTileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/CellTileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignalIcon"
.end annotation


# instance fields
.field private final mState:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;-><init>()V

    .line 62
    iput p1, p0, Lcom/android/systemui/qs/CellTileView$SignalIcon;->mState:I

    .line 63
    return-void
.end method


# virtual methods
.method public getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    new-instance v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;-><init>(Landroid/content/Context;)V

    .line 73
    .local v0, "d":Lcom/android/systemui/statusbar/phone/SignalDrawable;
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getColorForState(Landroid/content/Context;I)I

    move-result v1

    .line 74
    const/4 v2, 0x2

    invoke-static {p1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getColorForState(Landroid/content/Context;I)I

    move-result v2

    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->setColors(II)V

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/qs/CellTileView$SignalIcon;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->setLevel(I)Z

    .line 76
    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/android/systemui/qs/CellTileView$SignalIcon;->mState:I

    return v0
.end method
