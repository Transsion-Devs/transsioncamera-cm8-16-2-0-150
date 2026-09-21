.class public interface abstract Lcom/bytedance/ies/nle/editor_jni/INLEStickerRuntime;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract beginInfoStickerPin(Ljava/lang/String;)I
.end method

.method public abstract cancelInfoStickerPin(Ljava/lang/String;)I
.end method

.method public abstract enableStickerAnimationPreview(Ljava/lang/String;Z)I
.end method

.method public abstract getInfoStickerBoundingBox(Ljava/lang/String;Z)Lcom/bytedance/ies/nle/editor_jni/NLERectF;
.end method

.method public abstract getInfoStickerPinData(Ljava/lang/String;)[B
.end method

.method public abstract getInfoStickerPinState(Ljava/lang/String;)I
.end method

.method public abstract getInfoStickerRotate(Ljava/lang/String;)F
.end method

.method public abstract getInfoStickerScale(Ljava/lang/String;)F
.end method

.method public abstract getInfoStickerTemplateParams(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getInfoStickerVisible(Ljava/lang/String;)Z
.end method

.method public abstract getSrtInfoStickerInitPosition(Ljava/lang/String;)Lcom/bytedance/ies/nle/editor_jni/NLEPosition;
.end method

.method public abstract getStickerIsDynamic(Ljava/lang/String;)Z
.end method

.method public abstract isInfoStickerAnimatable(Ljava/lang/String;)Z
.end method

.method public abstract setInfoStickerBufferCallback(Lcom/bytedance/ies/nle/editor_jni/INLEListenerInfoStickerBuffer;)I
.end method

.method public abstract setInfoStickerRestoreMode(I)I
.end method

.method public abstract setInfoStickerTransform(Ljava/lang/String;FFFF)I
.end method

.method public abstract setInfoStickerTransform(Ljava/lang/String;FFFFF)I
.end method

.method public abstract setSrtManipulateState(Ljava/lang/String;Z)I
.end method

.method public abstract startStickerAnimationPreview(JI)I
.end method

.method public abstract stopStickerAnimationPreview()I
.end method
