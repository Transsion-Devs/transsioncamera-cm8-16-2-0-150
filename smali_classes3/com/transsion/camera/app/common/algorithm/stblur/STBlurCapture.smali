.class public final Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurCapture;


# static fields
.field private static final STBLUR_CAPTURE_IMPL_CLASS:Ljava/lang/String; = "com.transsion.camera.feature.mode.stblurmode.STBlurCaptureImpl"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sAlgorithmMigrate:Z

.field private static volatile sInstance:Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;


# instance fields
.field private mInitTimes:I

.field private mSTBlurCaptureImpl:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurCapture;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "STBlurCapture"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 24
    const-string v0, "com.transsion.camera.feature.mode.stblurmode.STBlurCaptureImpl"

    .line 25
    invoke-static {v0}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    sput-boolean v0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->sAlgorithmMigrate:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "com.transsion.camera.feature.mode.stblurmode.STBlurCaptureImpl"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurCapture;

    iput-object p1, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->mSTBlurCaptureImpl:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurCapture;

    return-void
.end method

.method public static algorithmMigrate()Z
    .registers 1

    .line 48
    sget-boolean v0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->sAlgorithmMigrate:Z

    return v0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;
    .registers 3

    .line 37
    sget-object v0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->sInstance:Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;

    if-nez v0, :cond_19

    .line 38
    const-class v0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;

    monitor-enter v0

    .line 39
    :try_start_7
    sget-object v1, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->sInstance:Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;

    if-nez v1, :cond_15

    .line 40
    new-instance v1, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->sInstance:Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;

    goto :goto_15

    :catchall_13
    move-exception p0

    goto :goto_17

    .line 42
    :cond_15
    :goto_15
    monitor-exit v0

    goto :goto_19

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    throw p0

    .line 44
    :cond_19
    :goto_19
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->sInstance:Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized initSTBlur()V
    .registers 5

    monitor-enter p0

    .line 53
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->mSTBlurCaptureImpl:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurCapture;

    if-nez v0, :cond_10

    .line 54
    sget-object v0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mSTBlurCaptureImpl is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 55
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    goto :goto_39

    .line 57
    :cond_10
    :try_start_10
    iget v0, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->mInitTimes:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->mInitTimes:I

    .line 58
    sget-object v0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSTBlur mInitTimes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->mInitTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 59
    iget v0, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->mInitTimes:I

    if-ne v0, v1, :cond_37

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->mSTBlurCaptureImpl:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurCapture;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurCapture;->initSTBlur()V
    :try_end_37
    .catchall {:try_start_10 .. :try_end_37} :catchall_e

    .line 62
    :cond_37
    monitor-exit p0

    return-void

    :goto_39
    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_e

    throw v0
.end method

.method public declared-synchronized processCaptureBlur([BIII)[B
    .registers 7

    monitor-enter p0

    .line 80
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->mSTBlurCaptureImpl:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurCapture;

    if-nez v0, :cond_10

    .line 81
    sget-object p2, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p3, "mSTBlurCaptureImpl is null"

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 82
    monitor-exit p0

    return-object p1

    :catchall_e
    move-exception p1

    goto :goto_23

    .line 84
    :cond_10
    :try_start_10
    iget v1, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->mInitTimes:I

    if-nez v1, :cond_1d

    .line 85
    sget-object p2, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p3, "invalid state, STBlurCapture isn\'t init"

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_e

    .line 86
    monitor-exit p0

    return-object p1

    .line 88
    :cond_1d
    :try_start_1d
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurCapture;->processCaptureBlur([BIII)[B

    move-result-object p1
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_e

    monitor-exit p0

    return-object p1

    :goto_23
    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_e

    throw p1
.end method

.method public declared-synchronized unInitSTBlur()V
    .registers 4

    monitor-enter p0

    .line 66
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->mSTBlurCaptureImpl:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurCapture;

    if-nez v0, :cond_10

    .line 67
    sget-object v0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mSTBlurCaptureImpl is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 68
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    goto :goto_3a

    .line 70
    :cond_10
    :try_start_10
    iget v0, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->mInitTimes:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->mInitTimes:I

    .line 71
    sget-object v0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unInitSTBlur mInitTimes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->mInitTimes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 72
    iget v0, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->mInitTimes:I

    if-nez v0, :cond_38

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->mSTBlurCaptureImpl:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurCapture;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurCapture;->unInitSTBlur()V
    :try_end_38
    .catchall {:try_start_10 .. :try_end_38} :catchall_e

    .line 75
    :cond_38
    monitor-exit p0

    return-void

    :goto_3a
    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_e

    throw v0
.end method
