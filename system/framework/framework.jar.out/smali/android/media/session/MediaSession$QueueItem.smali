.class public final Landroid/media/session/MediaSession$QueueItem;
.super Ljava/lang/Object;
.source "MediaSession.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QueueItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/MediaSession$QueueItem$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_ID:I = -0x1


# instance fields
.field private final mDescription:Landroid/media/MediaDescription;

.field private final mId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1276
    new-instance v0, Landroid/media/session/MediaSession$QueueItem$1;

    invoke-direct {v0}, Landroid/media/session/MediaSession$QueueItem$1;-><init>()V

    sput-object v0, Landroid/media/session/MediaSession$QueueItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1219
    return-void
.end method

.method public constructor <init>(Landroid/media/MediaDescription;J)V
    .locals 2
    .param p1, "description"    # Landroid/media/MediaDescription;
    .param p2, "id"    # J

    .prologue
    .line 1235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1236
    if-nez p1, :cond_0

    .line 1237
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Description cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1239
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 1240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Id cannot be QueueItem.UNKNOWN_ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1242
    :cond_1
    iput-object p1, p0, Landroid/media/session/MediaSession$QueueItem;->mDescription:Landroid/media/MediaDescription;

    .line 1243
    iput-wide p2, p0, Landroid/media/session/MediaSession$QueueItem;->mId:J

    .line 1244
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1247
    sget-object v0, Landroid/media/MediaDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaDescription;

    iput-object v0, p0, Landroid/media/session/MediaSession$QueueItem;->mDescription:Landroid/media/MediaDescription;

    .line 1248
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/session/MediaSession$QueueItem;->mId:J

    .line 1249
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/session/MediaSession$QueueItem;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "-this1"    # Landroid/media/session/MediaSession$QueueItem;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/session/MediaSession$QueueItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1273
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 1298
    if-nez p1, :cond_0

    .line 1299
    return v6

    .line 1302
    :cond_0
    instance-of v1, p1, Landroid/media/session/MediaSession$QueueItem;

    if-nez v1, :cond_1

    .line 1303
    return v6

    :cond_1
    move-object v0, p1

    .line 1306
    check-cast v0, Landroid/media/session/MediaSession$QueueItem;

    .line 1307
    .local v0, "item":Landroid/media/session/MediaSession$QueueItem;
    iget-wide v2, p0, Landroid/media/session/MediaSession$QueueItem;->mId:J

    iget-wide v4, v0, Landroid/media/session/MediaSession$QueueItem;->mId:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 1308
    return v6

    .line 1311
    :cond_2
    iget-object v1, p0, Landroid/media/session/MediaSession$QueueItem;->mDescription:Landroid/media/MediaDescription;

    iget-object v2, v0, Landroid/media/session/MediaSession$QueueItem;->mDescription:Landroid/media/MediaDescription;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1312
    return v6

    .line 1315
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public getDescription()Landroid/media/MediaDescription;
    .locals 1

    .prologue
    .line 1255
    iget-object v0, p0, Landroid/media/session/MediaSession$QueueItem;->mDescription:Landroid/media/MediaDescription;

    return-object v0
.end method

.method public getQueueId()J
    .locals 2

    .prologue
    .line 1262
    iget-wide v0, p0, Landroid/media/session/MediaSession$QueueItem;->mId:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MediaSession.QueueItem {Description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1292
    iget-object v1, p0, Landroid/media/session/MediaSession$QueueItem;->mDescription:Landroid/media/MediaDescription;

    .line 1291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1293
    const-string/jumbo v1, ", Id="

    .line 1291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1293
    iget-wide v2, p0, Landroid/media/session/MediaSession$QueueItem;->mId:J

    .line 1291
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1293
    const-string/jumbo v1, " }"

    .line 1291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1267
    iget-object v0, p0, Landroid/media/session/MediaSession$QueueItem;->mDescription:Landroid/media/MediaDescription;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDescription;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1268
    iget-wide v0, p0, Landroid/media/session/MediaSession$QueueItem;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1269
    return-void
.end method
