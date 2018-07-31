.class public Landroid/app/Vr2dDisplayProperties$Builder;
.super Ljava/lang/Object;
.source "Vr2dDisplayProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Vr2dDisplayProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAddedFlags:I

.field private mDpi:I

.field private mHeight:I

.field private mRemovedFlags:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput v1, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mAddedFlags:I

    .line 161
    iput v1, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mRemovedFlags:I

    .line 164
    iput v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mWidth:I

    .line 165
    iput v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mHeight:I

    .line 166
    iput v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mDpi:I

    .line 169
    return-void
.end method


# virtual methods
.method public addFlags(I)Landroid/app/Vr2dDisplayProperties$Builder;
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 197
    iget v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mAddedFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mAddedFlags:I

    .line 198
    iget v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mRemovedFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mRemovedFlags:I

    .line 199
    return-object p0
.end method

.method public build()Landroid/app/Vr2dDisplayProperties;
    .locals 7

    .prologue
    .line 215
    new-instance v0, Landroid/app/Vr2dDisplayProperties;

    iget v1, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mWidth:I

    iget v2, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mHeight:I

    iget v3, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mDpi:I

    iget v4, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mAddedFlags:I

    iget v5, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mRemovedFlags:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/app/Vr2dDisplayProperties;-><init>(IIIIILandroid/app/Vr2dDisplayProperties;)V

    return-object v0
.end method

.method public removeFlags(I)Landroid/app/Vr2dDisplayProperties$Builder;
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 206
    iget v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mRemovedFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mRemovedFlags:I

    .line 207
    iget v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mAddedFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mAddedFlags:I

    .line 208
    return-object p0
.end method

.method public setDimensions(III)Landroid/app/Vr2dDisplayProperties$Builder;
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "dpi"    # I

    .prologue
    .line 175
    iput p1, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mWidth:I

    .line 176
    iput p2, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mHeight:I

    .line 177
    iput p3, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mDpi:I

    .line 178
    return-object p0
.end method

.method public setEnabled(Z)Landroid/app/Vr2dDisplayProperties$Builder;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    .line 185
    if-eqz p1, :cond_0

    .line 186
    invoke-virtual {p0, v0}, Landroid/app/Vr2dDisplayProperties$Builder;->addFlags(I)Landroid/app/Vr2dDisplayProperties$Builder;

    .line 190
    :goto_0
    return-object p0

    .line 188
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Vr2dDisplayProperties$Builder;->removeFlags(I)Landroid/app/Vr2dDisplayProperties$Builder;

    goto :goto_0
.end method
