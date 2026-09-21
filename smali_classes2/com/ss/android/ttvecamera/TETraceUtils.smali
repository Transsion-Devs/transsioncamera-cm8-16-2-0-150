.class public Lcom/ss/android/ttvecamera/TETraceUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sEnableTrace:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .registers 2

    .line 22
    sget-boolean v0, Lcom/ss/android/ttvecamera/TETraceUtils;->sEnableTrace:Z

    if-nez v0, :cond_5

    return-void

    .line 26
    :cond_5
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    return-void
.end method

.method public static endSection()V
    .registers 1

    .line 33
    sget-boolean v0, Lcom/ss/android/ttvecamera/TETraceUtils;->sEnableTrace:Z

    if-nez v0, :cond_5

    return-void

    .line 37
    :cond_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public static declared-synchronized init(Z)V
    .registers 2

    const-class v0, Lcom/ss/android/ttvecamera/TETraceUtils;

    monitor-enter v0

    .line 14
    :try_start_3
    sput-boolean p0, Lcom/ss/android/ttvecamera/TETraceUtils;->sEnableTrace:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 15
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p0
.end method
