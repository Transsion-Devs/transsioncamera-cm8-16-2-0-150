.class public abstract Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mConfigVersion:Ljava/lang/String;

.field protected final mContext:Landroid/content/Context;

.field protected final mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private final mParseHandler:Landroid/os/Handler;

.field protected mProcessConfigCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;

.field private suggestInterval:J


# direct methods
.method public static synthetic $r8$lambda$kj1aE6dQRk3EsdwTp71M6_2eFPc(Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;ZLjava/lang/String;Landroid/content/Context;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->lambda$processConfig$0(ZLjava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 53
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PPBM"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 59
    iput-wide v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->suggestInterval:J

    .line 62
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->mContext:Landroid/content/Context;

    .line 63
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 64
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "CAM_PortaraitConfigParse"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->mParseHandler:Landroid/os/Handler;

    return-void
.end method

.method private getConfigResID(Landroid/content/Context;Ljava/lang/String;)I
    .registers 6

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 139
    sget-object p2, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getConfigResID] configName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "portrait_arch_parameter"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 140
    const-string v0, "raw"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, v0, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-gtz p0, :cond_2f

    .line 142
    const-string p0, "[getConfigResID] red config error"

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 145
    :cond_2f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  resId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method private synthetic lambda$processConfig$0(ZLjava/lang/String;Landroid/content/Context;)V
    .registers 14

    const/4 v5, 0x1

    .line 88
    const-string v4, "local_web"

    if-nez p1, :cond_81

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/vendor/camera_portrait/config/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".json"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/PortraitFileUtils;->readDataByRandomAccessFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    sget-object v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "      data  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 92
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_60

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p2

    .line 93
    invoke-direct/range {v1 .. v7}, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->parseData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  dataSource is data/vendor/camera_portrait"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_74

    .line 97
    :cond_60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  dataSource is app"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 100
    :goto_74
    const-string v0, "portrait_arch_parameter"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    if-nez v5, :cond_7f

    return-void

    :cond_7f
    :goto_7f
    move v8, v5

    goto :goto_83

    :cond_81
    const/4 v2, 0x0

    goto :goto_7f

    .line 107
    :goto_83
    :try_start_83
    invoke-direct {p0, p3, p2, v4}, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->readFileFromResourceRaw(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_94

    .line 109
    sget-object v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "processConfig   config file open error!!! "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catch_91
    move-exception v0

    move-object v9, v2

    goto :goto_97

    .line 112
    :cond_94
    const-string v4, "local_original"
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_96} :catch_91

    goto :goto_c6

    .line 114
    :goto_97
    sget-object v1, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processConfig  Exception   "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move-object v1, v0

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->mProcessConfigCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;

    if-eqz v0, :cond_c5

    .line 116
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->getConfigVersion()Ljava/lang/String;

    move-result-object v6

    move-object v3, v1

    const/4 v1, 0x0

    const v2, 0xc355

    move-object v5, v4

    move-object v4, p2

    invoke-interface/range {v0 .. v6}, Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;->processEnd(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    :cond_c5
    move-object v2, v9

    :goto_c6
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p2

    move v5, v8

    .line 119
    invoke-direct/range {v1 .. v7}, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->parseData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method private loadData(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    .line 154
    const-string v1, ""

    .line 156
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    :goto_11
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    :catchall_1b
    move-exception v0

    move-object p0, v0

    goto :goto_6d

    :catch_1e
    move-exception v0

    goto :goto_3e

    .line 162
    :cond_20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    sget-object v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[loadData] string = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3a} :catch_1e
    .catchall {:try_start_2 .. :try_end_3a} :catchall_1b

    .line 170
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    return-object v1

    .line 165
    :goto_3e
    :try_start_3e
    sget-object v2, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[loadData]  Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 166
    iget-object v4, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->mProcessConfigCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;

    if-eqz v4, :cond_69

    .line 167
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->getConfigVersion()Ljava/lang/String;

    move-result-object v10

    const/4 v5, 0x0

    const v6, 0xc355

    move-object v8, p2

    move-object v9, p3

    invoke-interface/range {v4 .. v10}, Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;->processEnd(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_69
    .catchall {:try_start_3e .. :try_end_69} :catchall_1b

    .line 170
    :cond_69
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    return-object v1

    :goto_6d
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 171
    throw p0
.end method

.method private parseData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v0, p5

    .line 176
    const-string v2, "on"

    const-string/jumbo v3, "web"

    const-string/jumbo v7, "version"

    const-string v8, "code"

    const-string v9, "data"

    sget-object v10, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v11, "[parseData] start"

    invoke-static {v10, v11}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 178
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  fileName = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "  dataSource = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " isCurrentUseData ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, "  needSave = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 179
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6a

    .line 180
    const-string v0, "[parseData] json is Null !!!"

    invoke-static {v10, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 181
    iget-object v0, v1, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->mProcessConfigCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;

    if-eqz v0, :cond_26c

    .line 182
    const-string v3, "json is null !!!"

    invoke-virtual {v1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->getConfigVersion()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    const v2, 0xc357

    invoke-interface/range {v0 .. v6}, Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;->processEnd(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 187
    :cond_6a
    const-string v13, "0"

    .line 189
    :try_start_6c
    new-instance v14, Lorg/json/JSONObject;

    move-object/from16 v15, p1

    invoke-direct {v14, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_85

    .line 192
    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_85

    .line 193
    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_88

    :cond_85
    move-object v7, v1

    goto/16 :goto_255

    .line 200
    :cond_88
    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 201
    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_90
    .catch Lorg/json/JSONException; {:try_start_6c .. :try_end_90} :catch_101
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_6c .. :try_end_90} :catch_101
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_90} :catch_101

    .line 202
    :try_start_90
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[parseData] fileName = "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "    version = "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "  code = "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_b8
    .catch Lorg/json/JSONException; {:try_start_90 .. :try_end_b8} :catch_250
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_90 .. :try_end_b8} :catch_250
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_b8} :catch_250

    if-eqz v7, :cond_106

    .line 205
    :try_start_ba
    iget-object v7, v1, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v15, "key_portrait_architecture"

    invoke-virtual {v7}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v15, v2, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[parseData] settingSwitchState = "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 207
    const-string v7, "off"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_106

    if-nez p6, :cond_106

    invoke-virtual {v1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->getConfigVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_106

    .line 208
    iget-object v0, v1, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string/jumbo v3, "transsion.portrait_architecture_need_update"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v3, v2, v6, v7}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 209
    const-string v0, "[parseData] not need parse and download !"

    invoke-static {v10, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catch_101
    move-exception v0

    move-object v7, v1

    :goto_103
    move-object v6, v13

    goto/16 :goto_26d

    :cond_106
    if-eqz p5, :cond_153

    .line 215
    const-string v0, "suggest_interval"

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->suggestInterval:J

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide v15, v4

    iget-wide v4, v1, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->suggestInterval:J

    add-long/2addr v4, v15

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [parseData]  startWork suggestInterval = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->suggestInterval:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "     System.currentTimeMillis()  = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "    nextUpdateTime = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 218
    iget-object v2, v1, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string/jumbo v4, "transsion.portrait_architecture_next_update_time"

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v0, v5, v7}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_153
    .catch Lorg/json/JSONException; {:try_start_ba .. :try_end_153} :catch_101
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_ba .. :try_end_153} :catch_101
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_153} :catch_101

    :cond_153
    const/16 v0, 0xc8

    if-eq v8, v0, :cond_182

    .line 222
    :try_start_157
    iget-object v2, v1, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->mProcessConfigCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;

    if-eqz v2, :cond_26c

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " code = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_16c
    .catch Lorg/json/JSONException; {:try_start_157 .. :try_end_16c} :catch_17d
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_157 .. :try_end_16c} :catch_17d
    .catch Ljava/io/IOException; {:try_start_157 .. :try_end_16c} :catch_17d

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object v8, v13

    :try_start_173
    invoke-interface/range {v2 .. v8}, Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;->processEnd(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_176
    .catch Lorg/json/JSONException; {:try_start_173 .. :try_end_176} :catch_177
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_173 .. :try_end_176} :catch_177
    .catch Ljava/io/IOException; {:try_start_173 .. :try_end_176} :catch_177

    return-void

    :catch_177
    move-exception v0

    move-object v5, v7

    :goto_179
    move-object v7, v1

    :goto_17a
    move-object v6, v8

    goto/16 :goto_26d

    :catch_17d
    move-exception v0

    move-object/from16 v5, p3

    move-object v8, v13

    goto :goto_179

    :cond_182
    move-object/from16 v5, p3

    move-object v8, v13

    .line 228
    :try_start_185
    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b1

    .line 230
    invoke-static {v0}, Lcom/asa/wbcryptodecwrappercameraservice/WbcryptoDecWrapperCameraService;->ASA_Wbcrypto_Decrypt_String_Wrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wbcrypto_Dec_Wrapper   decStr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 232
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b5

    .line 233
    invoke-static {v0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/PortraitFileUtils;->gzipUncompress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1b1
    move-object v2, v0

    goto :goto_1c7

    :catch_1b3
    move-exception v0

    goto :goto_179

    .line 235
    :cond_1b5
    iget-object v2, v1, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->mProcessConfigCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;

    if-eqz v2, :cond_26c

    .line 236
    const-string v5, ""

    const/4 v3, 0x0

    const v4, 0xc351

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-interface/range {v2 .. v8}, Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;->processEnd(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 241
    :goto_1c7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[parseData]   dataJson = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 242
    iget-object v5, v1, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->mProcessConfigCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->processData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;Z)V
    :try_end_1e4
    .catch Lorg/json/JSONException; {:try_start_185 .. :try_end_1e4} :catch_1b3
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_185 .. :try_end_1e4} :catch_1b3
    .catch Ljava/io/IOException; {:try_start_185 .. :try_end_1e4} :catch_1b3

    move-object v7, v1

    move-object v4, v3

    .line 243
    :try_start_1e6
    invoke-virtual {v14, v9, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p5, :cond_21f

    .line 245
    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\"{"

    const-string/jumbo v2, "{"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "}\""

    const-string/jumbo v2, "}"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 248
    iget-object v1, v7, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v1, v0, v4}, Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/PortraitFileUtils;->writeDataByRandomAccessFile(Landroid/content/Context;[BLjava/lang/String;)V

    goto :goto_21f

    :catch_21c
    move-exception v0

    goto/16 :goto_17a

    :cond_21f
    :goto_21f
    if-eqz p4, :cond_23c

    .line 251
    iput-object v8, v7, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->mConfigVersion:Ljava/lang/String;

    .line 252
    invoke-virtual {v7, v8, v4}, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->reportConfigVersion(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[parseData] mConfigVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->mConfigVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 255
    :cond_23c
    iget-object v0, v7, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->mProcessConfigCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;

    if-eqz v0, :cond_297

    if-eqz p4, :cond_297

    .line 256
    const-string v3, ""
    :try_end_244
    .catch Lorg/json/JSONException; {:try_start_1e6 .. :try_end_244} :catch_21c
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1e6 .. :try_end_244} :catch_21c
    .catch Ljava/io/IOException; {:try_start_1e6 .. :try_end_244} :catch_21c

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object/from16 v5, p3

    move-object v6, v8

    :try_start_249
    invoke-interface/range {v0 .. v6}, Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;->processEnd(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24c
    .catch Lorg/json/JSONException; {:try_start_249 .. :try_end_24c} :catch_24d
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_249 .. :try_end_24c} :catch_24d
    .catch Ljava/io/IOException; {:try_start_249 .. :try_end_24c} :catch_24d

    goto :goto_297

    :catch_24d
    move-exception v0

    move-object v8, v6

    goto :goto_26d

    :catch_250
    move-exception v0

    move-object v7, v1

    move-object v8, v13

    goto/16 :goto_17a

    .line 194
    :goto_255
    :try_start_255
    iget-object v0, v7, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->mProcessConfigCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;

    if-eqz v0, :cond_26c

    .line 195
    const-string v3, ""

    const-string v6, "0"

    const/4 v1, 0x0

    const v2, 0xc355

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;->processEnd(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_268
    .catch Lorg/json/JSONException; {:try_start_255 .. :try_end_268} :catch_269
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_255 .. :try_end_268} :catch_269
    .catch Ljava/io/IOException; {:try_start_255 .. :try_end_268} :catch_269

    return-void

    :catch_269
    move-exception v0

    goto/16 :goto_103

    :cond_26c
    return-void

    .line 259
    :goto_26d
    sget-object v1, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseData : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 260
    iget-object v1, v7, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->mProcessConfigCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;

    if-eqz v1, :cond_297

    const v2, 0xc355

    .line 261
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v1

    const/4 v1, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;->processEnd(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_297
    :goto_297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v11

    .line 266
    sget-object v2, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[parseData] end , take time :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private readFileFromResourceRaw(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_b

    .line 126
    sget-object p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[readTextFileFromResource] fail !!!! context is null!!! "

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 129
    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->getConfigResID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_12

    return-object v0

    .line 133
    :cond_12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->loadData(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getConfigVersion()Ljava/lang/String;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->mConfigVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getSuggestInterval()J
    .registers 3

    .line 78
    iget-wide v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->suggestInterval:J

    return-wide v0
.end method

.method protected processCameraId(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 290
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(I)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 291
    const-string p0, "front"

    return-object p0

    .line 293
    :cond_d
    const-string p0, "back"

    return-object p0
.end method

.method public processConfig(Landroid/content/Context;Ljava/lang/String;ZLcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;)V
    .registers 6

    .line 82
    iput-object p4, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->mProcessConfigCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;

    .line 83
    iget-object p4, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->mParseHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;ZLjava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected processData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;Z)V
    .registers 6

    return-void
.end method

.method public processWebParameterConfig([BLjava/lang/String;Z)V
    .registers 11

    .line 270
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 271
    sget-object p1, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PortraitParameterManager  data =  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 272
    const-string/jumbo v3, "web"

    move-object v0, p0

    move-object v2, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->parseData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method protected reportConfigVersion(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 276
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 280
    :cond_7
    const-string v0, "portrait_arch_parameter"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p2, 0x1

    .line 281
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setPortraitArchVersion(Ljava/lang/String;I)V

    goto :goto_20

    .line 282
    :cond_14
    const-string v0, "resourcedata"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_20

    const/4 p2, 0x2

    .line 283
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setPortraitArchVersion(Ljava/lang/String;I)V

    .line 285
    :cond_20
    :goto_20
    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->reportPortraitArchData()V

    return-void
.end method

.method public update()V
    .registers 1

    return-void
.end method
