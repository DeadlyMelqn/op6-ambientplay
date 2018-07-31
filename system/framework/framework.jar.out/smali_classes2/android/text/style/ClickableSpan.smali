.class public abstract Landroid/text/style/ClickableSpan;
.super Landroid/text/style/CharacterStyle;
.source "ClickableSpan.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# static fields
.field private static sIdCounter:I


# instance fields
.field private mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput v0, Landroid/text/style/ClickableSpan;->sIdCounter:I

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 31
    sget v0, Landroid/text/style/ClickableSpan;->sIdCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid/text/style/ClickableSpan;->sIdCounter:I

    iput v0, p0, Landroid/text/style/ClickableSpan;->mId:I

    .line 28
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Landroid/text/style/ClickableSpan;->mId:I

    return v0
.end method

.method public abstract onClick(Landroid/view/View;)V
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 43
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 45
    return-void
.end method
