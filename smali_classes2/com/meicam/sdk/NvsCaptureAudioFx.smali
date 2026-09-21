.class public Lcom/meicam/sdk/NvsCaptureAudioFx;
.super Lcom/meicam/sdk/NvsFx;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/meicam/sdk/NvsFx;-><init>()V

    return-void
.end method

.method private native nativeGetBuiltinCaptureAudioFxName(J)Ljava/lang/String;
.end method

.method private native nativeGetIndex(J)I
.end method


# virtual methods
.method public getBuiltinCaptureAudioFxName()Ljava/lang/String;
    .registers 3

    .line 45
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 46
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsCaptureAudioFx;->nativeGetBuiltinCaptureAudioFxName(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIndex()I
    .registers 3

    .line 59
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 60
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsCaptureAudioFx;->nativeGetIndex(J)I

    move-result p0

    return p0
.end method
