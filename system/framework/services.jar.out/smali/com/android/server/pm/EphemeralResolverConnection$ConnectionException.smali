.class public Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;
.super Ljava/lang/Exception;
.source "EphemeralResolverConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/EphemeralResolverConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionException"
.end annotation


# static fields
.field public static final FAILURE_BIND:I = 0x1

.field public static final FAILURE_CALL:I = 0x2

.field public static final FAILURE_INTERRUPTED:I = 0x3


# instance fields
.field public final failure:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "_failure"    # I

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 285
    iput p1, p0, Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;->failure:I

    .line 286
    return-void
.end method