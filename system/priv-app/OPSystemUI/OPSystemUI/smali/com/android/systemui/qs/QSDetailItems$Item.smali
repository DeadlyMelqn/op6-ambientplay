.class public Lcom/android/systemui/qs/QSDetailItems$Item;
.super Ljava/lang/Object;
.source "QSDetailItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSDetailItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public canDisconnect:Z

.field public icon:I

.field public icon2:I

.field public iconDrawable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field public line1:Ljava/lang/CharSequence;

.field public line2:Ljava/lang/CharSequence;

.field public overlay:Landroid/graphics/drawable/Drawable;

.field public tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/QSDetailItems$Item;->icon2:I

    .line 260
    return-void
.end method
