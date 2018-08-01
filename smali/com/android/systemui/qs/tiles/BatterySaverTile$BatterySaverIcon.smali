.class public Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverIcon;
.super Lcom/android/systemui/plugins/qs/QSTile$Icon;
.source "BatterySaverTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/BatterySaverTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatterySaverIcon"
.end annotation


# instance fields
.field private mState:I


# direct methods
.method static synthetic -set0(Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverIcon;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverIcon;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverIcon;->mState:I

    return p1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    new-instance v0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverDrawable;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverDrawable;-><init>(Landroid/content/Context;I)V

    .line 152
    .local v0, "b":Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverDrawable;
    iget v2, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverIcon;->mState:I

    invoke-static {v0, v2}, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverDrawable;->-set0(Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverDrawable;I)I

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 154
    const v3, 0x7f070278

    .line 153
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 155
    .local v1, "pad":I
    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverDrawable;->setPadding(IIII)V

    .line 156
    return-object v0
.end method
