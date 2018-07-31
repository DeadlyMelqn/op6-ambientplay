.class Lcom/android/server/AppOpsService$Shell;
.super Landroid/os/ShellCommand;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Shell"
.end annotation


# instance fields
.field final mInterface:Lcom/android/internal/app/IAppOpsService;

.field final mInternal:Lcom/android/server/AppOpsService;

.field mode:I

.field modeStr:Ljava/lang/String;

.field nonpackageUid:I

.field op:I

.field opStr:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field packageUid:I

.field userId:I


# direct methods
.method constructor <init>(Lcom/android/internal/app/IAppOpsService;Lcom/android/server/AppOpsService;)V
    .locals 1
    .param p1, "iface"    # Lcom/android/internal/app/IAppOpsService;
    .param p2, "internal"    # Lcom/android/server/AppOpsService;

    .prologue
    .line 2036
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2027
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    .line 2037
    iput-object p1, p0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 2038
    iput-object p2, p0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    .line 2039
    return-void
.end method

.method private strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .locals 4
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "err"    # Ljava/io/PrintWriter;

    .prologue
    .line 2054
    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 2055
    :catch_0
    move-exception v0

    .line 2058
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    .line 2059
    :catch_1
    move-exception v1

    .line 2062
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-static {p1}, Landroid/app/AppOpsManager;->strDebugOpToOp(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    return v2

    .line 2063
    :catch_2
    move-exception v0

    .line 2064
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2065
    const/4 v2, -0x1

    return v2
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 2043
    invoke-static {p0, p1}, Lcom/android/server/AppOpsService;->onShellCommand(Lcom/android/server/AppOpsService$Shell;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onHelp()V
    .locals 1

    .prologue
    .line 2048
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2049
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-static {v0}, Lcom/android/server/AppOpsService;->dumpCommandHelp(Ljava/io/PrintWriter;)V

    .line 2050
    return-void
.end method

.method parseUserOpMode(ILjava/io/PrintWriter;)I
    .locals 5
    .param p1, "defMode"    # I
    .param p2, "err"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 2089
    const/4 v1, -0x2

    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    .line 2090
    iput-object v2, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 2091
    iput-object v2, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    .line 2092
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .local v0, "argument":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 2093
    const-string/jumbo v1, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2094
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    goto :goto_0

    .line 2096
    :cond_1
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 2097
    iput-object v0, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    goto :goto_0

    .line 2098
    :cond_2
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2099
    iput-object v0, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    .line 2104
    :cond_3
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 2105
    const-string/jumbo v1, "Error: Operation not specified."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2106
    return v3

    .line 2108
    :cond_4
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/android/server/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v1

    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    .line 2109
    iget v1, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    if-gez v1, :cond_5

    .line 2110
    return v3

    .line 2112
    :cond_5
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 2113
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v1

    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->mode:I

    if-gez v1, :cond_7

    .line 2114
    return v3

    .line 2117
    :cond_6
    iput p1, p0, Lcom/android/server/AppOpsService$Shell;->mode:I

    .line 2119
    :cond_7
    return v4
.end method

.method parseUserPackageOp(ZLjava/io/PrintWriter;)I
    .locals 13
    .param p1, "reqOp"    # Z
    .param p2, "err"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2123
    const/4 v9, -0x2

    iput v9, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    .line 2124
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 2125
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 2126
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .local v0, "argument":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 2127
    const-string/jumbo v9, "--user"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2128
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    goto :goto_0

    .line 2130
    :cond_1
    iget-object v9, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-nez v9, :cond_2

    .line 2131
    iput-object v0, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 2132
    :cond_2
    iget-object v9, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v9, :cond_0

    .line 2133
    iput-object v0, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 2138
    :cond_3
    iget-object v9, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-nez v9, :cond_4

    .line 2139
    const-string/jumbo v9, "Error: Package name not specified."

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2140
    const/4 v9, -0x1

    return v9

    .line 2141
    :cond_4
    iget-object v9, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v9, :cond_5

    if-eqz p1, :cond_5

    .line 2142
    const-string/jumbo v9, "Error: Operation not specified."

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2143
    const/4 v9, -0x1

    return v9

    .line 2145
    :cond_5
    iget-object v9, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 2146
    iget-object v9, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    invoke-direct {p0, v9, p2}, Lcom/android/server/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v9

    iput v9, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    .line 2147
    iget v9, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    if-gez v9, :cond_7

    .line 2148
    const/4 v9, -0x1

    return v9

    .line 2151
    :cond_6
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    .line 2153
    :cond_7
    iget v9, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_8

    .line 2154
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    iput v9, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    .line 2156
    :cond_8
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I

    .line 2158
    :try_start_0
    iget-object v9, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2161
    :goto_1
    iget v9, p0, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_b

    iget-object v9, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_b

    iget-object v9, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x75

    if-ne v9, v10, :cond_b

    .line 2162
    iget-object v9, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/16 v10, 0x2e

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-gez v9, :cond_b

    .line 2163
    const/4 v2, 0x1

    .line 2164
    .local v2, "i":I
    :goto_2
    iget-object v9, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_9

    iget-object v9, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x30

    if-lt v9, v10, :cond_9

    .line 2165
    iget-object v9, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x39

    if-gt v9, v10, :cond_9

    .line 2166
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2168
    :cond_9
    const/4 v9, 0x1

    if-le v2, v9, :cond_b

    iget-object v9, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_b

    .line 2169
    iget-object v9, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-virtual {v9, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 2171
    .local v8, "userStr":Ljava/lang/String;
    :try_start_1
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2172
    .local v7, "user":I
    iget-object v9, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 2173
    .local v4, "type":C
    add-int/lit8 v2, v2, 0x1

    .line 2174
    move v3, v2

    .line 2175
    .local v3, "startTypeVal":I
    :goto_3
    iget-object v9, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_a

    iget-object v9, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x30

    if-lt v9, v10, :cond_a

    .line 2176
    iget-object v9, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x39

    if-gt v9, v10, :cond_a

    .line 2177
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2179
    :cond_a
    if-le v2, v3, :cond_b

    .line 2180
    iget-object v9, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 2182
    .local v6, "typeValStr":Ljava/lang/String;
    :try_start_2
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2183
    .local v5, "typeVal":I
    const/16 v9, 0x61

    if-ne v4, v9, :cond_d

    .line 2185
    add-int/lit16 v9, v5, 0x2710

    .line 2184
    invoke-static {v7, v9}, Landroid/os/UserHandle;->getUid(II)I

    move-result v9

    iput v9, p0, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2196
    .end local v2    # "i":I
    .end local v3    # "startTypeVal":I
    .end local v4    # "type":C
    .end local v5    # "typeVal":I
    .end local v6    # "typeValStr":Ljava/lang/String;
    .end local v7    # "user":I
    .end local v8    # "userStr":Ljava/lang/String;
    :cond_b
    :goto_4
    iget v9, p0, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_e

    .line 2197
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 2210
    :cond_c
    const/4 v9, 0x0

    return v9

    .line 2186
    .restart local v2    # "i":I
    .restart local v3    # "startTypeVal":I
    .restart local v4    # "type":C
    .restart local v5    # "typeVal":I
    .restart local v6    # "typeValStr":Ljava/lang/String;
    .restart local v7    # "user":I
    .restart local v8    # "userStr":Ljava/lang/String;
    :cond_d
    const/16 v9, 0x73

    if-ne v4, v9, :cond_b

    .line 2187
    :try_start_3
    invoke-static {v7, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v9

    iput v9, p0, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 2189
    .end local v5    # "typeVal":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_4

    .line 2199
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "i":I
    .end local v3    # "startTypeVal":I
    .end local v4    # "type":C
    .end local v6    # "typeValStr":Ljava/lang/String;
    .end local v7    # "user":I
    .end local v8    # "userStr":Ljava/lang/String;
    :cond_e
    const-string/jumbo v9, "root"

    iget-object v10, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 2200
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    .line 2205
    :goto_5
    iget v9, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    if-gez v9, :cond_c

    .line 2206
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error: No UID for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " in user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2207
    const/4 v9, -0x1

    return v9

    .line 2202
    :cond_f
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 2203
    iget v11, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    const/16 v12, 0x2000

    .line 2202
    invoke-interface {v9, v10, v12, v11}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v9

    iput v9, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    goto :goto_5

    .line 2192
    .restart local v2    # "i":I
    .restart local v8    # "userStr":Ljava/lang/String;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    goto :goto_4

    .line 2159
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "i":I
    .end local v8    # "userStr":Ljava/lang/String;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_1
.end method

.method strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .locals 3
    .param p1, "modeStr"    # Ljava/lang/String;
    .param p2, "err"    # Ljava/io/PrintWriter;

    .prologue
    .line 2070
    const-string/jumbo v1, "allow"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2072
    const/4 v1, 0x0

    return v1

    .line 2070
    :cond_0
    const-string/jumbo v1, "deny"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2074
    const/4 v1, 0x2

    return v1

    .line 2070
    :cond_1
    const-string/jumbo v1, "ignore"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2076
    const/4 v1, 0x1

    return v1

    .line 2070
    :cond_2
    const-string/jumbo v1, "default"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2078
    const/4 v1, 0x3

    return v1

    .line 2081
    :cond_3
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2082
    :catch_0
    move-exception v0

    .line 2084
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error: Mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not valid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2085
    const/4 v1, -0x1

    return v1
.end method
