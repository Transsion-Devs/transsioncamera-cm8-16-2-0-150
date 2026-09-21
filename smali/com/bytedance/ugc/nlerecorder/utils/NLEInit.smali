.class public final Lcom/bytedance/ugc/nlerecorder/utils/NLEInit;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/bytedance/ugc/nlerecorder/utils/NLEInit;

.field private static volatile isLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/ugc/nlerecorder/utils/NLEInit;

    invoke-direct {v0}, Lcom/bytedance/ugc/nlerecorder/utils/NLEInit;-><init>()V

    sput-object v0, Lcom/bytedance/ugc/nlerecorder/utils/NLEInit;->INSTANCE:Lcom/bytedance/ugc/nlerecorder/utils/NLEInit;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized init()V
    .registers 3

    monitor-enter p0

    .line 13
    :try_start_1
    const-string v0, "NLE Version "

    const-string v1, "4c3113ae162256c57065b05c84e83bb361845ab9"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    sget-boolean v0, Lcom/bytedance/ugc/nlerecorder/utils/NLEInit;->isLoaded:Z

    if-nez v0, :cond_14

    .line 15
    const-string v0, "NLEEditorJni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_12

    goto :goto_14

    :catchall_12
    move-exception v0

    goto :goto_16

    .line 18
    :cond_14
    :goto_14
    monitor-exit p0

    return-void

    :goto_16
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_12

    throw v0
.end method

.method public final isLoaded()Z
    .registers 1

    .line 9
    sget-boolean p0, Lcom/bytedance/ugc/nlerecorder/utils/NLEInit;->isLoaded:Z

    return p0
.end method

.method public final setLoaded(Z)V
    .registers 2

    .line 9
    sput-boolean p1, Lcom/bytedance/ugc/nlerecorder/utils/NLEInit;->isLoaded:Z

    return-void
.end method
