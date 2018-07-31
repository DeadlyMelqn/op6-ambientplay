.class public Lcom/ice/box/helpers/OPPreferenceDivider;
.super Landroid/preference/Preference;
.source "OPPreferenceDivider.java"


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct/range {p0 .. p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-direct/range {p0 .. p1}, Lcom/ice/box/helpers/OPPreferenceDivider;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct/range {p0 .. p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-direct/range {p0 .. p1}, Lcom/ice/box/helpers/OPPreferenceDivider;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct/range {p0 .. p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-direct/range {p0 .. p1}, Lcom/ice/box/helpers/OPPreferenceDivider;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/ice/box/helpers/OPPreferenceDivider;->mContext:Landroid/content/Context;

    const p1, 0x7f0c0053

    .line 31
    invoke-virtual {p0, p1}, Lcom/ice/box/helpers/OPPreferenceDivider;->setLayoutResource(I)V

    const/4 p1, 0x0

    .line 32
    invoke-virtual {p0, p1}, Lcom/ice/box/helpers/OPPreferenceDivider;->setEnabled(Z)V

    return-void
.end method
