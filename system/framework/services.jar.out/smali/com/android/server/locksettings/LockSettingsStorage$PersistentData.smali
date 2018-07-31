.class public Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;
.super Ljava/lang/Object;
.source "LockSettingsStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersistentData"
.end annotation


# static fields
.field public static final NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_SP:I = 0x1

.field public static final TYPE_SP_WEAVER:I = 0x2

.field static final VERSION_1:B = 0x1t

.field static final VERSION_1_HEADER_SIZE:I = 0xa


# instance fields
.field final payload:[B

.field final qualityForUi:I

.field final type:I

.field final userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 641
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    .line 642
    const/16 v1, -0x2710

    const/4 v2, 0x0

    .line 641
    invoke-direct {v0, v3, v1, v3, v2}, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;-><init>(III[B)V

    sput-object v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    .line 633
    return-void
.end method

.method private constructor <init>(III[B)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "userId"    # I
    .param p3, "qualityForUi"    # I
    .param p4, "payload"    # [B

    .prologue
    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 650
    iput p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    .line 651
    iput p2, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->userId:I

    .line 652
    iput p3, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->qualityForUi:I

    .line 653
    iput-object p4, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    .line 654
    return-void
.end method

.method public static fromBytes([B)Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;
    .locals 11
    .param p0, "frpData"    # [B

    .prologue
    const/4 v10, 0x0

    .line 657
    if-eqz p0, :cond_0

    array-length v7, p0

    if-nez v7, :cond_1

    .line 658
    :cond_0
    sget-object v7, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    return-object v7

    .line 661
    :cond_1
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 663
    .local v1, "is":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    .line 664
    .local v6, "version":B
    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 665
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    and-int/lit16 v4, v7, 0xff

    .line 666
    .local v4, "type":I
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 667
    .local v5, "userId":I
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 668
    .local v3, "qualityForUi":I
    array-length v7, p0

    add-int/lit8 v7, v7, -0xa

    new-array v2, v7, [B

    .line 669
    .local v2, "payload":[B
    array-length v7, v2

    const/16 v8, 0xa

    const/4 v9, 0x0

    invoke-static {p0, v8, v2, v9, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 670
    new-instance v7, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    invoke-direct {v7, v4, v5, v3, v2}, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;-><init>(III[B)V

    return-object v7

    .line 672
    .end local v2    # "payload":[B
    .end local v3    # "qualityForUi":I
    .end local v4    # "type":I
    .end local v5    # "userId":I
    :cond_2
    const-string/jumbo v7, "LockSettingsStorage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown PersistentData version code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    return-object v10

    .line 675
    .end local v6    # "version":B
    :catch_0
    move-exception v0

    .line 676
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v7, "LockSettingsStorage"

    const-string/jumbo v8, "Could not parse PersistentData"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 677
    return-object v10
.end method

.method public static toBytes(III[B)[B
    .locals 6
    .param p0, "persistentType"    # I
    .param p1, "userId"    # I
    .param p2, "qualityForUi"    # I
    .param p3, "payload"    # [B

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 683
    if-nez p0, :cond_1

    .line 684
    if-nez p3, :cond_0

    .line 685
    :goto_0
    const-string/jumbo v4, "TYPE_NONE must have empty payload"

    .line 684
    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 686
    return-object v5

    :cond_0
    move v3, v4

    .line 684
    goto :goto_0

    .line 688
    :cond_1
    if-eqz p3, :cond_2

    array-length v5, p3

    if-lez v5, :cond_2

    move v4, v3

    .line 689
    :cond_2
    const-string/jumbo v3, "empty payload must only be used with TYPE_NONE"

    .line 688
    invoke-static {v4, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 691
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 692
    array-length v3, p3

    add-int/lit8 v3, v3, 0xa

    .line 691
    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 693
    .local v2, "os":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 695
    .local v0, "dos":Ljava/io/DataOutputStream;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 696
    invoke-virtual {v0, p0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 697
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 698
    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 699
    invoke-virtual {v0, p3}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 700
    :catch_0
    move-exception v1

    .line 701
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "ByteArrayOutputStream cannot throw IOException"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
