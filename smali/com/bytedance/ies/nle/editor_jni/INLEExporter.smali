.class public interface abstract Lcom/bytedance/ies/nle/editor_jni/INLEExporter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract cancelCompile()I
.end method

.method public abstract compile(Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Z
.end method

.method public abstract compile(Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;Lcom/bytedance/ies/nle/editor_jni/INLEListenerCompile;)Z
.end method

.method public abstract compile(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Z
.end method

.method public abstract compile(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;Lcom/bytedance/ies/nle/editor_jni/INLEListenerCompile;)Z
.end method

.method public abstract delete()V
.end method

.method public abstract destroy()V
.end method

.method public abstract getRemuxErrorCode(Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)I
.end method

.method public abstract isEnableRemuxVideo(Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Z
.end method

.method public abstract isWatermarkCompileEncode()I
.end method
