.class public final Landroid/app/job/JobInfo$Builder;
.super Ljava/lang/Object;
.source "JobInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/JobInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBackoffPolicy:I

.field private mBackoffPolicySet:Z

.field private mClipData:Landroid/content/ClipData;

.field private mClipGrantFlags:I

.field private mConstraintFlags:I

.field private mExtras:Landroid/os/PersistableBundle;

.field private mFlags:I

.field private mFlexMillis:J

.field private mHasEarlyConstraint:Z

.field private mHasLateConstraint:Z

.field private mInitialBackoffMillis:J

.field private mIntervalMillis:J

.field private mIsPeriodic:Z

.field private mIsPersisted:Z

.field private final mJobId:I

.field private final mJobService:Landroid/content/ComponentName;

.field private mMaxExecutionDelayMillis:J

.field private mMinLatencyMillis:J

.field private mNetworkType:I

.field private mPriority:I

.field private mTransientExtras:Landroid/os/Bundle;

.field private mTriggerContentMaxDelay:J

.field private mTriggerContentUpdateDelay:J

.field private mTriggerContentUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/job/JobInfo$TriggerContentUri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/app/job/JobInfo$Builder;)I
    .locals 1
    .param p0, "-this"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicy:I

    return v0
.end method

.method static synthetic -get1(Landroid/app/job/JobInfo$Builder;)Landroid/content/ClipData;
    .locals 1
    .param p0, "-this"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method static synthetic -get10(Landroid/app/job/JobInfo$Builder;)J
    .locals 2
    .param p0, "-this"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mIntervalMillis:J

    return-wide v0
.end method

.method static synthetic -get11(Landroid/app/job/JobInfo$Builder;)Z
    .locals 1
    .param p0, "-this"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPeriodic:Z

    return v0
.end method

.method static synthetic -get12(Landroid/app/job/JobInfo$Builder;)Z
    .locals 1
    .param p0, "-this"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPersisted:Z

    return v0
.end method

.method static synthetic -get13(Landroid/app/job/JobInfo$Builder;)I
    .locals 1
    .param p0, "-this"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    return v0
.end method

.method static synthetic -get14(Landroid/app/job/JobInfo$Builder;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "-this"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mJobService:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get15(Landroid/app/job/JobInfo$Builder;)J
    .locals 2
    .param p0, "-this"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMaxExecutionDelayMillis:J

    return-wide v0
.end method

.method static synthetic -get16(Landroid/app/job/JobInfo$Builder;)J
    .locals 2
    .param p0, "-this"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMinLatencyMillis:J

    return-wide v0
.end method

.method static synthetic -get17(Landroid/app/job/JobInfo$Builder;)I
    .locals 1
    .param p0, "-this"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mNetworkType:I

    return v0
.end method

.method static synthetic -get18(Landroid/app/job/JobInfo$Builder;)I
    .locals 1
    .param p0, "-this"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    return v0
.end method

.method static synthetic -get19(Landroid/app/job/JobInfo$Builder;)Landroid/os/Bundle;
    .locals 1
    .param p0, "-this"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTransientExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic -get2(Landroid/app/job/JobInfo$Builder;)I
    .locals 1
    .param p0, "-this"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mClipGrantFlags:I

    return v0
.end method

.method static synthetic -get20(Landroid/app/job/JobInfo$Builder;)J
    .locals 2
    .param p0, "-this"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentMaxDelay:J

    return-wide v0
.end method

.method static synthetic -get21(Landroid/app/job/JobInfo$Builder;)J
    .locals 2
    .param p0, "-this"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUpdateDelay:J

    return-wide v0
.end method

.method static synthetic -get22(Landroid/app/job/JobInfo$Builder;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "-this"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Landroid/app/job/JobInfo$Builder;)I
    .locals 1
    .param p0, "-this"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    return v0
.end method

.method static synthetic -get4(Landroid/app/job/JobInfo$Builder;)Landroid/os/PersistableBundle;
    .locals 1
    .param p0, "-this"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method static synthetic -get5(Landroid/app/job/JobInfo$Builder;)I
    .locals 1
    .param p0, "-this"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    return v0
.end method

.method static synthetic -get6(Landroid/app/job/JobInfo$Builder;)J
    .locals 2
    .param p0, "-this"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mFlexMillis:J

    return-wide v0
.end method

.method static synthetic -get7(Landroid/app/job/JobInfo$Builder;)Z
    .locals 1
    .param p0, "-this"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    return v0
.end method

.method static synthetic -get8(Landroid/app/job/JobInfo$Builder;)Z
    .locals 1
    .param p0, "-this"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    return v0
.end method

.method static synthetic -get9(Landroid/app/job/JobInfo$Builder;)J
    .locals 2
    .param p0, "-this"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    return-wide v0
.end method

.method public constructor <init>(ILandroid/content/ComponentName;)V
    .locals 6
    .param p1, "jobId"    # I
    .param p2, "jobService"    # Landroid/content/ComponentName;

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    .line 839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 800
    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    .line 801
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTransientExtras:Landroid/os/Bundle;

    .line 804
    iput v2, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    .line 810
    iput-wide v4, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUpdateDelay:J

    .line 811
    iput-wide v4, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentMaxDelay:J

    .line 823
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    .line 824
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicy:I

    .line 826
    iput-boolean v2, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicySet:Z

    .line 840
    iput-object p2, p0, Landroid/app/job/JobInfo$Builder;->mJobService:Landroid/content/ComponentName;

    .line 841
    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    .line 842
    return-void
.end method


# virtual methods
.method public addTriggerContentUri(Landroid/app/job/JobInfo$TriggerContentUri;)Landroid/app/job/JobInfo$Builder;
    .locals 1
    .param p1, "uri"    # Landroid/app/job/JobInfo$TriggerContentUri;

    .prologue
    .line 1000
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1001
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    .line 1003
    :cond_0
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1004
    return-object p0
.end method

.method public build()Landroid/app/job/JobInfo;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 1122
    iget-boolean v2, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    if-nez v2, :cond_0

    .line 1123
    iget v2, p0, Landroid/app/job/JobInfo$Builder;->mNetworkType:I

    if-nez v2, :cond_0

    .line 1124
    iget-object v2, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 1125
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "You\'re trying to build a job with no constraints, this is not allowed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1129
    :cond_0
    iget-boolean v2, p0, Landroid/app/job/JobInfo$Builder;->mIsPeriodic:Z

    if-eqz v2, :cond_3

    .line 1130
    iget-wide v2, p0, Landroid/app/job/JobInfo$Builder;->mMaxExecutionDelayMillis:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    .line 1131
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Can\'t call setOverrideDeadline() on a periodic job."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1134
    :cond_1
    iget-wide v2, p0, Landroid/app/job/JobInfo$Builder;->mMinLatencyMillis:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    .line 1135
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Can\'t call setMinimumLatency() on a periodic job"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1138
    :cond_2
    iget-object v2, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 1139
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Can\'t call addTriggerContentUri() on a periodic job"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1143
    :cond_3
    iget-boolean v2, p0, Landroid/app/job/JobInfo$Builder;->mIsPersisted:Z

    if-eqz v2, :cond_6

    .line 1144
    iget-object v2, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 1145
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Can\'t call addTriggerContentUri() on a persisted job"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1148
    :cond_4
    iget-object v2, p0, Landroid/app/job/JobInfo$Builder;->mTransientExtras:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1149
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Can\'t call setTransientExtras() on a persisted job"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1152
    :cond_5
    iget-object v2, p0, Landroid/app/job/JobInfo$Builder;->mClipData:Landroid/content/ClipData;

    if-eqz v2, :cond_6

    .line 1153
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Can\'t call setClipData() on a persisted job"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1157
    :cond_6
    iget-boolean v2, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicySet:Z

    if-eqz v2, :cond_7

    iget v2, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_7

    .line 1158
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "An idle mode job will not respect any back-off policy, so calling setBackoffCriteria with setRequiresDeviceIdle is an error."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1162
    :cond_7
    new-instance v1, Landroid/app/job/JobInfo;

    invoke-direct {v1, p0, v4}, Landroid/app/job/JobInfo;-><init>(Landroid/app/job/JobInfo$Builder;Landroid/app/job/JobInfo;)V

    .line 1163
    .local v1, "job":Landroid/app/job/JobInfo;
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1164
    invoke-static {v1}, Landroid/app/job/JobInfo;->-get2(Landroid/app/job/JobInfo;)J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    .line 1165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1166
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "Specified interval for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1167
    iget v3, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 1166
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1168
    const-string/jumbo v3, " is "

    .line 1166
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    iget-wide v2, p0, Landroid/app/job/JobInfo$Builder;->mIntervalMillis:J

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1170
    const-string/jumbo v2, ". Clamped to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1172
    invoke-static {}, Landroid/app/job/JobInfo;->-get0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_8
    invoke-static {v1}, Landroid/app/job/JobInfo;->-get1(Landroid/app/job/JobInfo;)J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1176
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "Specified flex for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1177
    iget v3, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 1176
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1178
    const-string/jumbo v3, " is "

    .line 1176
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    iget-wide v2, p0, Landroid/app/job/JobInfo$Builder;->mFlexMillis:J

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1180
    const-string/jumbo v2, ". Clamped to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1181
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1182
    invoke-static {}, Landroid/app/job/JobInfo;->-get0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_9
    return-object v1
.end method

.method public setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;
    .locals 1
    .param p1, "initialBackoffMillis"    # J
    .param p3, "backoffPolicy"    # I

    .prologue
    .line 1099
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicySet:Z

    .line 1100
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    .line 1101
    iput p3, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicy:I

    .line 1102
    return-object p0
.end method

.method public setClipData(Landroid/content/ClipData;I)Landroid/app/job/JobInfo$Builder;
    .locals 0
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "grantFlags"    # I

    .prologue
    .line 902
    iput-object p1, p0, Landroid/app/job/JobInfo$Builder;->mClipData:Landroid/content/ClipData;

    .line 903
    iput p2, p0, Landroid/app/job/JobInfo$Builder;->mClipGrantFlags:I

    .line 904
    return-object p0
.end method

.method public setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/PersistableBundle;

    .prologue
    .line 861
    iput-object p1, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    .line 862
    return-object p0
.end method

.method public setFlags(I)Landroid/app/job/JobInfo$Builder;
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 852
    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    .line 853
    return-object p0
.end method

.method public setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;
    .locals 1
    .param p1, "minLatencyMillis"    # J

    .prologue
    .line 1066
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mMinLatencyMillis:J

    .line 1067
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    .line 1068
    return-object p0
.end method

.method public setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;
    .locals 1
    .param p1, "maxExecutionDelayMillis"    # J

    .prologue
    .line 1079
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mMaxExecutionDelayMillis:J

    .line 1080
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    .line 1081
    return-object p0
.end method

.method public setPeriodic(J)Landroid/app/job/JobInfo$Builder;
    .locals 1
    .param p1, "intervalMillis"    # J

    .prologue
    .line 1037
    invoke-virtual {p0, p1, p2, p1, p2}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;
    .locals 1
    .param p1, "intervalMillis"    # J
    .param p3, "flexMillis"    # J

    .prologue
    const/4 v0, 0x1

    .line 1050
    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPeriodic:Z

    .line 1051
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mIntervalMillis:J

    .line 1052
    iput-wide p3, p0, Landroid/app/job/JobInfo$Builder;->mFlexMillis:J

    .line 1053
    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    .line 1054
    return-object p0
.end method

.method public setPersisted(Z)Landroid/app/job/JobInfo$Builder;
    .locals 0
    .param p1, "isPersisted"    # Z

    .prologue
    .line 1113
    iput-boolean p1, p0, Landroid/app/job/JobInfo$Builder;->mIsPersisted:Z

    .line 1114
    return-object p0
.end method

.method public setPriority(I)Landroid/app/job/JobInfo$Builder;
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 846
    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    .line 847
    return-object p0
.end method

.method public setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;
    .locals 0
    .param p1, "networkType"    # I

    .prologue
    .line 916
    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mNetworkType:I

    .line 917
    return-object p0
.end method

.method public setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;
    .locals 2
    .param p1, "batteryNotLow"    # Z

    .prologue
    .line 939
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    and-int/lit8 v1, v0, -0x3

    .line 940
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 939
    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    .line 941
    return-object p0

    .line 940
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;
    .locals 2
    .param p1, "requiresCharging"    # Z

    .prologue
    .line 926
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    and-int/lit8 v1, v0, -0x2

    .line 927
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 926
    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    .line 928
    return-object p0

    .line 927
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;
    .locals 2
    .param p1, "requiresDeviceIdle"    # Z

    .prologue
    .line 955
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    and-int/lit8 v1, v0, -0x5

    .line 956
    if-eqz p1, :cond_0

    const/4 v0, 0x4

    .line 955
    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    .line 957
    return-object p0

    .line 956
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;
    .locals 2
    .param p1, "storageNotLow"    # Z

    .prologue
    .line 968
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    and-int/lit8 v1, v0, -0x9

    .line 969
    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 968
    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    .line 970
    return-object p0

    .line 969
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTransientExtras(Landroid/os/Bundle;)Landroid/app/job/JobInfo$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 875
    iput-object p1, p0, Landroid/app/job/JobInfo$Builder;->mTransientExtras:Landroid/os/Bundle;

    .line 876
    return-object p0
.end method

.method public setTriggerContentMaxDelay(J)Landroid/app/job/JobInfo$Builder;
    .locals 1
    .param p1, "durationMs"    # J

    .prologue
    .line 1024
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentMaxDelay:J

    .line 1025
    return-object p0
.end method

.method public setTriggerContentUpdateDelay(J)Landroid/app/job/JobInfo$Builder;
    .locals 1
    .param p1, "durationMs"    # J

    .prologue
    .line 1014
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUpdateDelay:J

    .line 1015
    return-object p0
.end method
