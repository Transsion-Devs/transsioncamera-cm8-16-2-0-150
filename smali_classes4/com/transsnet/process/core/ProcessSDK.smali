.class public final Lcom/transsnet/process/core/ProcessSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    const-string v0, "ProcessCore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeOnDestroy()V
.end method

.method private native nativeOnDrawFrame(III)I
.end method

.method private native nativeOnInit()I
.end method

.method private native nativeSetFilter(Ljava/lang/String;)Z
.end method

.method private native nativeUpdateFilterIntensity(F)V
.end method

.method private native nativeUpdateHighlightIntensity(F)V
.end method

.method private native nativeUpdateShadowIntensity(F)V
.end method


# virtual methods
.method public onDestroy()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/transsnet/process/core/ProcessSDK;->nativeOnDestroy()V

    return-void
.end method

.method public onDrawFrame(III)I
    .registers 4

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/transsnet/process/core/ProcessSDK;->nativeOnDrawFrame(III)I

    move-result p0

    return p0
.end method

.method public onInit()I
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/transsnet/process/core/ProcessSDK;->nativeOnInit()I

    move-result p0

    return p0
.end method

.method public setFilter(Ljava/lang/String;)Z
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/transsnet/process/core/ProcessSDK;->nativeSetFilter(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public updateFilterIntensity(F)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/transsnet/process/core/ProcessSDK;->nativeUpdateFilterIntensity(F)V

    return-void
.end method

.method public updateHighlightIntensity(F)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lcom/transsnet/process/core/ProcessSDK;->nativeUpdateHighlightIntensity(F)V

    return-void
.end method

.method public updateShadowIntensity(F)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/transsnet/process/core/ProcessSDK;->nativeUpdateShadowIntensity(F)V

    return-void
.end method
