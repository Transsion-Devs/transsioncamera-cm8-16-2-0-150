.class public final Lcom/ss/ttffmpeg/FFmpegLibLoaderWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static getFFmpegLibs()Ljava/util/List;
    .registers 2

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    const-string v1, "ttffmpeg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static declared-synchronized getFFmpegVersion()Ljava/lang/String;
    .registers 2

    const-class v0, Lcom/ss/ttffmpeg/FFmpegLibLoaderWrapper;

    monitor-enter v0

    .line 50
    :try_start_3
    const-string v1, "1.1.77.201-tob-ve-webp"
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v1
.end method
