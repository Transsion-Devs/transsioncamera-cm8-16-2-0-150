.class public Lcom/bef/byteeffect/game/NativeInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bef/byteeffect/game/NativeInterface$NativeMessageListener;
    }
.end annotation


# static fields
.field private static final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 12
    const-string v0, "effect"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/bef/byteeffect/game/NativeInterface;->list:Ljava/util/List;

    .line 16
    :try_start_c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 17
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_21

    goto :goto_10

    :cond_20
    return-void

    :catchall_21
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMessageListener(JLcom/bef/byteeffect/game/NativeInterface$NativeMessageListener;)I
    .registers 3

    .line 74
    invoke-static {p0, p1, p2}, Lcom/bef/byteeffect/game/NativeInterface;->nativeAddMessageListener(JLcom/bef/byteeffect/game/NativeInterface$NativeMessageListener;)I

    move-result p0

    return p0
.end method

.method public static createHandle([J)V
    .registers 1

    .line 26
    invoke-static {p0}, Lcom/bef/byteeffect/game/NativeInterface;->nativeCreateHandle([J)V

    return-void
.end method

.method public static destroy(J)I
    .registers 2

    .line 54
    invoke-static {p0, p1}, Lcom/bef/byteeffect/game/NativeInterface;->nativeDestroy(J)I

    move-result p0

    return p0
.end method

.method public static init(JII)I
    .registers 4

    .line 30
    invoke-static {p0, p1, p2, p3}, Lcom/bef/byteeffect/game/NativeInterface;->nativeInit(JII)I

    move-result p0

    return p0
.end method

.method private static native nativeAddMessageListener(JLcom/bef/byteeffect/game/NativeInterface$NativeMessageListener;)I
.end method

.method private static native nativeCreateHandle([J)V
.end method

.method private static native nativeDestroy(J)I
.end method

.method private static native nativeInit(JII)I
.end method

.method private static native nativePause(J)I
.end method

.method private static native nativePostMessage(JJJJLjava/lang/String;)I
.end method

.method private static native nativeProcess(JIID)I
.end method

.method private static native nativeRemoveMessageListener(JLcom/bef/byteeffect/game/NativeInterface$NativeMessageListener;)I
.end method

.method private static native nativeResume(J)I
.end method

.method private static native nativeSetSize(JII)I
.end method

.method private static native nativeSetStickerPath(JLjava/lang/String;)I
.end method

.method private static native nativeTouchesBegin(J[I[F[F)I
.end method

.method private static native nativeTouchesEnd(J[I[F[F)I
.end method

.method private static native nativeTouchesMove(J[I[F[F)I
.end method

.method public static pause(J)I
    .registers 2

    .line 46
    invoke-static {p0, p1}, Lcom/bef/byteeffect/game/NativeInterface;->nativePause(J)I

    move-result p0

    return p0
.end method

.method public static postMessage(JJJJLjava/lang/String;)I
    .registers 9

    .line 70
    invoke-static/range {p0 .. p8}, Lcom/bef/byteeffect/game/NativeInterface;->nativePostMessage(JJJJLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static processFrame(JIID)I
    .registers 6

    .line 42
    invoke-static/range {p0 .. p5}, Lcom/bef/byteeffect/game/NativeInterface;->nativeProcess(JIID)I

    move-result p0

    return p0
.end method

.method public static removeMessageListener(JLcom/bef/byteeffect/game/NativeInterface$NativeMessageListener;)I
    .registers 3

    .line 78
    invoke-static {p0, p1, p2}, Lcom/bef/byteeffect/game/NativeInterface;->nativeRemoveMessageListener(JLcom/bef/byteeffect/game/NativeInterface$NativeMessageListener;)I

    move-result p0

    return p0
.end method

.method public static resume(J)I
    .registers 2

    .line 50
    invoke-static {p0, p1}, Lcom/bef/byteeffect/game/NativeInterface;->nativeResume(J)I

    move-result p0

    return p0
.end method

.method public static setGameBundlePath(JLjava/lang/String;)I
    .registers 3

    .line 34
    invoke-static {p0, p1, p2}, Lcom/bef/byteeffect/game/NativeInterface;->nativeSetStickerPath(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static setSize(JII)I
    .registers 4

    .line 38
    invoke-static {p0, p1, p2, p3}, Lcom/bef/byteeffect/game/NativeInterface;->nativeSetSize(JII)I

    move-result p0

    return p0
.end method

.method public static touchesBegin(J[I[F[F)I
    .registers 5

    .line 58
    invoke-static {p0, p1, p2, p3, p4}, Lcom/bef/byteeffect/game/NativeInterface;->nativeTouchesBegin(J[I[F[F)I

    move-result p0

    return p0
.end method

.method public static touchesEnd(J[I[F[F)I
    .registers 5

    .line 66
    invoke-static {p0, p1, p2, p3, p4}, Lcom/bef/byteeffect/game/NativeInterface;->nativeTouchesEnd(J[I[F[F)I

    move-result p0

    return p0
.end method

.method public static touchesMove(J[I[F[F)I
    .registers 5

    .line 62
    invoke-static {p0, p1, p2, p3, p4}, Lcom/bef/byteeffect/game/NativeInterface;->nativeTouchesMove(J[I[F[F)I

    move-result p0

    return p0
.end method
