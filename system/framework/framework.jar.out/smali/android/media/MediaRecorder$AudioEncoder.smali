.class public final Landroid/media/MediaRecorder$AudioEncoder;
.super Ljava/lang/Object;
.source "MediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AudioEncoder"
.end annotation


# static fields
.field public static final AAC:I = 0x3

.field public static final AAC_ELD:I = 0x5

.field public static final AMR_NB:I = 0x1

.field public static final AMR_WB:I = 0x2

.field public static final DEFAULT:I = 0x0

.field public static final EVRC:I = 0xa

.field public static final HE_AAC:I = 0x4

.field public static final LPCM:I = 0xc

.field public static final MPEGH:I = 0xd

.field public static final QCELP:I = 0xb

.field public static final VORBIS:I = 0x6


# instance fields
.field final synthetic this$0:Landroid/media/MediaRecorder;


# direct methods
.method private constructor <init>(Landroid/media/MediaRecorder;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaRecorder;

    .prologue
    .line 468
    iput-object p1, p0, Landroid/media/MediaRecorder$AudioEncoder;->this$0:Landroid/media/MediaRecorder;

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
