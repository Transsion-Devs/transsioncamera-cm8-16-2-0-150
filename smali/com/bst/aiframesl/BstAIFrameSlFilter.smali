.class public Lcom/bst/aiframesl/BstAIFrameSlFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BYPASS_BY_APP:Z


# instance fields
.field private TAG:Ljava/lang/String;

.field private mNativeObj:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 15
    const-string v0, "debug.app.rj.bypass"

    const-string v1, "false"

    invoke-static {v0, v1}, Lcom/bst/aiframesl/fileutil/BstFileUtil;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/bst/aiframesl/BstAIFrameSlFilter;->BYPASS_BY_APP:Z

    .line 67
    const-string v0, "jniBstAIFrameSelect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/bst/aiframesl/BstAIFrameSlFilter;->TAG:Ljava/lang/String;

    .line 19
    iget-wide v0, p0, Lcom/bst/aiframesl/BstAIFrameSlFilter;->mNativeObj:J

    invoke-direct {p0, v0, v1, p1}, Lcom/bst/aiframesl/BstAIFrameSlFilter;->nativeCreateObj(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bst/aiframesl/BstAIFrameSlFilter;->mNativeObj:J

    return-void
.end method

.method private native nativeBstAiframeSelectInit(JLjava/lang/String;)I
.end method

.method private native nativeBstAiframeSelectProcess(JLjava/lang/String;Ljava/lang/String;JIII[J)I
.end method

.method private native nativeBstAiframeSelectUnInit(J)Z
.end method

.method private native nativeCreateObj(JLjava/lang/String;)J
.end method

.method private native nativeDeleteObj(J)I
.end method


# virtual methods
.method public declared-synchronized bstAiframeSelectInit(Landroid/content/Context;)Z
    .registers 7

    monitor-enter p0

    .line 24
    :try_start_1
    const-string v0, "bst/aiframesl/"

    .line 25
    sget-boolean v1, Lcom/bst/aiframesl/BstAIFrameSlFilter;->BYPASS_BY_APP:Z
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_19

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 26
    monitor-exit p0

    return v2

    .line 28
    :cond_a
    :try_start_a
    iget-wide v3, p0, Lcom/bst/aiframesl/BstAIFrameSlFilter;->mNativeObj:J

    invoke-static {p1, v0}, Lcom/bst/aiframesl/fileutil/BstFileUtil;->copyAllToDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, v4, p1}, Lcom/bst/aiframesl/BstAIFrameSlFilter;->nativeBstAiframeSelectInit(JLjava/lang/String;)I

    move-result p1
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_19

    if-nez p1, :cond_17

    const/4 v2, 0x1

    :cond_17
    monitor-exit p0

    return v2

    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public declared-synchronized bstAiframeSelectProcess(Ljava/lang/String;Ljava/lang/String;JIII[J)I
    .registers 21

    monitor-enter p0

    .line 33
    :try_start_1
    sget-boolean v0, Lcom/bst/aiframesl/BstAIFrameSlFilter;->BYPASS_BY_APP:Z

    if-eqz v0, :cond_7

    const/4 p1, -0x1

    goto :goto_19

    .line 36
    :cond_7
    iget-wide v2, p0, Lcom/bst/aiframesl/BstAIFrameSlFilter;->mNativeObj:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v1 .. v11}, Lcom/bst/aiframesl/BstAIFrameSlFilter;->nativeBstAiframeSelectProcess(JLjava/lang/String;Ljava/lang/String;JIII[J)I

    move-result p1
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 38
    :goto_19
    monitor-exit p0

    return p1

    :catchall_1b
    move-exception v0

    move-object p1, v0

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1b

    throw p1
.end method

.method public declared-synchronized bstAiframeSelectUnInit()Z
    .registers 3

    monitor-enter p0

    .line 42
    :try_start_1
    sget-boolean v0, Lcom/bst/aiframesl/BstAIFrameSlFilter;->BYPASS_BY_APP:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-eqz v0, :cond_8

    .line 43
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    .line 45
    :cond_8
    :try_start_8
    iget-wide v0, p0, Lcom/bst/aiframesl/BstAIFrameSlFilter;->mNativeObj:J

    invoke-direct {p0, v0, v1}, Lcom/bst/aiframesl/BstAIFrameSlFilter;->nativeBstAiframeSelectUnInit(J)Z

    move-result v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_10

    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public declared-synchronized release()V
    .registers 3

    monitor-enter p0

    .line 49
    :try_start_1
    iget-object v0, p0, Lcom/bst/aiframesl/BstAIFrameSlFilter;->TAG:Ljava/lang/String;

    const-string v1, "release "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-wide v0, p0, Lcom/bst/aiframesl/BstAIFrameSlFilter;->mNativeObj:J

    invoke-direct {p0, v0, v1}, Lcom/bst/aiframesl/BstAIFrameSlFilter;->nativeDeleteObj(J)I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 51
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method
