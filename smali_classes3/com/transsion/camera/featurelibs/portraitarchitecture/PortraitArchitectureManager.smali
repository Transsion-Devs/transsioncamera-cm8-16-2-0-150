.class public Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IJobStartCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$ValueObserver;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mInitHandler:Landroid/os/Handler;

.field private mParameterCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IUpdatePortraitCallback;

.field private mPortraitDownloadManager:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;

.field private mPortraitParameterManager:Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;

.field private mPortraitProbeManager:Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProbeManager;

.field private mProbeCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IUpdatePortraitCallback;

.field private mProbeDataCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;

.field private mProcessConfigCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;

.field private mResponseExceptionHandler:Landroid/os/Handler;

.field private mResponseParameterHandler:Landroid/os/Handler;

.field private mResponseProbeHandler:Landroid/os/Handler;

.field private observer:Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$ValueObserver;


# direct methods
.method public static synthetic $r8$lambda$-jyUbN_hzVmO0-MprvEE2H91TZ8(Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->lambda$new$0(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5AN34jpJphPB64q7dGNLedzJYgM(Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->lambda$preInit$1(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6RADlFVlWY6flozNRUFI7A1G4AY(Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->lambda$init$2()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPortraitDownloadManager(Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;)Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mPortraitDownloadManager:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPortraitParameterManager(Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;)Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mPortraitParameterManager:Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPortraitProbeManager(Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;)Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProbeManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mPortraitProbeManager:Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProbeManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProbeDataCallback(Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;)Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mProbeDataCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProcessConfigCallback(Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;)Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mProcessConfigCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResponseExceptionHandler(Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mResponseExceptionHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetobserver(Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;)Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$ValueObserver;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->observer:Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$ValueObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minit(Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->init()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartWork(Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->startWork()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 44
    new-instance v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;

    invoke-direct {v0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;-><init>()V

    sput-object v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->INSTANCE:Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;

    .line 45
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PAM"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$1;-><init>(Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mProcessConfigCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;

    .line 79
    new-instance v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mProbeDataCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;

    .line 194
    new-instance v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$2;-><init>(Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mParameterCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IUpdatePortraitCallback;

    .line 206
    new-instance v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$3;-><init>(Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mProbeCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IUpdatePortraitCallback;

    return-void
.end method

.method public static getInstance()Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;
    .registers 1

    .line 86
    sget-object v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->INSTANCE:Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;

    return-object v0
.end method

.method private getNextStartTime()J
    .registers 13

    .line 162
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/app/common/R$integer;->portrait_arch_update_interval_minute:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    .line 164
    iget-object v2, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mPortraitParameterManager:Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;

    invoke-virtual {v2}, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->getSuggestInterval()J

    move-result-wide v2

    .line 165
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v4, "0"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "transsion.portrait_architecture_next_update_time"

    invoke-virtual {p0, v6, v4, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    .line 169
    :try_start_35
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_39} :catch_3a

    goto :goto_52

    :catch_3a
    move-exception v8

    .line 171
    sget-object v9, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NumberFormatException  e = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move-wide v8, v6

    :goto_52
    cmp-long v6, v8, v6

    if-lez v6, :cond_60

    cmp-long v0, v4, v8

    if-lez v0, :cond_5e

    const-wide/32 v0, 0x124f80

    goto :goto_60

    :cond_5e
    sub-long v0, v8, v4

    .line 181
    :cond_60
    :goto_60
    sget-object v4, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " [startWork]  suggestInterval:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "  nextTime:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "   currentTime:"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-wide v0
.end method

.method private init()V
    .registers 6

    .line 126
    sget-object v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;->COUNTRY_CODE:Ljava/lang/String;

    const-string v1, "debug.vendor.sys.camera_country"

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v1, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 128
    new-instance v1, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mPortraitParameterManager:Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;

    .line 129
    new-instance v1, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mPortraitDownloadManager:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;

    .line 130
    new-instance v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProbeManager;

    invoke-direct {v0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProbeManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mPortraitProbeManager:Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProbeManager;

    .line 131
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->initThread()V

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mPortraitParameterManager:Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mProcessConfigCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;

    const-string v4, "portrait_arch_parameter"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->processConfig(Landroid/content/Context;Ljava/lang/String;ZLcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;)V

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/app/common/R$integer;->portrait_arch_probe_interval_minute:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    .line 134
    iget-object v2, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;)V

    invoke-static {v2, v0, v1, v3}, Lcom/transsion/camera/featurelibs/portraitarchitecture/service/PortraitJobService;->invokeProbe(Landroid/content/Context;JLcom/transsion/camera/featurelibs/portraitarchitecture/callback/IJobStartCallback;)V

    return-void
.end method

.method private initThread()V
    .registers 3

    .line 138
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CAM_PortaraitParameterResponse"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 140
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mResponseParameterHandler:Landroid/os/Handler;

    .line 142
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CAM_PortaraitExceptionResponse"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 144
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mResponseExceptionHandler:Landroid/os/Handler;

    .line 146
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CAM_PortaraitProbeResponse"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 148
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mResponseProbeHandler:Landroid/os/Handler;

    return-void
.end method

.method private isFirstBootedProcess()Z
    .registers 8

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_12

    move v0, v3

    goto :goto_13

    :cond_12
    move v0, v2

    .line 220
    :goto_13
    sget-object v4, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "systemBooted1   isFirst = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_56

    .line 223
    new-instance v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$ValueObserver;

    iget-object v4, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mInitHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v4}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$ValueObserver;-><init>(Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->observer:Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$ValueObserver;

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->observer:Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$ValueObserver;

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->observer:Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$ValueObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return v3

    :cond_56
    return v2
.end method

.method private synthetic lambda$init$2()V
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mPortraitDownloadManager:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mResponseProbeHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mProbeCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IUpdatePortraitCallback;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->probe(Landroid/os/Handler;Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IUpdatePortraitCallback;)V

    return-void
.end method

.method private synthetic lambda$new$0(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    if-nez p1, :cond_5

    .line 81
    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->JobStart()V

    :cond_5
    return-void
.end method

.method private synthetic lambda$preInit$1(Landroid/content/Context;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mContext:Landroid/content/Context;

    .line 95
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->isFirstBootedProcess()Z

    move-result p1

    if-nez p1, :cond_b

    .line 96
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->init()V

    :cond_b
    return-void
.end method

.method private startWork()V
    .registers 6

    .line 156
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->getNextStartTime()J

    move-result-wide v0

    .line 157
    sget-object v2, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [startWork] next suggest start time  ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 158
    iget-object v2, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1, p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/service/PortraitJobService;->invoke(Landroid/content/Context;JLcom/transsion/camera/featurelibs/portraitarchitecture/callback/IJobStartCallback;)V

    return-void
.end method


# virtual methods
.method public JobStart()V
    .registers 7

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mPortraitDownloadManager:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;

    if-eqz v0, :cond_14

    .line 189
    sget-object v1, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$RequestType;->REQUEST_TYPE_PARAMETER:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$RequestType;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mPortraitParameterManager:Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;

    invoke-virtual {v2}, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->getConfigVersion()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mResponseParameterHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mParameterCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IUpdatePortraitCallback;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->updatePortraitConfig(Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$RequestType;Ljava/lang/String;Landroid/os/Handler;Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IUpdatePortraitCallback;Z)V

    :cond_14
    return-void
.end method

.method public downLoadRes()V
    .registers 12

    .line 232
    sget-object v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[DownLoadRes]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    if-eqz v0, :cond_18

    .line 234
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "transsion.portrait_architecture_need_update"

    const-string v4, "off"

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 237
    :cond_18
    iget-object v5, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mPortraitDownloadManager:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;

    if-eqz v5, :cond_2c

    .line 238
    sget-object v6, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$RequestType;->REQUEST_TYPE_PARAMETER:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$RequestType;

    iget-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mPortraitParameterManager:Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->getConfigVersion()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mResponseParameterHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mParameterCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IUpdatePortraitCallback;

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->updatePortraitConfig(Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$RequestType;Ljava/lang/String;Landroid/os/Handler;Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IUpdatePortraitCallback;Z)V

    :cond_2c
    return-void
.end method

.method public getDefaultValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportPortraitArchitecture(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->getPortraitParameterManager()Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 105
    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->getPortraitParameterManager()Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;

    move-result-object p0

    invoke-virtual/range {p0 .. p6}, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;->getDefaultValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_17
    return-object p6
.end method

.method public getFaceBautyDefaultList()Ljava/util/List;
    .registers 3

    .line 111
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 112
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportPortraitArchitecture(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->getPortraitParameterManager()Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 113
    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->getPortraitParameterManager()Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;->getFaceBeautyListData()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_19
    return-object v0
.end method

.method public getPortraitParameterManager()Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;
    .registers 1

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mPortraitParameterManager:Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;

    return-object p0
.end method

.method public needShowUpdateIcon()Z
    .registers 7

    .line 255
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    if-nez v0, :cond_a

    goto :goto_34

    .line 258
    :cond_a
    const-string v2, "key_portrait_architecture"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "on"

    invoke-virtual {v0, v2, v4, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string/jumbo v2, "transsion.portrait_architecture_need_update"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v5, "off"

    invoke-virtual {p0, v2, v5, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 260
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_34

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_32

    goto :goto_34

    :cond_32
    const/4 p0, 0x1

    return p0

    :cond_34
    :goto_34
    return v1
.end method

.method public preInit(Landroid/content/Context;)V
    .registers 4

    .line 90
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CAM_PortaraitInit"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 92
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mInitHandler:Landroid/os/Handler;

    .line 93
    new-instance v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public update()V
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->mPortraitParameterManager:Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;

    if-eqz p0, :cond_7

    .line 120
    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->update()V

    :cond_7
    return-void
.end method
