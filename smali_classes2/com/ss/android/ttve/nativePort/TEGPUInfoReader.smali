.class public Lcom/ss/android/ttve/nativePort/TEGPUInfoReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 16
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadBase()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeGetGLVersion()Ljava/lang/String;
.end method

.method public static native nativeGetGPURenderer()Ljava/lang/String;
.end method
