.class public Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native CutSameConsumer_addCutSame(JLcom/bytedance/ies/nle/editor_jni/NLEModel;J)I
.end method

.method public static final native CutSameConsumer_getDuration(J)J
.end method

.method public static final native CutSameConsumer_getRatio(J)F
.end method

.method public static final native CutSameConsumer_getTextMaterials(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)J
.end method

.method public static final native CutSameConsumer_getTrackSlot(JLcom/bytedance/ies/nle/editor_jni/NLEModel;Ljava/lang/String;)J
.end method

.method public static final native CutSameConsumer_getVideoMaterials(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)J
.end method

.method public static final native CutSameConsumer_onlyCutSame(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)I
.end method

.method public static final native CutSameConsumer_removeCutSame(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)I
.end method

.method public static final native CutSameConsumer_setTextMaterial(JLcom/bytedance/ies/nle/editor_jni/NLEModel;JLcom/bytedance/ies/nle/editor_jni/TextMaterial;)V
.end method

.method public static final native CutSameConsumer_setVideoMaterial(JLcom/bytedance/ies/nle/editor_jni/NLEModel;JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)V
.end method

.method public static final native CutSameConsumer_trimCutSame(JLcom/bytedance/ies/nle/editor_jni/NLEModel;J)V
.end method

.method public static final native CutSameConsumer_updateRelativeSizeWhileGlobalCanvasChanged(JLcom/bytedance/ies/nle/editor_jni/NLEModel;FF)V
.end method

.method public static final native TextMaterial_getDuration(JLcom/bytedance/ies/nle/editor_jni/TextMaterial;)J
.end method

.method public static final native TextMaterial_getIsMutable(JLcom/bytedance/ies/nle/editor_jni/TextMaterial;)Z
.end method

.method public static final native TextMaterial_getMaterialId(JLcom/bytedance/ies/nle/editor_jni/TextMaterial;)Ljava/lang/String;
.end method

.method public static final native TextMaterial_getNLESlotId(JLcom/bytedance/ies/nle/editor_jni/TextMaterial;)Ljava/lang/String;
.end method

.method public static final native TextMaterial_getRotation(JLcom/bytedance/ies/nle/editor_jni/TextMaterial;)F
.end method

.method public static final native TextMaterial_getTargetStartTime(JLcom/bytedance/ies/nle/editor_jni/TextMaterial;)J
.end method

.method public static final native TextMaterial_getText(JLcom/bytedance/ies/nle/editor_jni/TextMaterial;)Ljava/lang/String;
.end method

.method public static final native TextMaterial_setDuration(JLcom/bytedance/ies/nle/editor_jni/TextMaterial;J)V
.end method

.method public static final native TextMaterial_setIsMutable(JLcom/bytedance/ies/nle/editor_jni/TextMaterial;Z)V
.end method

.method public static final native TextMaterial_setMaterialId(JLcom/bytedance/ies/nle/editor_jni/TextMaterial;Ljava/lang/String;)V
.end method

.method public static final native TextMaterial_setNLESlotId(JLcom/bytedance/ies/nle/editor_jni/TextMaterial;Ljava/lang/String;)V
.end method

.method public static final native TextMaterial_setRotation(JLcom/bytedance/ies/nle/editor_jni/TextMaterial;F)V
.end method

.method public static final native TextMaterial_setTargetStartTime(JLcom/bytedance/ies/nle/editor_jni/TextMaterial;J)V
.end method

.method public static final native TextMaterial_setText(JLcom/bytedance/ies/nle/editor_jni/TextMaterial;Ljava/lang/String;)V
.end method

.method public static final native VectorOfTextMaterial_capacity(JLcom/bytedance/ies/nle/editor_jni/VectorOfTextMaterial;)J
.end method

.method public static final native VectorOfTextMaterial_clear(JLcom/bytedance/ies/nle/editor_jni/VectorOfTextMaterial;)V
.end method

.method public static final native VectorOfTextMaterial_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VectorOfTextMaterial;JLcom/bytedance/ies/nle/editor_jni/TextMaterial;)V
.end method

.method public static final native VectorOfTextMaterial_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VectorOfTextMaterial;IJLcom/bytedance/ies/nle/editor_jni/TextMaterial;)V
.end method

.method public static final native VectorOfTextMaterial_doGet(JLcom/bytedance/ies/nle/editor_jni/VectorOfTextMaterial;I)J
.end method

.method public static final native VectorOfTextMaterial_doRemove(JLcom/bytedance/ies/nle/editor_jni/VectorOfTextMaterial;I)J
.end method

.method public static final native VectorOfTextMaterial_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VectorOfTextMaterial;II)V
.end method

.method public static final native VectorOfTextMaterial_doSet(JLcom/bytedance/ies/nle/editor_jni/VectorOfTextMaterial;IJLcom/bytedance/ies/nle/editor_jni/TextMaterial;)J
.end method

.method public static final native VectorOfTextMaterial_doSize(JLcom/bytedance/ies/nle/editor_jni/VectorOfTextMaterial;)I
.end method

.method public static final native VectorOfTextMaterial_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VectorOfTextMaterial;)Z
.end method

.method public static final native VectorOfTextMaterial_reserve(JLcom/bytedance/ies/nle/editor_jni/VectorOfTextMaterial;J)V
.end method

.method public static final native VectorOfVideoMaterial_capacity(JLcom/bytedance/ies/nle/editor_jni/VectorOfVideoMaterial;)J
.end method

.method public static final native VectorOfVideoMaterial_clear(JLcom/bytedance/ies/nle/editor_jni/VectorOfVideoMaterial;)V
.end method

.method public static final native VectorOfVideoMaterial_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VectorOfVideoMaterial;JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)V
.end method

.method public static final native VectorOfVideoMaterial_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VectorOfVideoMaterial;IJLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)V
.end method

.method public static final native VectorOfVideoMaterial_doGet(JLcom/bytedance/ies/nle/editor_jni/VectorOfVideoMaterial;I)J
.end method

.method public static final native VectorOfVideoMaterial_doRemove(JLcom/bytedance/ies/nle/editor_jni/VectorOfVideoMaterial;I)J
.end method

.method public static final native VectorOfVideoMaterial_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VectorOfVideoMaterial;II)V
.end method

.method public static final native VectorOfVideoMaterial_doSet(JLcom/bytedance/ies/nle/editor_jni/VectorOfVideoMaterial;IJLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)J
.end method

.method public static final native VectorOfVideoMaterial_doSize(JLcom/bytedance/ies/nle/editor_jni/VectorOfVideoMaterial;)I
.end method

.method public static final native VectorOfVideoMaterial_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VectorOfVideoMaterial;)Z
.end method

.method public static final native VectorOfVideoMaterial_reserve(JLcom/bytedance/ies/nle/editor_jni/VectorOfVideoMaterial;J)V
.end method

.method public static final native VideoMaterial_getAlignMode(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)Ljava/lang/String;
.end method

.method public static final native VideoMaterial_getCartoonType(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)I
.end method

.method public static final native VideoMaterial_getCropScale(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)F
.end method

.method public static final native VideoMaterial_getCropXLeft(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)F
.end method

.method public static final native VideoMaterial_getCropXRight(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)F
.end method

.method public static final native VideoMaterial_getCropYLower(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)F
.end method

.method public static final native VideoMaterial_getCropYUpper(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)F
.end method

.method public static final native VideoMaterial_getDuration(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)J
.end method

.method public static final native VideoMaterial_getHeight(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)I
.end method

.method public static final native VideoMaterial_getIsMutable(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)Z
.end method

.method public static final native VideoMaterial_getIsReverse(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)Z
.end method

.method public static final native VideoMaterial_getIsSubVideo(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)Z
.end method

.method public static final native VideoMaterial_getMaterialId(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)Ljava/lang/String;
.end method

.method public static final native VideoMaterial_getNLESlotId(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)Ljava/lang/String;
.end method

.method public static final native VideoMaterial_getPath(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)Ljava/lang/String;
.end method

.method public static final native VideoMaterial_getSourceDuration(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)J
.end method

.method public static final native VideoMaterial_getSourceStartTime(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)J
.end method

.method public static final native VideoMaterial_getTargetEndTime(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)J
.end method

.method public static final native VideoMaterial_getTargetStartTime(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)J
.end method

.method public static final native VideoMaterial_getType(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)Ljava/lang/String;
.end method

.method public static final native VideoMaterial_getWidth(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)I
.end method

.method public static final native VideoMaterial_setAlignMode(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;Ljava/lang/String;)V
.end method

.method public static final native VideoMaterial_setCartoonType(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;I)V
.end method

.method public static final native VideoMaterial_setCropScale(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;F)V
.end method

.method public static final native VideoMaterial_setCropXLeft(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;F)V
.end method

.method public static final native VideoMaterial_setCropXRight(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;F)V
.end method

.method public static final native VideoMaterial_setCropYLower(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;F)V
.end method

.method public static final native VideoMaterial_setCropYUpper(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;F)V
.end method

.method public static final native VideoMaterial_setDuration(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;J)V
.end method

.method public static final native VideoMaterial_setEndStartTime(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;J)V
.end method

.method public static final native VideoMaterial_setHeight(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;I)V
.end method

.method public static final native VideoMaterial_setIsMutable(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;Z)V
.end method

.method public static final native VideoMaterial_setIsReverse(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;Z)V
.end method

.method public static final native VideoMaterial_setIsSubVideo(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;Z)V
.end method

.method public static final native VideoMaterial_setMaterialId(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;Ljava/lang/String;)V
.end method

.method public static final native VideoMaterial_setNLESlotId(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;Ljava/lang/String;)V
.end method

.method public static final native VideoMaterial_setPath(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;Ljava/lang/String;)V
.end method

.method public static final native VideoMaterial_setSourceDuration(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;J)V
.end method

.method public static final native VideoMaterial_setSourceStartTime(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;J)V
.end method

.method public static final native VideoMaterial_setTargetStartTime(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;J)V
.end method

.method public static final native VideoMaterial_setType(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;Ljava/lang/String;)V
.end method

.method public static final native VideoMaterial_setWidth(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;I)V
.end method

.method public static final native delete_CutSameConsumer(J)V
.end method

.method public static final native delete_TextMaterial(J)V
.end method

.method public static final native delete_VectorOfTextMaterial(J)V
.end method

.method public static final native delete_VectorOfVideoMaterial(J)V
.end method

.method public static final native delete_VideoMaterial(J)V
.end method

.method public static final native new_CutSameConsumer()J
.end method

.method public static final native new_TextMaterial()J
.end method

.method public static final native new_VectorOfTextMaterial__SWIG_0()J
.end method

.method public static final native new_VectorOfTextMaterial__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VectorOfTextMaterial;)J
.end method

.method public static final native new_VectorOfTextMaterial__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/TextMaterial;)J
.end method

.method public static final native new_VectorOfVideoMaterial__SWIG_0()J
.end method

.method public static final native new_VectorOfVideoMaterial__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VectorOfVideoMaterial;)J
.end method

.method public static final native new_VectorOfVideoMaterial__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)J
.end method

.method public static final native new_VideoMaterial()J
.end method
