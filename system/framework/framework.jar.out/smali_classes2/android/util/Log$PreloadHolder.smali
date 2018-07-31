.class Landroid/util/Log$PreloadHolder;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PreloadHolder"
.end annotation


# static fields
.field public static final LOGGER_ENTRY_MAX_PAYLOAD:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 457
    invoke-static {}, Landroid/util/Log;->-wrap0()I

    move-result v0

    .line 456
    sput v0, Landroid/util/Log$PreloadHolder;->LOGGER_ENTRY_MAX_PAYLOAD:I

    .line 455
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
