.class public interface abstract Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Callback;
.super Ljava/lang/Object;
.source "AmbientPlayRecognition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onAudioLevel(F)V
.end method

.method public abstract onError()V
.end method

.method public abstract onNoMatch()V
.end method

.method public abstract onResult(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Results;)V
.end method
