.class public interface abstract Lcom/ss/android/vesdk/internal/IVESticker;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addEmojiSticker(Ljava/lang/String;)I
.end method

.method public abstract addExtRes(Ljava/lang/String;IIIIFFFF)I
.end method

.method public abstract addImageSticker(Ljava/lang/String;FFFF)I
.end method

.method public abstract addImageStickerWithRatio(Ljava/lang/String;FFFF)I
.end method

.method public abstract addInfoSticker(Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract addInfoStickerOrEmoji(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract addInfoStickerTemplate(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract addInfoStickerWithBuffer()I
.end method

.method public abstract addInfoStickerWithInitInfo(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract addSticker(Ljava/lang/String;IIFFFF)I
.end method

.method public abstract addSticker(Ljava/lang/String;IIIIFFFF)I
.end method

.method public abstract addTextSticker(Ljava/lang/String;)I
.end method

.method public abstract addTextStickerWithInitInfo(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract begin2DBrush()I
.end method

.method public abstract beginInfoStickerPin(I)I
.end method

.method public abstract cancelInfoStickerPin(I)I
.end method

.method public abstract clearNativeFromSticker()V
.end method

.method public abstract deleteSticker(I)I
.end method

.method public abstract enableStickerAnimationPreview(IZ)I
.end method

.method public abstract enableStickerResourceLoadSync(IZ)I
.end method

.method public abstract end2DBrush(Ljava/lang/String;)I
.end method

.method public abstract forceUpdateInfoSticker(IZ)I
.end method

.method public abstract get2DBrushStrokeCount()I
.end method

.method public abstract getInfoStickerBoundingBox(I)[F
.end method

.method public abstract getInfoStickerBoundingBoxWithoutRotate(I)[F
.end method

.method public abstract getInfoStickerFlip(I[Z)I
.end method

.method public abstract getInfoStickerIsDynamic(I)Z
.end method

.method public abstract getInfoStickerPinData(I[Ljava/nio/ByteBuffer;)I
.end method

.method public abstract getInfoStickerPinState(I)I
.end method

.method public abstract getInfoStickerPosition(I[F)I
.end method

.method public abstract getInfoStickerRotate(I)F
.end method

.method public abstract getInfoStickerScale(I)F
.end method

.method public abstract getInfoStickerTemplateParams(I)Ljava/lang/String;
.end method

.method public abstract getInfoStickerTemplateParams(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getInfoStickerVisible(I)Z
.end method

.method public abstract getSrtInfoStickerInitPosition(I[F)I
.end method

.method public abstract getTextContent(Lcom/ss/android/vesdk/VEEditor$OnARTextContentCallback;)I
.end method

.method public abstract getTextLimitCount()I
.end method

.method public abstract is2DBrushEmpty()Z
.end method

.method public abstract isInfoStickerAnimatable(I)Z
.end method

.method public abstract notifyHideKeyBoard(Z)I
.end method

.method public abstract pauseEffectAudio(Z)I
.end method

.method public abstract pauseInfoStickerAnimation(Z)I
.end method

.method public abstract removeInfoSticker(I)I
.end method

.method public abstract restoreInfoStickerPinWithData(ILjava/nio/ByteBuffer;)I
.end method

.method public abstract set2DBrushCanvasAlpha(F)I
.end method

.method public abstract set2DBrushColor(I)I
.end method

.method public abstract set2DBrushSize(F)I
.end method

.method public abstract setEffectBgmEnable(Z)I
.end method

.method public abstract setEffectFontPath(ILjava/lang/String;I)I
.end method

.method public abstract setEffectInputText(ILjava/lang/String;IILjava/lang/String;)I
.end method

.method public abstract setInfoStickerAlpha(IF)I
.end method

.method public abstract setInfoStickerBufferCallback(Lcom/ss/android/vesdk/VEListener$VEInfoStickerBufferListener;)I
.end method

.method public abstract setInfoStickerCallSync(Z)I
.end method

.method public abstract setInfoStickerFlip(IZZ)I
.end method

.method public abstract setInfoStickerLayer(II)I
.end method

.method public abstract setInfoStickerPosition(IFF)I
.end method

.method public abstract setInfoStickerRestoreMode(I)I
.end method

.method public abstract setInfoStickerRotation(IF)I
.end method

.method public abstract setInfoStickerScale(IF)I
.end method

.method public abstract setInfoStickerScaleSync(IF)F
.end method

.method public abstract setInfoStickerTemplateParams(ILjava/lang/String;)I
.end method

.method public abstract setInfoStickerTime(III)I
.end method

.method public abstract setInfoStickerVisible(IZ)I
.end method

.method public abstract setLanguage(Ljava/lang/String;)I
.end method

.method public abstract setSrtAudioInfo(IIIIIZ)I
.end method

.method public abstract setSrtColor(II)I
.end method

.method public abstract setSrtFont(ILjava/lang/String;)I
.end method

.method public abstract setSrtInfo(IILjava/lang/String;)I
.end method

.method public abstract setSrtInitialPosition(IFF)I
.end method

.method public abstract setSrtManipulateState(IZ)I
.end method

.method public abstract setStickerAnimation(IZLjava/lang/String;ILjava/lang/String;ILjava/lang/String;III)I
.end method

.method public abstract setStickerAnimator(ILcom/ss/android/vesdk/VEStickerAnimator;)I
.end method

.method public abstract setStickerPinArea(ILcom/ss/android/vesdk/filterparam/VEStickerPinAreaParam;)I
.end method

.method public abstract setTextBitmapCallback(Lcom/ss/android/vesdk/VEEditor$OnARTextBitmapCallback;)I
.end method

.method public abstract startStickerAnimationPreview(II)I
.end method

.method public abstract stopInfoStickerPin(I)I
.end method

.method public abstract stopStickerAnimationPreview()I
.end method

.method public abstract undo2DBrush()I
.end method

.method public abstract updateTextSticker(ILjava/lang/String;)I
.end method
