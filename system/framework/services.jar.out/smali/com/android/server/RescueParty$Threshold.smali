.class abstract Lcom/android/server/RescueParty$Threshold;
.super Ljava/lang/Object;
.source "RescueParty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RescueParty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Threshold"
.end annotation


# instance fields
.field private final triggerCount:I

.field private final triggerWindow:J

.field private final uid:I


# direct methods
.method static synthetic -get0(Lcom/android/server/RescueParty$Threshold;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/RescueParty$Threshold;

    .prologue
    iget v0, p0, Lcom/android/server/RescueParty$Threshold;->uid:I

    return v0
.end method

.method public constructor <init>(IIJ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "triggerCount"    # I
    .param p3, "triggerWindow"    # J

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput p1, p0, Lcom/android/server/RescueParty$Threshold;->uid:I

    .line 234
    iput p2, p0, Lcom/android/server/RescueParty$Threshold;->triggerCount:I

    .line 235
    iput-wide p3, p0, Lcom/android/server/RescueParty$Threshold;->triggerWindow:J

    .line 236
    return-void
.end method


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getStart()J
.end method

.method public incrementAndTest()Z
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 247
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 248
    .local v2, "now":J
    invoke-virtual {p0}, Lcom/android/server/RescueParty$Threshold;->getStart()J

    move-result-wide v8

    sub-long v4, v2, v8

    .line 249
    .local v4, "window":J
    iget-wide v8, p0, Lcom/android/server/RescueParty$Threshold;->triggerWindow:J

    cmp-long v7, v4, v8

    if-lez v7, :cond_0

    .line 250
    invoke-virtual {p0, v1}, Lcom/android/server/RescueParty$Threshold;->setCount(I)V

    .line 251
    invoke-virtual {p0, v2, v3}, Lcom/android/server/RescueParty$Threshold;->setStart(J)V

    .line 252
    return v6

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/RescueParty$Threshold;->getCount()I

    move-result v7

    add-int/lit8 v0, v7, 0x1

    .line 255
    .local v0, "count":I
    invoke-virtual {p0, v0}, Lcom/android/server/RescueParty$Threshold;->setCount(I)V

    .line 256
    iget v7, p0, Lcom/android/server/RescueParty$Threshold;->uid:I

    invoke-static {v7, v0, v4, v5}, Lcom/android/server/EventLogTags;->writeRescueNote(IIJ)V

    .line 257
    const-string/jumbo v7, "RescueParty"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Noticed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " events for UID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/RescueParty$Threshold;->uid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " in last "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 258
    const-wide/16 v10, 0x3e8

    div-long v10, v4, v10

    .line 257
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 258
    const-string/jumbo v9, " sec"

    .line 257
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget v7, p0, Lcom/android/server/RescueParty$Threshold;->triggerCount:I

    if-lt v0, v7, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v6

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/RescueParty$Threshold;->setCount(I)V

    .line 240
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/RescueParty$Threshold;->setStart(J)V

    .line 241
    return-void
.end method

.method public abstract setCount(I)V
.end method

.method public abstract setStart(J)V
.end method
