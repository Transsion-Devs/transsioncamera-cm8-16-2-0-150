.class public Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static COMMANDS:[Ljava/lang/String; = null

.field private static TAG:Ljava/lang/String; = "VECloudCtrlManager"

.field private static volatile mTECloudCtrlManager:Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;


# instance fields
.field private mCloudCtrlInvoker:Lcom/ss/android/ttve/common/TECloudCtrlInvoker;

.field private mLogStatus:Z

.field private mWorkpsace:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    const-string v0, "vesdk_log_command"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->COMMANDS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->mLogStatus:Z

    .line 48
    new-instance v0, Lcom/ss/android/ttve/common/TECloudCtrlInvoker;

    invoke-direct {v0}, Lcom/ss/android/ttve/common/TECloudCtrlInvoker;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->mCloudCtrlInvoker:Lcom/ss/android/ttve/common/TECloudCtrlInvoker;

    return-void
.end method

.method private doCommand(Ljava/lang/String;Ljava/lang/String;)I
    .registers 16

    .line 62
    const-string v0, "sign"

    const-string v1, "level"

    const-string v2, "endtime"

    const-string v3, "starttime"

    const-string v4, "enable"

    const-string v5, ""

    const/4 v6, -0x1

    .line 64
    :try_start_d
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v8, 0x79ce163c

    if-eq p2, v8, :cond_1d

    goto/16 :goto_15a

    :cond_1d
    const-string p2, "vesdk_log_command"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15a

    .line 73
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_29} :catch_32

    const-string v8, "false"

    if-eqz p2, :cond_35

    .line 74
    :try_start_2d
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_36

    :catch_32
    move-exception p2

    goto/16 :goto_163

    :cond_35
    move-object p2, v8

    .line 77
    :goto_36
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3a} :catch_32

    const-string v9, "2018-12-08 00:00:00"

    if-eqz v4, :cond_43

    .line 78
    :try_start_3e
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_44

    :cond_43
    move-object v3, v9

    .line 81
    :goto_44
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 82
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 85
    :cond_4e
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 86
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5a

    :cond_59
    move-object v1, v5

    .line 89
    :goto_5a
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 90
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_66

    :cond_65
    move-object v0, v5

    .line 93
    :goto_66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    iget-object v4, p0, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->mCloudCtrlInvoker:Lcom/ss/android/ttve/common/TECloudCtrlInvoker;

    invoke-virtual {v4, v2, v0}, Lcom/ss/android/ttve/common/TECloudCtrlInvoker;->verifyJson(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_91

    .line 95
    invoke-direct {p0, p1, v5}, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->storeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object p2, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->TAG:Ljava/lang/String;

    const-string v0, "Cloud Ctrl Command Json is doctored"

    invoke-static {p2, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    .line 100
    :cond_91
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 102
    invoke-virtual {v0, v9}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 105
    sget-object v0, Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;->LEVEL0:Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;

    .line 106
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v4, 0x44

    if-eq v0, v4, :cond_b7

    goto :goto_c2

    :cond_b7
    const-string v0, "D"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 108
    sget-object v0, Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;->LEVEL0:Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;

    goto :goto_c4

    .line 111
    :cond_c2
    :goto_c2
    sget-object v0, Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;->LEVEL3:Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;

    .line 115
    :goto_c4
    iget-boolean v1, p0, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->mLogStatus:Z

    const/4 v4, 0x0

    if-nez v1, :cond_123

    const-string v1, "true"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_123

    cmp-long v1, v11, v2

    if-ltz v1, :cond_123

    cmp-long v1, v11, v9

    if-gez v1, :cond_123

    .line 116
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->mWorkpsace:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/vesdklog"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 117
    sget-object v1, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->TAG:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/ss/android/ttve/common/TESpdLogManager;->getInstance()Lcom/ss/android/ttve/common/TESpdLogManager;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {v1, p2, v2, v3}, Lcom/ss/android/ttve/common/TESpdLogManager;->initSpdLog(Ljava/lang/String;II)I

    move-result p2

    if-gez p2, :cond_118

    .line 120
    sget-object v0, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " TESpdLog init fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x3

    return p0

    .line 124
    :cond_118
    invoke-static {}, Lcom/ss/android/ttve/common/TESpdLogManager;->getInstance()Lcom/ss/android/ttve/common/TESpdLogManager;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/ss/android/ttve/common/TESpdLogManager;->setLevel(Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;)V

    const/4 p2, 0x1

    .line 125
    iput-boolean p2, p0, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->mLogStatus:Z

    return v4

    .line 126
    :cond_123
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_133

    cmp-long p2, v11, v2

    if-gez p2, :cond_132

    cmp-long p2, v11, v9

    if-ltz p2, :cond_132

    goto :goto_133

    :cond_132
    return v4

    .line 127
    :cond_133
    :goto_133
    iget-boolean p2, p0, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->mLogStatus:Z

    if-eqz p2, :cond_140

    .line 128
    invoke-static {}, Lcom/ss/android/ttve/common/TESpdLogManager;->getInstance()Lcom/ss/android/ttve/common/TESpdLogManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ss/android/ttve/common/TESpdLogManager;->close()V

    .line 129
    iput-boolean v4, p0, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->mLogStatus:Z

    .line 131
    :cond_140
    sget-object p2, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " expired"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-direct {p0, p1, v5}, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->storeCommand(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 137
    :cond_15a
    :goto_15a
    sget-object p2, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->TAG:Ljava/lang/String;

    const-string v0, " json contail invalid command "

    invoke-static {p2, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_161
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_161} :catch_32

    const/4 p0, -0x2

    return p0

    .line 143
    :goto_163
    sget-object v0, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " json parse failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-direct {p0, p1, v5}, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->storeCommand(Ljava/lang/String;Ljava/lang/String;)V

    return v6
.end method

.method public static getInstance()Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;
    .registers 2

    .line 37
    sget-object v0, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->mTECloudCtrlManager:Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;

    if-nez v0, :cond_19

    .line 38
    const-class v0, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;

    monitor-enter v0

    .line 39
    :try_start_7
    sget-object v1, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->mTECloudCtrlManager:Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;

    if-nez v1, :cond_15

    .line 40
    new-instance v1, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;

    invoke-direct {v1}, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;-><init>()V

    sput-object v1, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->mTECloudCtrlManager:Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;

    goto :goto_15

    :catchall_13
    move-exception v1

    goto :goto_17

    .line 41
    :cond_15
    :goto_15
    monitor-exit v0

    goto :goto_19

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    throw v1

    .line 43
    :cond_19
    :goto_19
    sget-object v0, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->mTECloudCtrlManager:Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;

    return-object v0
.end method

.method private storeCommand(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 58
    invoke-static {}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->getInstance()Lcom/ss/android/vesdk/runtime/persistence/VESP;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public closeCloudControlRes()V
    .registers 2

    .line 188
    iget-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->mLogStatus:Z

    if-eqz v0, :cond_e

    .line 189
    invoke-static {}, Lcom/ss/android/ttve/common/TESpdLogManager;->getInstance()Lcom/ss/android/ttve/common/TESpdLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/ttve/common/TESpdLogManager;->close()V

    const/4 v0, 0x0

    .line 190
    iput-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->mLogStatus:Z

    :cond_e
    return-void
.end method

.method public execStoredCommands(Ljava/lang/String;)V
    .registers 7

    .line 156
    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->mWorkpsace:Ljava/lang/String;

    .line 157
    sget-object p1, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->COMMANDS:[Ljava/lang/String;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_22

    aget-object v2, p1, v1

    .line 158
    invoke-static {}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->getInstance()Lcom/ss/android/vesdk/runtime/persistence/VESP;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v2, v4}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 159
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 160
    invoke-direct {p0, v2, v3}, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->doCommand(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_22
    return-void
.end method

.method public storeCloudControlCommand(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 171
    sget-object v0, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->TAG:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 174
    const-string p2, "command"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 175
    invoke-static {}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->getInstance()Lcom/ss/android/vesdk/runtime/persistence/VESP;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->init(Landroid/content/Context;)V

    .line 176
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->storeCommand(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception p0

    .line 178
    sget-object p1, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " json parse failed "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
