.class public Lcom/apprichtap/haptic/RichTapUtils;
.super Lcom/apprichtap/haptic/base/ApiInfo;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/apprichtap/haptic/RichTapUtils;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPlayer:Lcom/apprichtap/haptic/RichTapPlayer;

.field private mPlayerObjectPool:Lcom/apprichtap/haptic/player/c;

.field private mPlayerType:I

.field private mRichTapCoreMajorVersion:I

.field private mThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/apprichtap/haptic/base/ApiInfo;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/apprichtap/haptic/RichTapUtils;->mPlayerType:I

    iput v0, p0, Lcom/apprichtap/haptic/RichTapUtils;->mRichTapCoreMajorVersion:I

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/apprichtap/haptic/RichTapUtils;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/apprichtap/haptic/RichTapUtils;)I
    .registers 1

    iget p0, p0, Lcom/apprichtap/haptic/RichTapUtils;->mRichTapCoreMajorVersion:I

    return p0
.end method

.method static synthetic access$100(Lcom/apprichtap/haptic/RichTapUtils;)I
    .registers 1

    iget p0, p0, Lcom/apprichtap/haptic/RichTapUtils;->mPlayerType:I

    return p0
.end method

.method static synthetic access$200(Lcom/apprichtap/haptic/RichTapUtils;)Lcom/apprichtap/haptic/player/c;
    .registers 1

    iget-object p0, p0, Lcom/apprichtap/haptic/RichTapUtils;->mPlayerObjectPool:Lcom/apprichtap/haptic/player/c;

    return-object p0
.end method

.method static synthetic access$300(Lcom/apprichtap/haptic/RichTapUtils;)Lcom/apprichtap/haptic/RichTapPlayer;
    .registers 1

    iget-object p0, p0, Lcom/apprichtap/haptic/RichTapUtils;->mPlayer:Lcom/apprichtap/haptic/RichTapPlayer;

    return-object p0
.end method

.method public static getInstance()Lcom/apprichtap/haptic/RichTapUtils;
    .registers 2

    sget-object v0, Lcom/apprichtap/haptic/RichTapUtils;->sInstance:Lcom/apprichtap/haptic/RichTapUtils;

    if-nez v0, :cond_19

    const-class v0, Lcom/apprichtap/haptic/RichTapUtils;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/apprichtap/haptic/RichTapUtils;->sInstance:Lcom/apprichtap/haptic/RichTapUtils;

    if-nez v1, :cond_15

    new-instance v1, Lcom/apprichtap/haptic/RichTapUtils;

    invoke-direct {v1}, Lcom/apprichtap/haptic/RichTapUtils;-><init>()V

    sput-object v1, Lcom/apprichtap/haptic/RichTapUtils;->sInstance:Lcom/apprichtap/haptic/RichTapUtils;

    goto :goto_15

    :catchall_13
    move-exception v1

    goto :goto_17

    :cond_15
    :goto_15
    monitor-exit v0

    goto :goto_19

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    throw v1

    :cond_19
    :goto_19
    sget-object v0, Lcom/apprichtap/haptic/RichTapUtils;->sInstance:Lcom/apprichtap/haptic/RichTapUtils;

    return-object v0
.end method


# virtual methods
.method public getRichTapCoreMajorVersion()I
    .registers 1

    iget-object p0, p0, Lcom/apprichtap/haptic/RichTapUtils;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/apprichtap/haptic/RichTapPlayer;->getRichTapCoreMajorVersion(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;)Lcom/apprichtap/haptic/RichTapUtils;
    .registers 6

    const-string v0, "RichTapUtils"

    if-eqz p1, :cond_aa

    :try_start_4
    iget-object v1, p0, Lcom/apprichtap/haptic/RichTapUtils;->mPlayer:Lcom/apprichtap/haptic/RichTapPlayer;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/apprichtap/haptic/RichTapPlayer;->stop()V

    iget-object v1, p0, Lcom/apprichtap/haptic/RichTapUtils;->mPlayer:Lcom/apprichtap/haptic/RichTapPlayer;

    invoke-virtual {v1}, Lcom/apprichtap/haptic/RichTapPlayer;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/apprichtap/haptic/RichTapUtils;->mPlayer:Lcom/apprichtap/haptic/RichTapPlayer;

    goto :goto_16

    :catchall_14
    move-exception p1

    goto :goto_7a

    :cond_16
    :goto_16
    iget-object v1, p0, Lcom/apprichtap/haptic/RichTapUtils;->mPlayerObjectPool:Lcom/apprichtap/haptic/player/c;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Lcom/apprichtap/haptic/player/c;->a()V

    :cond_1d
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/apprichtap/haptic/RichTapUtils;->mContext:Landroid/content/Context;

    if-nez v1, :cond_2c

    const-string v1, "fail to get application context!"

    invoke-static {v0, v1}, Lcom/apprichtap/haptic/base/d$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/apprichtap/haptic/RichTapUtils;->mContext:Landroid/content/Context;

    :cond_2c
    iget-object p1, p0, Lcom/apprichtap/haptic/RichTapUtils;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/apprichtap/haptic/RichTapUtils;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {p0}, Lcom/apprichtap/haptic/RichTapUtils;->getRichTapCoreMajorVersion()I

    move-result p1

    iput p1, p0, Lcom/apprichtap/haptic/RichTapUtils;->mRichTapCoreMajorVersion:I

    const/4 p1, 0x2

    invoke-static {p1}, Lcom/apprichtap/haptic/RichTapPlayer;->isPlayerTypeAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_60

    iget v1, p0, Lcom/apprichtap/haptic/RichTapUtils;->mRichTapCoreMajorVersion:I

    const/16 v2, 0x20

    if-gt v2, v1, :cond_55

    new-instance v2, Lcom/apprichtap/haptic/player/c;

    iget-object v3, p0, Lcom/apprichtap/haptic/RichTapUtils;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/apprichtap/haptic/player/c;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/apprichtap/haptic/RichTapUtils;->mPlayerObjectPool:Lcom/apprichtap/haptic/player/c;

    goto :goto_5d

    :cond_55
    iget-object v1, p0, Lcom/apprichtap/haptic/RichTapUtils;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/apprichtap/haptic/RichTapPlayer;->create(Landroid/content/Context;I)Lcom/apprichtap/haptic/RichTapPlayer;

    move-result-object v1

    :goto_5b
    iput-object v1, p0, Lcom/apprichtap/haptic/RichTapUtils;->mPlayer:Lcom/apprichtap/haptic/RichTapPlayer;

    :goto_5d
    iput p1, p0, Lcom/apprichtap/haptic/RichTapUtils;->mPlayerType:I

    goto :goto_7d

    :cond_60
    const/4 p1, 0x1

    invoke-static {p1}, Lcom/apprichtap/haptic/RichTapPlayer;->isPlayerTypeAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_6e

    iget-object v1, p0, Lcom/apprichtap/haptic/RichTapUtils;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/apprichtap/haptic/RichTapPlayer;->create(Landroid/content/Context;I)Lcom/apprichtap/haptic/RichTapPlayer;

    move-result-object v1

    goto :goto_5b

    :cond_6e
    iget-object p1, p0, Lcom/apprichtap/haptic/RichTapUtils;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/apprichtap/haptic/RichTapPlayer;->create(Landroid/content/Context;I)Lcom/apprichtap/haptic/RichTapPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/apprichtap/haptic/RichTapUtils;->mPlayer:Lcom/apprichtap/haptic/RichTapPlayer;

    iput v1, p0, Lcom/apprichtap/haptic/RichTapUtils;->mPlayerType:I
    :try_end_79
    .catchall {:try_start_4 .. :try_end_79} :catchall_14

    goto :goto_7d

    :goto_7a
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_7d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init , sdk version:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/apprichtap/haptic/base/ApiInfo;->VERSION_NAME:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " versionCode:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/apprichtap/haptic/base/ApiInfo;->VERSION_CODE:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", RichTap Core Major Version:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/apprichtap/haptic/RichTapUtils;->mRichTapCoreMajorVersion:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/apprichtap/haptic/base/d$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/apprichtap/haptic/RichTapUtils;->sInstance:Lcom/apprichtap/haptic/RichTapUtils;

    return-object p0

    :cond_aa
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isSupportedRichTap()Z
    .registers 2

    const/4 p0, 0x2

    invoke-static {p0}, Lcom/apprichtap/haptic/RichTapPlayer;->isPlayerTypeAvailable(I)Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_11

    invoke-static {v0}, Lcom/apprichtap/haptic/RichTapPlayer;->isPlayerTypeAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    return v0
.end method

.method public playHaptic(Ljava/io/File;I)V
    .registers 9

    .line 0
    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/apprichtap/haptic/RichTapUtils;->playHaptic(Ljava/io/File;IIII)V

    return-void
.end method

.method public playHaptic(Ljava/io/File;IIII)V
    .registers 6

    .line 0
    invoke-static {p1}, Lcom/apprichtap/haptic/base/d;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual/range {p0 .. p5}, Lcom/apprichtap/haptic/RichTapUtils;->playHaptic(Ljava/lang/String;IIII)V

    return-void
.end method

.method public playHaptic(Ljava/lang/String;IIII)V
    .registers 13

    .line 0
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/apprichtap/haptic/RichTapUtils;->playHaptic(Ljava/lang/String;IIIILcom/apprichtap/haptic/sync/SyncCallback;)V

    return-void
.end method

.method public playHaptic(Ljava/lang/String;IIIIILcom/apprichtap/haptic/sync/SyncCallback;Landroid/os/VibrationAttributes;)V
    .registers 20

    .line 0
    if-eqz p1, :cond_83

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_83

    invoke-static {}, Lcom/apprichtap/haptic/base/d;->b()Z

    move-result v0

    const-string v2, "RichTapUtils"

    if-eqz v0, :cond_5d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playHaptic: loop:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",interval:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",amplitude:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",freq:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",callback is null:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p7, :cond_40

    const/4 v7, 0x1

    goto :goto_41

    :cond_40
    const/4 v7, 0x0

    :goto_41
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",attrs:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p8, :cond_4e

    const-string v7, "null"

    goto :goto_52

    :cond_4e
    invoke-virtual/range {p8 .. p8}, Landroid/os/VibrationAttributes;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_52
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5f

    :cond_5d
    move/from16 v6, p5

    :goto_5f
    iget-object v0, p0, Lcom/apprichtap/haptic/RichTapUtils;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_6d

    const-string v0, "executor down!"

    invoke-static {v2, v0}, Lcom/apprichtap/haptic/base/d$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6d
    iget-object v10, p0, Lcom/apprichtap/haptic/RichTapUtils;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/apprichtap/haptic/RichTapUtils$c;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/apprichtap/haptic/RichTapUtils$c;-><init>(Lcom/apprichtap/haptic/RichTapUtils;Ljava/lang/String;IIIIILcom/apprichtap/haptic/sync/SyncCallback;Landroid/os/VibrationAttributes;)V

    invoke-interface {v10, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong parameter {string: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "} is null!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public playHaptic(Ljava/lang/String;IIIILcom/apprichtap/haptic/sync/SyncCallback;)V
    .registers 16

    .line 0
    iget-object v0, p0, Lcom/apprichtap/haptic/RichTapUtils;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/apprichtap/haptic/RichTapUtils;->sInstance:Lcom/apprichtap/haptic/RichTapUtils;

    if-nez v0, :cond_9

    goto :goto_15

    :cond_9
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v8}, Lcom/apprichtap/haptic/RichTapUtils;->playHaptic(Ljava/lang/String;IIIILcom/apprichtap/haptic/sync/SyncCallback;Landroid/os/VibrationAttributes;)V

    return-void

    :cond_15
    :goto_15
    const-string p0, "RichTapUtils"

    const-string p1, "Not initialized!"

    invoke-static {p0, p1}, Lcom/apprichtap/haptic/base/d$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public playHaptic(Ljava/lang/String;IIIILcom/apprichtap/haptic/sync/SyncCallback;Landroid/os/VibrationAttributes;)V
    .registers 17

    .line 0
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/apprichtap/haptic/RichTapUtils;->playHaptic(Ljava/lang/String;IIIIILcom/apprichtap/haptic/sync/SyncCallback;Landroid/os/VibrationAttributes;)V

    return-void
.end method

.method public quit()V
    .registers 3

    :try_start_0
    const-string v0, "RichTapUtils"

    const-string v1, "quit()"

    invoke-static {v0, v1}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/apprichtap/haptic/RichTapUtils;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_e
    iget-object v0, p0, Lcom/apprichtap/haptic/RichTapUtils;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    :cond_15
    iget-object v0, p0, Lcom/apprichtap/haptic/RichTapUtils;->mPlayer:Lcom/apprichtap/haptic/RichTapPlayer;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/apprichtap/haptic/RichTapPlayer;->stop()V

    iget-object v0, p0, Lcom/apprichtap/haptic/RichTapUtils;->mPlayer:Lcom/apprichtap/haptic/RichTapPlayer;

    invoke-virtual {v0}, Lcom/apprichtap/haptic/RichTapPlayer;->release()V

    :cond_21
    iget-object v0, p0, Lcom/apprichtap/haptic/RichTapUtils;->mPlayerObjectPool:Lcom/apprichtap/haptic/player/c;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/apprichtap/haptic/player/c;->a()V

    :cond_28
    const/4 v0, 0x0

    sput-object v0, Lcom/apprichtap/haptic/RichTapUtils;->sInstance:Lcom/apprichtap/haptic/RichTapUtils;

    iput-object v0, p0, Lcom/apprichtap/haptic/RichTapUtils;->mContext:Landroid/content/Context;
    :try_end_2d
    .catchall {:try_start_0 .. :try_end_2d} :catchall_2e

    return-void

    :catchall_2e
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
