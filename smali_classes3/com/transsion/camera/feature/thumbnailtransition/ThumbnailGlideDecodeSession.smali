.class public final Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailGlideDecodeSession;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ROUTE_THUMBNAIL_POOL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final THUMBNAIL_DECODE_SOURCE_PRIORITY:I = -0x4


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailGlideDecodeSession;->ROUTE_THUMBNAIL_POOL:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static callRouted(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 33
    sget-object v0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailGlideDecodeSession;->ROUTE_THUMBNAIL_POOL:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 35
    :try_start_7
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0
    :try_end_b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_7 .. :try_end_b} :catch_16
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_b} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_b} :catch_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_f
    .catchall {:try_start_7 .. :try_end_b} :catchall_18

    .line 41
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-object p0

    :catch_f
    move-exception p0

    .line 39
    :try_start_10
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_16
    move-exception p0

    .line 37
    throw p0
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_18

    :catchall_18
    move-exception p0

    .line 41
    sget-object v0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailGlideDecodeSession;->ROUTE_THUMBNAIL_POOL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 42
    throw p0
.end method

.method public static getPriorityForNextSourceTask()I
    .registers 1

    const/4 v0, -0x4

    return v0
.end method

.method public static isActive()Z
    .registers 2

    .line 21
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailGlideDecodeSession;->ROUTE_THUMBNAIL_POOL:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
