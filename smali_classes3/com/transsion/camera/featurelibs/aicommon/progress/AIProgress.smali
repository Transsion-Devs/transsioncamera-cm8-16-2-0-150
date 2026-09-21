.class public Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/aicommon/progress/IAIProgress;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private volatile mFinishProgress:Z

.field private final mHandler:Landroid/os/Handler;

.field private mProgress:I

.field private volatile mProgressListener:Lcom/transsion/camera/featurelibs/aicommon/progress/IAIProgress$IProgressListener;

.field private mProgressRate:I

.field private final mRandom:Ljava/util/Random;

.field private mStartTime:J

.field private volatile mTerminateProgress:Z

.field private mUpdateTimeRate:I


# direct methods
.method public static synthetic $r8$lambda$9FBICufB-XWx2MqR_N47ocoF-S8(Lcom/transsion/camera/featurelibs/aicommon/progress/IAIProgress$IProgressListener;I)V
    .registers 2

    .line 171
    invoke-interface {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/progress/IAIProgress$IProgressListener;->onProgress(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GIXLj_nrIS6TQ3DBtUa0G-xX1hg(Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->updateProgress()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIProgress"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 35
    iput v0, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mProgressRate:I

    const/16 v0, 0x64

    .line 37
    iput v0, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mUpdateTimeRate:I

    .line 49
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mRandom:Ljava/util/Random;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private notifyProgress()V
    .registers 4

    .line 168
    iget v0, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mProgress:I

    .line 169
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mProgressListener:Lcom/transsion/camera/featurelibs/aicommon/progress/IAIProgress$IProgressListener;

    if-eqz v1, :cond_10

    .line 171
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, v0}, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/featurelibs/aicommon/progress/IAIProgress$IProgressListener;I)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_10
    return-void
.end method

.method private declared-synchronized updateProgress()V
    .registers 10

    monitor-enter p0

    .line 72
    :try_start_1
    iget-boolean v0, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mTerminateProgress:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    if-eqz v0, :cond_7

    .line 73
    monitor-exit p0

    return-void

    .line 76
    :cond_7
    :try_start_7
    iget v0, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mProgress:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_19

    .line 77
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "This should not happen!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_16

    .line 78
    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    goto/16 :goto_ff

    .line 81
    :cond_19
    :try_start_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mStartTime:J

    sub-long/2addr v2, v4

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mRandom:Ljava/util/Random;

    iget v4, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mProgressRate:I

    .line 84
    iget-boolean v5, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mFinishProgress:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_2c

    iget v5, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mProgressRate:I

    goto :goto_2d

    :cond_2c
    move v5, v6

    :goto_2d
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 83
    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, v6

    .line 85
    iget v4, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mProgress:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mProgress:I

    const-wide/16 v7, 0x0

    if-lt v4, v1, :cond_79

    .line 88
    iget-boolean v2, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mFinishProgress:Z

    if-eqz v2, :cond_47

    .line 89
    iput v1, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mProgress:I

    goto/16 :goto_e5

    .line 91
    :cond_47
    iget v2, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mProgress:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mProgress:I

    .line 95
    iget-boolean v0, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mFinishProgress:Z

    if-eqz v0, :cond_56

    .line 97
    iget v0, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mProgressRate:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mProgressRate:I

    goto :goto_6e

    .line 99
    :cond_56
    iget v0, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mUpdateTimeRate:I

    if-ge v0, v1, :cond_5d

    .line 100
    iput v1, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mUpdateTimeRate:I

    goto :goto_60

    :cond_5d
    add-int/2addr v0, v1

    .line 102
    iput v0, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mUpdateTimeRate:I

    .line 104
    :goto_60
    iget v0, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mUpdateTimeRate:I

    int-to-long v7, v0

    .line 105
    iget v0, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mProgressRate:I

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mProgressRate:I

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mProgressRate:I

    .line 108
    :goto_6e
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;)V

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_e5

    :cond_79
    rsub-int/lit8 v0, v4, 0x64

    const-wide/16 v4, 0x2710

    sub-long/2addr v4, v2

    .line 113
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 115
    iget-boolean v4, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mFinishProgress:Z

    if-eqz v4, :cond_b1

    .line 116
    iget v4, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mUpdateTimeRate:I

    if-le v4, v1, :cond_8d

    .line 117
    iput v1, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mUpdateTimeRate:I

    goto :goto_98

    :cond_8d
    const/16 v1, 0x1e

    if-ge v4, v1, :cond_94

    .line 119
    iput v1, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mUpdateTimeRate:I

    goto :goto_98

    :cond_94
    add-int/lit8 v4, v4, -0xa

    .line 121
    iput v4, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mUpdateTimeRate:I

    :goto_98
    int-to-long v0, v0

    .line 124
    div-long/2addr v2, v0

    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mRandom:Ljava/util/Random;

    iget v1, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mUpdateTimeRate:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v2, v0

    const-wide/16 v0, 0x1e

    .line 125
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 126
    iget v2, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mProgressRate:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mProgressRate:I

    goto :goto_db

    .line 128
    :cond_b1
    iget v4, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mProgress:I

    const/16 v5, 0x5a

    if-le v4, v5, :cond_bf

    .line 129
    iget v1, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mUpdateTimeRate:I

    rem-int/2addr v4, v5

    mul-int/2addr v4, v1

    add-int/2addr v1, v4

    iput v1, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mUpdateTimeRate:I

    goto :goto_c9

    .line 131
    :cond_bf
    iget v4, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mUpdateTimeRate:I

    if-ge v4, v1, :cond_c6

    .line 132
    iput v1, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mUpdateTimeRate:I

    goto :goto_c9

    :cond_c6
    add-int/2addr v4, v6

    .line 134
    iput v4, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mUpdateTimeRate:I

    :goto_c9
    int-to-long v0, v0

    .line 138
    div-long/2addr v2, v0

    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mRandom:Ljava/util/Random;

    iget v1, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mUpdateTimeRate:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v2, v0

    const-wide/16 v0, 0x64

    .line 139
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 142
    :goto_db
    iget-object v2, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 145
    :goto_e5
    iget-boolean v0, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mFinishProgress:Z

    if-nez v0, :cond_fa

    iget v0, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mProgress:I

    rem-int/lit8 v0, v0, 0x28

    if-nez v0, :cond_fa

    .line 146
    iget v0, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mProgressRate:I

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mProgressRate:I

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mProgressRate:I

    .line 149
    :cond_fa
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->notifyProgress()V
    :try_end_fd
    .catchall {:try_start_19 .. :try_end_fd} :catchall_16

    .line 150
    monitor-exit p0

    return-void

    :goto_ff
    :try_start_ff
    monitor-exit p0
    :try_end_100
    .catchall {:try_start_ff .. :try_end_100} :catchall_16

    throw v0
.end method


# virtual methods
.method public declared-synchronized finishProgress()V
    .registers 3

    monitor-enter p0

    .line 154
    :try_start_1
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "finishProgress"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mFinishProgress:Z

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 158
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public declared-synchronized setProgressListener(Lcom/transsion/camera/featurelibs/aicommon/progress/IAIProgress$IProgressListener;)V
    .registers 2

    monitor-enter p0

    .line 57
    :try_start_1
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mProgressListener:Lcom/transsion/camera/featurelibs/aicommon/progress/IAIProgress$IProgressListener;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 58
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public declared-synchronized startProgress()V
    .registers 3

    monitor-enter p0

    .line 62
    :try_start_1
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startProgress"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mProgress:I

    .line 64
    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mFinishProgress:Z

    .line 65
    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mTerminateProgress:Z

    .line 66
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->notifyProgress()V

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mStartTime:J

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 69
    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public declared-synchronized terminateProgress()V
    .registers 3

    monitor-enter p0

    .line 162
    :try_start_1
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "terminateProgress"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mTerminateProgress:Z

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 165
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method
