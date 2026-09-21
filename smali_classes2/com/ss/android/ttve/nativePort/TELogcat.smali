.class public Lcom/ss/android/ttve/nativePort/TELogcat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 19
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadBase()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Log(BLjava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 23
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TELogcat;->nativeLog(BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static native nativeLog(BLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeSetLogLevel(B)V
.end method

.method public static setLogLevel(B)V
    .registers 1

    .line 27
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TELogcat;->nativeSetLogLevel(B)V

    return-void
.end method
