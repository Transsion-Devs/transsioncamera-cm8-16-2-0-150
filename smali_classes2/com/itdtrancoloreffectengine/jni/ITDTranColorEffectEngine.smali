.class public abstract Lcom/itdtrancoloreffectengine/jni/ITDTranColorEffectEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 18
    :try_start_0
    const-string v0, "TranColorEffectEngine"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 21
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot load TranColorEffectEngine library: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static native ITDTranColorEffectEngine_JNI_GetVersion()Ljava/lang/String;
.end method

.method public static native ITDTranColorEffectEngine_JNI_InitEngine(IILjava/lang/String;)J
.end method

.method public static native ITDTranColorEffectEngine_JNI_ProcessTexture(I[I)J
.end method

.method public static native ITDTranColorEffectEngine_JNI_ReleaseEngine()J
.end method

.method public static native ITDTranColorEffectEngine_JNI_SetIntFeature(II)J
.end method
