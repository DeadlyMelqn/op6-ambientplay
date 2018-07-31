.class public Landroid/telecom/Logging/Session;
.super Ljava/lang/Object;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Logging/Session$Info;
    }
.end annotation


# static fields
.field public static final CONTINUE_SUBSESSION:Ljava/lang/String; = "CONTINUE_SUBSESSION"

.field public static final CREATE_SUBSESSION:Ljava/lang/String; = "CREATE_SUBSESSION"

.field public static final END_SESSION:Ljava/lang/String; = "END_SESSION"

.field public static final END_SUBSESSION:Ljava/lang/String; = "END_SUBSESSION"

.field public static final EXTERNAL_INDICATOR:Ljava/lang/String; = "E-"

.field public static final SESSION_SEPARATION_CHAR_CHILD:Ljava/lang/String; = "_"

.field public static final START_EXTERNAL_SESSION:Ljava/lang/String; = "START_EXTERNAL_SESSION"

.field public static final START_SESSION:Ljava/lang/String; = "START_SESSION"

.field public static final SUBSESSION_SEPARATION_CHAR:Ljava/lang/String; = "->"

.field public static final TRUNCATE_STRING:Ljava/lang/String; = "..."

.field public static final UNDEFINED:I = -0x1


# instance fields
.field private mChildCounter:I

.field private mChildSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telecom/Logging/Session;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutionEndTimeMs:J

.field private mExecutionStartTimeMs:J

.field private mFullMethodPathCache:Ljava/lang/String;

.field private mIsCompleted:Z

.field private mIsExternal:Z

.field private mIsStartedFromActiveSession:Z

.field private mOwnerInfo:Ljava/lang/String;

.field private mParentSession:Landroid/telecom/Logging/Session;

.field private mSessionId:Ljava/lang/String;

.field private mShortMethodName:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Landroid/telecom/Logging/Session;)Z
    .locals 1
    .param p0, "-this"    # Landroid/telecom/Logging/Session;

    .prologue
    invoke-direct {p0}, Landroid/telecom/Logging/Session;->isSessionExternal()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/telecom/Logging/Session;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Landroid/telecom/Logging/Session;

    .prologue
    invoke-direct {p0}, Landroid/telecom/Logging/Session;->getFullSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V
    .locals 3
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "shortMethodName"    # Ljava/lang/String;
    .param p3, "startTimeMs"    # J
    .param p5, "isStartedFromActiveSession"    # Z
    .param p6, "ownerInfo"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/telecom/Logging/Session;->mExecutionEndTimeMs:J

    .line 107
    iput-boolean v2, p0, Landroid/telecom/Logging/Session;->mIsCompleted:Z

    .line 108
    iput-boolean v2, p0, Landroid/telecom/Logging/Session;->mIsExternal:Z

    .line 109
    iput v2, p0, Landroid/telecom/Logging/Session;->mChildCounter:I

    .line 115
    iput-boolean v2, p0, Landroid/telecom/Logging/Session;->mIsStartedFromActiveSession:Z

    .line 125
    invoke-virtual {p0, p1}, Landroid/telecom/Logging/Session;->setSessionId(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, p2}, Landroid/telecom/Logging/Session;->setShortMethodName(Ljava/lang/String;)V

    .line 127
    iput-wide p3, p0, Landroid/telecom/Logging/Session;->mExecutionStartTimeMs:J

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    .line 130
    iput-boolean p5, p0, Landroid/telecom/Logging/Session;->mIsStartedFromActiveSession:Z

    .line 131
    iput-object p6, p0, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    .line 132
    return-void
.end method

.method private declared-synchronized getFullMethodPath(Ljava/lang/StringBuilder;Z)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "truncatePath"    # Z

    .prologue
    monitor-enter p0

    .line 289
    :try_start_0
    iget-object v2, p0, Landroid/telecom/Logging/Session;->mFullMethodPathCache:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    xor-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_0

    .line 290
    iget-object v2, p0, Landroid/telecom/Logging/Session;->mFullMethodPathCache:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 291
    return-void

    .line 293
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v1

    .line 294
    .local v1, "parentSession":Landroid/telecom/Logging/Session;
    const/4 v0, 0x0

    .line 295
    .local v0, "isSessionStarted":Z
    if-eqz v1, :cond_1

    .line 298
    iget-object v2, p0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    iget-object v3, v1, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v0, v2, 0x1

    .line 299
    .local v0, "isSessionStarted":Z
    invoke-direct {v1, p1, p2}, Landroid/telecom/Logging/Session;->getFullMethodPath(Ljava/lang/StringBuilder;Z)V

    .line 300
    const-string/jumbo v2, "->"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .end local v0    # "isSessionStarted":Z
    :cond_1
    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->isExternal()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 305
    if-eqz p2, :cond_3

    .line 306
    const-string/jumbo v2, "..."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :goto_0
    if-eqz v0, :cond_2

    xor-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_2

    .line 319
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/telecom/Logging/Session;->mFullMethodPathCache:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    .line 321
    return-void

    .line 308
    :cond_3
    :try_start_2
    const-string/jumbo v2, "("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    iget-object v2, p0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const-string/jumbo v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v1    # "parentSession":Landroid/telecom/Logging/Session;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 313
    .restart local v1    # "parentSession":Landroid/telecom/Logging/Session;
    :cond_4
    :try_start_3
    iget-object v2, p0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private getFullSessionId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    .line 234
    .local v0, "parentSession":Landroid/telecom/Logging/Session;
    if-nez v0, :cond_0

    .line 235
    iget-object v1, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    return-object v1

    .line 237
    :cond_0
    sget-boolean v1, Landroid/telecom/Log;->VERBOSE:Z

    if-eqz v1, :cond_1

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v0}, Landroid/telecom/Logging/Session;->getFullSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 240
    const-string/jumbo v2, "_"

    .line 238
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 240
    iget-object v2, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    .line 238
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 243
    :cond_1
    invoke-direct {v0}, Landroid/telecom/Logging/Session;->getFullSessionId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isSessionExternal()Z
    .locals 1

    .prologue
    .line 324
    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v0

    if-nez v0, :cond_0

    .line 325
    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->isExternal()Z

    move-result v0

    return v0

    .line 327
    :cond_0
    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v0

    invoke-direct {v0}, Landroid/telecom/Logging/Session;->isSessionExternal()Z

    move-result v0

    return v0
.end method

.method private printSessionTree(ILjava/lang/StringBuilder;)V
    .locals 4
    .param p1, "tabI"    # I
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 267
    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    iget-object v3, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Logging/Session;

    .line 269
    .local v0, "child":Landroid/telecom/Logging/Session;
    const-string/jumbo v3, "\n"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-gt v2, p1, :cond_0

    .line 271
    const-string/jumbo v3, "\t"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 273
    :cond_0
    add-int/lit8 v3, p1, 0x1

    invoke-direct {v0, v3, p2}, Landroid/telecom/Logging/Session;->printSessionTree(ILjava/lang/StringBuilder;)V

    goto :goto_0

    .line 275
    .end local v0    # "child":Landroid/telecom/Logging/Session;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public addChild(Landroid/telecom/Logging/Session;)V
    .locals 1
    .param p1, "childSession"    # Landroid/telecom/Logging/Session;

    .prologue
    .line 165
    if-eqz p1, :cond_0

    .line 166
    iget-object v0, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 348
    if-ne p0, p1, :cond_0

    return v1

    .line 349
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    .line 351
    check-cast v0, Landroid/telecom/Logging/Session;

    .line 353
    .local v0, "session":Landroid/telecom/Logging/Session;
    iget-wide v4, p0, Landroid/telecom/Logging/Session;->mExecutionStartTimeMs:J

    iget-wide v6, v0, Landroid/telecom/Logging/Session;->mExecutionStartTimeMs:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    return v2

    .line 354
    :cond_3
    iget-wide v4, p0, Landroid/telecom/Logging/Session;->mExecutionEndTimeMs:J

    iget-wide v6, v0, Landroid/telecom/Logging/Session;->mExecutionEndTimeMs:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    return v2

    .line 355
    :cond_4
    iget-boolean v3, p0, Landroid/telecom/Logging/Session;->mIsCompleted:Z

    iget-boolean v4, v0, Landroid/telecom/Logging/Session;->mIsCompleted:Z

    if-eq v3, v4, :cond_5

    return v2

    .line 356
    :cond_5
    iget v3, p0, Landroid/telecom/Logging/Session;->mChildCounter:I

    iget v4, v0, Landroid/telecom/Logging/Session;->mChildCounter:I

    if-eq v3, v4, :cond_6

    return v2

    .line 357
    :cond_6
    iget-boolean v3, p0, Landroid/telecom/Logging/Session;->mIsStartedFromActiveSession:Z

    iget-boolean v4, v0, Landroid/telecom/Logging/Session;->mIsStartedFromActiveSession:Z

    if-eq v3, v4, :cond_7

    return v2

    .line 358
    :cond_7
    iget-object v3, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 359
    iget-object v3, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    iget-object v4, v0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 358
    if-eqz v3, :cond_a

    .line 360
    :cond_8
    return v2

    .line 359
    :cond_9
    iget-object v3, v0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 361
    :cond_a
    iget-object v3, p0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    iget-object v4, v0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_d

    .line 363
    :cond_b
    return v2

    .line 362
    :cond_c
    iget-object v3, v0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    if-nez v3, :cond_b

    .line 364
    :cond_d
    iget-object v3, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    if-eqz v3, :cond_f

    iget-object v3, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    iget-object v4, v0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    invoke-virtual {v3, v4}, Landroid/telecom/Logging/Session;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_10

    .line 366
    :cond_e
    return v2

    .line 365
    :cond_f
    iget-object v3, v0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    if-nez v3, :cond_e

    .line 367
    :cond_10
    iget-object v3, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    if-eqz v3, :cond_12

    iget-object v3, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    iget-object v4, v0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_13

    .line 369
    :cond_11
    return v2

    .line 368
    :cond_12
    iget-object v3, v0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    if-nez v3, :cond_11

    .line 370
    :cond_13
    iget-object v3, p0, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    if-eqz v3, :cond_15

    iget-object v1, p0, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    iget-object v2, v0, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_14
    :goto_0
    return v1

    .line 371
    :cond_15
    iget-object v3, v0, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    if-eqz v3, :cond_14

    move v1, v2

    goto :goto_0
.end method

.method public getChildSessions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telecom/Logging/Session;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getExecutionStartTimeMilliseconds()J
    .locals 2

    .prologue
    .line 177
    iget-wide v0, p0, Landroid/telecom/Logging/Session;->mExecutionStartTimeMs:J

    return-wide v0
.end method

.method public getFullMethodPath(Z)Ljava/lang/String;
    .locals 2
    .param p1, "truncatePath"    # Z

    .prologue
    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0, p1}, Landroid/telecom/Logging/Session;->getFullMethodPath(Ljava/lang/StringBuilder;Z)V

    .line 283
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getInfo()Landroid/telecom/Logging/Session$Info;
    .locals 1

    .prologue
    .line 201
    invoke-static {p0}, Landroid/telecom/Logging/Session$Info;->getInfo(Landroid/telecom/Logging/Session;)Landroid/telecom/Logging/Session$Info;

    move-result-object v0

    return-object v0
.end method

.method public getLocalExecutionTime()J
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 217
    iget-wide v0, p0, Landroid/telecom/Logging/Session;->mExecutionEndTimeMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 218
    return-wide v2

    .line 220
    :cond_0
    iget-wide v0, p0, Landroid/telecom/Logging/Session;->mExecutionEndTimeMs:J

    iget-wide v2, p0, Landroid/telecom/Logging/Session;->mExecutionStartTimeMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public declared-synchronized getNextChildId()Ljava/lang/String;
    .locals 2

    .prologue
    monitor-enter p0

    .line 224
    :try_start_0
    iget v0, p0, Landroid/telecom/Logging/Session;->mChildCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/telecom/Logging/Session;->mChildCounter:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getParentSession()Landroid/telecom/Logging/Session;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getShortMethodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 333
    iget-object v1, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 334
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v4, v0, 0x1f

    iget-object v1, p0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v4, v1

    .line 335
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Landroid/telecom/Logging/Session;->mExecutionStartTimeMs:J

    iget-wide v6, p0, Landroid/telecom/Logging/Session;->mExecutionStartTimeMs:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v0, v1, v4

    .line 336
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Landroid/telecom/Logging/Session;->mExecutionEndTimeMs:J

    iget-wide v6, p0, Landroid/telecom/Logging/Session;->mExecutionEndTimeMs:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v0, v1, v4

    .line 337
    mul-int/lit8 v4, v0, 0x1f

    iget-object v1, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->hashCode()I

    move-result v1

    :goto_2
    add-int v0, v4, v1

    .line 338
    mul-int/lit8 v4, v0, 0x1f

    iget-object v1, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    :goto_3
    add-int v0, v4, v1

    .line 339
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Landroid/telecom/Logging/Session;->mIsCompleted:Z

    if-eqz v1, :cond_5

    move v1, v3

    :goto_4
    add-int v0, v4, v1

    .line 340
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Landroid/telecom/Logging/Session;->mChildCounter:I

    add-int v0, v1, v4

    .line 341
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Landroid/telecom/Logging/Session;->mIsStartedFromActiveSession:Z

    if-eqz v4, :cond_6

    :goto_5
    add-int v0, v1, v3

    .line 342
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 343
    return v0

    .line 333
    .end local v0    # "result":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "result":I
    goto :goto_0

    :cond_2
    move v1, v2

    .line 334
    goto :goto_1

    :cond_3
    move v1, v2

    .line 337
    goto :goto_2

    :cond_4
    move v1, v2

    .line 338
    goto :goto_3

    :cond_5
    move v1, v2

    .line 339
    goto :goto_4

    :cond_6
    move v3, v2

    .line 341
    goto :goto_5
.end method

.method public isExternal()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Landroid/telecom/Logging/Session;->mIsExternal:Z

    return v0
.end method

.method public isSessionCompleted()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Landroid/telecom/Logging/Session;->mIsCompleted:Z

    return v0
.end method

.method public isStartedFromActiveSession()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Landroid/telecom/Logging/Session;->mIsStartedFromActiveSession:Z

    return v0
.end method

.method public markSessionCompleted(J)V
    .locals 1
    .param p1, "executionEndTimeMs"    # J

    .prologue
    .line 212
    iput-wide p1, p0, Landroid/telecom/Logging/Session;->mExecutionEndTimeMs:J

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telecom/Logging/Session;->mIsCompleted:Z

    .line 214
    return-void
.end method

.method public printFullSessionTree()Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    move-object v0, p0

    .line 253
    .local v0, "topNode":Landroid/telecom/Logging/Session;
    :goto_0
    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v0

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->printSessionTree()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public printSessionTree()Ljava/lang/String;
    .locals 2

    .prologue
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/telecom/Logging/Session;->printSessionTree(ILjava/lang/StringBuilder;)V

    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public removeChild(Landroid/telecom/Logging/Session;)V
    .locals 1
    .param p1, "child"    # Landroid/telecom/Logging/Session;

    .prologue
    .line 171
    if-eqz p1, :cond_0

    .line 172
    iget-object v0, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 174
    :cond_0
    return-void
.end method

.method public setExecutionStartTimeMs(J)V
    .locals 1
    .param p1, "startTimeMs"    # J

    .prologue
    .line 181
    iput-wide p1, p0, Landroid/telecom/Logging/Session;->mExecutionStartTimeMs:J

    .line 182
    return-void
.end method

.method public setIsExternal(Z)V
    .locals 0
    .param p1, "isExternal"    # Z

    .prologue
    .line 153
    iput-boolean p1, p0, Landroid/telecom/Logging/Session;->mIsExternal:Z

    .line 154
    return-void
.end method

.method public setParentSession(Landroid/telecom/Logging/Session;)V
    .locals 0
    .param p1, "parentSession"    # Landroid/telecom/Logging/Session;

    .prologue
    .line 161
    iput-object p1, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    .line 162
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 1
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 136
    const-string/jumbo v0, "?"

    iput-object v0, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    .line 138
    :cond_0
    iput-object p1, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setShortMethodName(Ljava/lang/String;)V
    .locals 0
    .param p1, "shortMethodName"    # Ljava/lang/String;

    .prologue
    .line 146
    if-nez p1, :cond_0

    .line 147
    const-string/jumbo p1, ""

    .line 149
    :cond_0
    iput-object p1, p0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 377
    iget-object v1, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/telecom/Logging/Session;->mIsStartedFromActiveSession:Z

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 382
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    .local v0, "methodName":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/telecom/Logging/Session;->getFullMethodPath(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    iget-object v1, p0, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 385
    const-string/jumbo v1, "(InCall package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    iget-object v1, p0, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/telecom/Logging/Session;->getFullSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
