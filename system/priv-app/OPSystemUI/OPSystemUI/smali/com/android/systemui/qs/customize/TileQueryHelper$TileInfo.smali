.class public Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
.super Ljava/lang/Object;
.source "TileQueryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/TileQueryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TileInfo"
.end annotation


# instance fields
.field public appLabel:Ljava/lang/CharSequence;

.field public isSystem:Z

.field public isVisible:Z

.field public spec:Ljava/lang/String;

.field public state:Lcom/android/systemui/plugins/qs/QSTile$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isVisible:Z

    .line 191
    return-void
.end method
