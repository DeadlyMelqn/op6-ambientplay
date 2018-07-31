.class Lcom/android/server/StorageManagerService$MountObbAction;
.super Lcom/android/server/StorageManagerService$ObbAction;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountObbAction"
.end annotation


# instance fields
.field private final mCallingUid:I

.field private final mKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/StorageManagerService;
    .param p2, "obbState"    # Lcom/android/server/StorageManagerService$ObbState;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "callingUid"    # I

    .prologue
    .line 3776
    iput-object p1, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    .line 3777
    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService$ObbAction;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V

    .line 3778
    iput-object p3, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mKey:Ljava/lang/String;

    .line 3779
    iput p4, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mCallingUid:I

    .line 3780
    return-void
.end method


# virtual methods
.method public handleError()V
    .locals 1

    .prologue
    .line 3858
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService$MountObbAction;->sendNewStatusOrIgnore(I)V

    .line 3859
    return-void
.end method

.method public handleExecute()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3784
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v13}, Lcom/android/server/StorageManagerService;->-wrap16(Lcom/android/server/StorageManagerService;)V

    .line 3785
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v13}, Lcom/android/server/StorageManagerService;->-wrap17(Lcom/android/server/StorageManagerService;)V

    .line 3787
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/StorageManagerService$MountObbAction;->getObbInfo()Landroid/content/res/ObbInfo;

    move-result-object v11

    .line 3789
    .local v11, "obbInfo":Landroid/content/res/ObbInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v14, v11, Landroid/content/res/ObbInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/StorageManagerService$MountObbAction;->mCallingUid:I

    invoke-static {v13, v14, v15}, Lcom/android/server/StorageManagerService;->-wrap2(Lcom/android/server/StorageManagerService;Ljava/lang/String;I)Z

    move-result v13

    if-nez v13, :cond_0

    .line 3790
    const-string/jumbo v13, "StorageManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Denied attempt to mount OBB "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v11, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 3791
    const-string/jumbo v15, " which is owned by "

    .line 3790
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 3791
    iget-object v15, v11, Landroid/content/res/ObbInfo;->packageName:Ljava/lang/String;

    .line 3790
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3792
    const/16 v13, 0x19

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/StorageManagerService$MountObbAction;->sendNewStatusOrIgnore(I)V

    .line 3793
    return-void

    .line 3797
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v13}, Lcom/android/server/StorageManagerService;->-get10(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v14

    monitor-enter v14

    .line 3798
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v13}, Lcom/android/server/StorageManagerService;->-get11(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v15, v15, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v13, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .local v8, "isMounted":Z
    monitor-exit v14

    .line 3800
    if-eqz v8, :cond_1

    .line 3801
    const-string/jumbo v13, "StorageManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Attempt to mount OBB which is already mounted: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v11, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3802
    const/16 v13, 0x18

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/StorageManagerService$MountObbAction;->sendNewStatusOrIgnore(I)V

    .line 3803
    return-void

    .line 3797
    .end local v8    # "isMounted":Z
    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13

    .line 3807
    .restart local v8    # "isMounted":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/StorageManagerService$MountObbAction;->mKey:Ljava/lang/String;

    if-nez v13, :cond_3

    .line 3808
    const-string/jumbo v7, "none"

    .line 3829
    .local v7, "hashedKey":Ljava/lang/String;
    :goto_0
    const/4 v12, 0x0

    .line 3831
    .local v12, "rc":I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v13}, Lcom/android/server/StorageManagerService;->-get1(Lcom/android/server/StorageManagerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v13

    const-string/jumbo v14, "obb"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const-string/jumbo v16, "mount"

    const/16 v17, 0x0

    aput-object v16, v15, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aput-object v16, v15, v17

    new-instance v16, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/16 v17, 0x2

    aput-object v16, v15, v17

    .line 3832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/StorageManagerService$ObbState;->ownerGid:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x3

    aput-object v16, v15, v17

    .line 3831
    invoke-virtual {v13, v14, v15}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3840
    :cond_2
    :goto_1
    if-nez v12, :cond_4

    .line 3844
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v13}, Lcom/android/server/StorageManagerService;->-get10(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v14

    monitor-enter v14

    .line 3845
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    invoke-static {v13, v15}, Lcom/android/server/StorageManagerService;->-wrap4(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v14

    .line 3848
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/StorageManagerService$MountObbAction;->sendNewStatusOrIgnore(I)V

    .line 3854
    :goto_2
    return-void

    .line 3811
    .end local v7    # "hashedKey":Ljava/lang/String;
    .end local v12    # "rc":I
    :cond_3
    :try_start_3
    const-string/jumbo v13, "PBKDF2WithHmacSHA1"

    invoke-static {v13}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v6

    .line 3813
    .local v6, "factory":Ljavax/crypto/SecretKeyFactory;
    new-instance v10, Ljavax/crypto/spec/PBEKeySpec;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/StorageManagerService$MountObbAction;->mKey:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->toCharArray()[C

    move-result-object v13

    iget-object v14, v11, Landroid/content/res/ObbInfo;->salt:[B

    .line 3814
    const/16 v15, 0x400

    const/16 v16, 0x80

    .line 3813
    move/from16 v0, v16

    invoke-direct {v10, v13, v14, v15, v0}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 3815
    .local v10, "ks":Ljava/security/spec/KeySpec;
    invoke-virtual {v6, v10}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v9

    .line 3816
    .local v9, "key":Ljavax/crypto/SecretKey;
    new-instance v1, Ljava/math/BigInteger;

    invoke-interface {v9}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v13

    invoke-direct {v1, v13}, Ljava/math/BigInteger;-><init>([B)V

    .line 3817
    .local v1, "bi":Ljava/math/BigInteger;
    const/16 v13, 0x10

    invoke-virtual {v1, v13}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v7

    .restart local v7    # "hashedKey":Ljava/lang/String;
    goto/16 :goto_0

    .line 3822
    .end local v1    # "bi":Ljava/math/BigInteger;
    .end local v6    # "factory":Ljavax/crypto/SecretKeyFactory;
    .end local v7    # "hashedKey":Ljava/lang/String;
    .end local v9    # "key":Ljavax/crypto/SecretKey;
    .end local v10    # "ks":Ljava/security/spec/KeySpec;
    :catch_0
    move-exception v5

    .line 3823
    .local v5, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string/jumbo v13, "StorageManagerService"

    const-string/jumbo v14, "Invalid key spec when loading PBKDF2 algorithm"

    invoke-static {v13, v14, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3824
    const/16 v13, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/StorageManagerService$MountObbAction;->sendNewStatusOrIgnore(I)V

    .line 3825
    return-void

    .line 3818
    .end local v5    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_1
    move-exception v4

    .line 3819
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v13, "StorageManagerService"

    const-string/jumbo v14, "Could not load PBKDF2 algorithm"

    invoke-static {v13, v14, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3820
    const/16 v13, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/StorageManagerService$MountObbAction;->sendNewStatusOrIgnore(I)V

    .line 3821
    return-void

    .line 3833
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v7    # "hashedKey":Ljava/lang/String;
    .restart local v12    # "rc":I
    :catch_2
    move-exception v3

    .line 3834
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    .line 3835
    .local v2, "code":I
    const/16 v13, 0x195

    if-eq v2, v13, :cond_2

    .line 3836
    const/4 v12, -0x1

    goto :goto_1

    .line 3844
    .end local v2    # "code":I
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_1
    move-exception v13

    monitor-exit v14

    throw v13

    .line 3850
    :cond_4
    const-string/jumbo v13, "StorageManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Couldn\'t mount OBB file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3852
    const/16 v13, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/StorageManagerService$MountObbAction;->sendNewStatusOrIgnore(I)V

    goto/16 :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3864
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "MountObbAction{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3865
    iget-object v1, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3866
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3867
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
