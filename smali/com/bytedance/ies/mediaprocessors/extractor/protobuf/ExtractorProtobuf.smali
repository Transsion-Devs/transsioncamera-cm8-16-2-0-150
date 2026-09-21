.class public final Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResultOrBuilder;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SkeletonBuffer;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SkeletonBufferOrBuilder;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SkeletonInfo;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SkeletonInfoOrBuilder;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SaliencySegInfo;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SaliencySegInfoOrBuilder;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_PetMattingBuffer;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_PetMattingBufferOrBuilder;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_PetMattingInfo;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_PetMattingInfoOrBuilder;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FacePetDetectBuffer;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FacePetDetectBufferOrBuilder;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FacePetInfo;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FacePetInfoOrBuilder;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_NHClassificationBuffer;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_NHClassificationBufferOrBuilder;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_NHClassificationFeature;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_NHClassificationFeatureOrBuilder;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_NHClassificationInfo;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_NHClassificationInfoOrBuilder;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogV3Buffer;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogV3BufferOrBuilder;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogV3Info;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogV3InfoOrBuilder;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBufferOrBuilder;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogInfo;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogInfoOrBuilder;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_AfterEffectBuffer;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_AfterEffectBufferOrBuilder;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_AEScoreInfo;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_AEScoreInfoOrBuilder;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBufferOrBuilder;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceBuffer;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceBufferOrBuilder;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceOcclusion;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceOcclusionOrBuilder;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceFaceMask;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceFaceMaskOrBuilder;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceTeethMask;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceTeethMaskOrBuilder;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMaskOrBuilder;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtraOrBuilder;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceAttributeBuffer;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceAttributeBufferOrBuilder;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceAttribute;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceAttributeOrBuilder;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceVerifyBuffer;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceVerifyBufferOrBuilder;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceVerifyInfo;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceVerifyInfoOrBuilder;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106OrBuilder;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArrayOrBuilder;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2OrBuilder;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_RectOrBuilder;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SimilarityBuffer;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SimilarityBufferOrBuilder;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_PornClsBuffer;,
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_PornClsBufferOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_C_AEScoreInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_C_AEScoreInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_C_AfterEffectBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_C_AfterEffectBuffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_C_Face106_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_C_Face106_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_C_FaceAttributeBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_C_FaceAttributeBuffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_C_FaceAttribute_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_C_FaceAttribute_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_C_FaceBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_C_FaceBuffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_C_FaceClustingBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_C_FaceClustingBuffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_C_FaceExtra_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_C_FaceExtra_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_C_FaceFaceMask_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_C_FaceFaceMask_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_C_FaceMouthMask_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_C_FaceMouthMask_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_C_FaceOcclusion_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_C_FaceOcclusion_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_C_FacePetDetectBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_C_FacePetDetectBuffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_C_FacePetInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_C_FacePetInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_C_FaceTeethMask_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_C_FaceTeethMask_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_C_FaceVerifyBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_C_FaceVerifyBuffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_C_FaceVerifyInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_C_FaceVerifyInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_C_Float2_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_C_Float2_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_C_IntArray_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_C_IntArray_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_C_MattingResult_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_C_MattingResult_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_C_NHClassificationBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_C_NHClassificationBuffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_C_NHClassificationFeature_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_C_NHClassificationFeature_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_C_NHClassificationInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_C_NHClassificationInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_C_PetMattingBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_C_PetMattingBuffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_C_PetMattingInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_C_PetMattingInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_C_PornClsBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_C_PornClsBuffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_C_Rect_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_C_Rect_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_C_SaliencySegInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_C_SaliencySegInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_C_SceneRecogBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_C_SceneRecogBuffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_C_SceneRecogInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_C_SceneRecogInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_C_SceneRecogV3Buffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_C_SceneRecogV3Buffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_C_SceneRecogV3Info_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_C_SceneRecogV3Info_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_C_SimilarityBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_C_SimilarityBuffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_C_SkeletonBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_C_SkeletonBuffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_C_SkeletonInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_C_SkeletonInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .registers 20

    .line 41884
    const-string v0, "\n\u000cbuffer.proto\"6\n\u000fC_PornClsBuffer\u0012\u000f\n\u0007is_porn\u0018\u0001 \u0002(\u0008\u0012\u0012\n\nconfidence\u0018\u0002 \u0002(\u0002\"H\n\u0012C_SimilarityBuffer\u0012\r\n\u0005score\u0018\u0001 \u0002(\u0002\u0012\u000f\n\u0007feature\u0018\u0002 \u0003(\r\u0012\u0012\n\nclusterIds\u0018\u0003 \u0003(\u0005\"=\n\u0006C_Rect\u0012\t\n\u0001x\u0018\u0001 \u0002(\u0002\u0012\t\n\u0001y\u0018\u0002 \u0002(\u0002\u0012\r\n\u0005width\u0018\u0003 \u0002(\u0002\u0012\u000e\n\u0006height\u0018\u0004 \u0002(\u0002\" \n\u0008C_Float2\u0012\t\n\u0001x\u0018\u0001 \u0002(\u0002\u0012\t\n\u0001y\u0018\u0002 \u0002(\u0002\"\u0017\n\nC_IntArray\u0012\t\n\u0001i\u0018\u0001 \u0003(\u0005\"\u00da\u0001\n\tC_Face106\u0012\u0015\n\u0004rect\u0018\u0001 \u0002(\u000b2\u0007.C_Rect\u0012\r\n\u0005score\u0018\u0002 \u0002(\u0002\u0012\u001f\n\u000cpoints_array\u0018\u0003 \u0003(\u000b2\t.C_Float2\u0012\u0018\n\u0010visibility_array\u0018\u0004 \u0003(\u0002\u0012\u000b\n\u0003yaw\u0018\u0005 \u0002(\u0002\u0012\r\n\u0005pitch\u0018\u0006 \u0002(\u0002\u0012\u000c\n\u0004roll\u0018\u0007 \u0002(\u0002\u0012\u0010\n\u0008eye_dist\u0018\u0008 \u0002(\u0002\u0012\n\n\u0002ID\u0018\t \u0002(\u0005\u0012\u000e\n\u0006action\u0018\n \u0002(\r\u0012\u0014\n\u000ctracking_cnt\u0018\u000b \u0002(\r\"\u0094\u0001\n\u0010C_FaceVerifyInfo\u0012\u0010\n\u0008features\u0018\u0001 \u0003(\u0002\u0012\u001d\n\tm_face106\u0018\u0002 \u0002(\u000b2\n.C_Face106\u0012\n\n\u0002ID\u0018\u0003 \u0002(\u0005\u0012\u0015\n\u0004rect\u0018\u0004 \u0002(\u000b2\u0007.C_Rect\u0012\u0014\n\u000cm_faceStatus\u0018\u0005 \u0002(\u0005\u0012\u0016\n\u000em_modelVersion\u0018\u0006 \u0002(\t\"\u00b3\u0001\n\u0012C_FaceVerifyBuffer\u0012,\n\u0011m_faceVerifyInfos\u0018\u0001 \u0003(\u000b2\u0011.C_FaceVerifyInfo\u0012)\n\u000em_dynamicInfos\u0018\u0002 \u0003(\u000b2\u0011.C_FaceVerifyInfo\u0012\u0012\n\nneedUpdate\u0018\u0003 \u0002(\u0008\u0012\u0016\n\u000em_validFaceNum\u0018\u0004 \u0002(\u0005\u0012\u0018\n\u0010m_dynamicFaceNum\u0018\u0005 \u0002(\u0005\"\u00b7\u0001\n\u000fC_FaceAttribute\u0012\u000b\n\u0003age\u0018\u0001 \u0002(\u0002\u0012\u0010\n\u0008boy_prob\u0018\u0002 \u0002(\u0002\u0012\u000e\n\u0006gender\u0018\u0003 \u0002(\u0005\u0012\u0012\n\nattractive\u0018\u0004 \u0002(\u0002\u0012\u0013\n\u000bhappy_score\u0018\u0005 \u0002(\u0002\u0012\u0010\n\u0008exp_type\u0018\u0006 \u0002(\u0005\u0012\u0011\n\texp_probs\u0018\u0007 \u0003(\u0002\u0012\u0016\n\u000ereal_face_prob\u0018\u0008 \u0002(\u0002\u0012\u000f\n\u0007quality\u0018\t \u0002(\u0002\"G\n\u0015C_FaceAttributeBuffer\u0012.\n\u0014m_faceAttributeInfos\u0018\u0001 \u0003(\u000b2\u0010.C_FaceAttribute\"\u00b3\u0002\n\u000bC_FaceExtra\u0012\u0011\n\teye_count\u0018\u0001 \u0002(\u0005\u0012\u0015\n\reyebrow_count\u0018\u0002 \u0002(\u0005\u0012\u0012\n\nlips_count\u0018\u0003 \u0002(\u0005\u0012\u0012\n\niris_count\u0018\u0004 \u0002(\u0005\u0012\u001b\n\u0008eye_left\u0018\u0005 \u0003(\u000b2\t.C_Float2\u0012\u001c\n\teye_right\u0018\u0006 \u0003(\u000b2\t.C_Float2\u0012\u001f\n\u000ceyebrow_left\u0018\u0007 \u0003(\u000b2\t.C_Float2\u0012 \n\reyebrow_right\u0018\u0008 \u0003(\u000b2\t.C_Float2\u0012\u0017\n\u0004lips\u0018\t \u0003(\u000b2\t.C_Float2\u0012\u001c\n\tleft_iris\u0018\n \u0003(\u000b2\t.C_Float2\u0012\u001d\n\nright_iris\u0018\u000b \u0003(\u000b2\t.C_Float2\"Z\n\u000fC_FaceMouthMask\u0012\u0016\n\u000eface_mask_size\u0018\u0001 \u0002(\u0005\u0012\u0011\n\tface_mask\u0018\u0002 \u0003(\r\u0012\u0010\n\u0008warp_mat\u0018\u0003 \u0003(\u0002\u0012\n\n\u0002id\u0018\u0004 \u0002(\u0005\"Z\n\u000fC_FaceTeethMask\u0012\u0016\n\u000eface_mask_size\u0018\u0001 \u0002(\u0005\u0012\u0011\n\tface_mask\u0018\u0002 \u0003(\r\u0012\u0010\n\u0008warp_mat\u0018\u0003 \u0003(\u0002\u0012\n\n\u0002id\u0018\u0004 \u0002(\u0005\"Y\n\u000eC_FaceFaceMask\u0012\u0016\n\u000eface_mask_size\u0018\u0001 \u0002(\u0005\u0012\u0011\n\tface_mask\u0018\u0002 \u0003(\r\u0012\u0010\n\u0008warp_mat\u0018\u0003 \u0003(\u0002\u0012\n\n\u0002id\u0018\u0004 \u0002(\u0005\"+\n\u000fC_FaceOcclusion\u0012\u000c\n\u0004prob\u0018\u0001 \u0002(\u0002\u0012\n\n\u0002id\u0018\u0002 \u0002(\u0005\"\u00a8\u0002\n\u000cC_FaceBuffer\u0012#\n\u000fm_faceBaseInfos\u0018\u0001 \u0003(\u000b2\n.C_Face106\u0012&\n\u0010m_faceExtraInfos\u0018\u0002 \u0003(\u000b2\u000c.C_FaceExtra\u0012)\n\u000fm_faceMouthMask\u0018\u0003 \u0003(\u000b2\u0010.C_FaceMouthMask\u0012)\n\u000fm_faceTeethMask\u0018\u0004 \u0003(\u000b2\u0010.C_FaceTeethMask\u0012\'\n\u000em_faceFaceMask\u0018\u0005 \u0003(\u000b2\u000f.C_FaceFaceMask\u0012)\n\u000fm_faceOcclusion\u0018\u0006 \u0003(\u000b2\u0010.C_FaceOcclusion\u0012\u000f\n\u0007m_width\u0018\u0007 \u0002(\u0005\u0012\u0010\n\u0008m_height\u0018\u0008 \u0002(\u0005\"f\n\u0014C_FaceClustingBuffer\u0012\u0011\n\tm_results\u0018\u0001 \u0003(\u0005\u0012\u001f\n\nm_clusters\u0018\u0002 \u0003(\u000b2\u000b.C_IntArray\u0012\u001a\n\u0012m_faceClustingInfo\u0018\u0003 \u0002(\u0008\"\u00a4\u0001\n\rC_AEScoreInfo\u0012\u000c\n\u0004time\u0018\u0001 \u0002(\u0005\u0012\r\n\u0005score\u0018\u0002 \u0002(\u0002\u0012\u0012\n\nface_score\u0018\u0003 \u0002(\u0002\u0012\u0015\n\rquality_score\u0018\u0004 \u0002(\u0002\u0012\u0018\n\u0010sharepness_score\u0018\u0005 \u0002(\u0002\u0012\u0019\n\u0011meaningless_score\u0018\u0006 \u0002(\u0002\u0012\u0016\n\u000eportrait_score\u0018\u0007 \u0002(\u0002\"7\n\u0013C_AfterEffectBuffer\u0012 \n\u0008m_scores\u0018\u0001 \u0003(\u000b2\u000e.C_AEScoreInfo\"A\n\u0010C_SceneRecogInfo\u0012\u000c\n\u0004prob\u0018\u0001 \u0002(\u0002\u0012\u0011\n\tsatisfied\u0018\u0002 \u0002(\u0008\u0012\u000c\n\u0004name\u0018\u0003 \u0002(\t\"S\n\u0012C_SceneRecogBuffer\u0012+\n\u0010m_SceneRecogInfo\u0018\u0001 \u0003(\u000b2\u0011.C_SceneRecogInfo\u0012\u0010\n\u0008m_choose\u0018\u0002 \u0002(\u0005\"d\n\u0012C_SceneRecogV3Info\u0012\n\n\u0002id\u0018\u0001 \u0002(\u0005\u0012\u0012\n\nconfidence\u0018\u0002 \u0002(\u0002\u0012\r\n\u0005thres\u0018\u0003 \u0002(\u0002\u0012\u0011\n\tsatisfied\u0018\u0004 \u0002(\u0008\u0012\u000c\n\u0004name\u0018\u0005 \u0002(\t\"[\n\u0014C_SceneRecogV3Buffer\u0012/\n\u0012m_sceneRecogV3Info\u0018\u0001 \u0003(\u000b2\u0013.C_SceneRecogV3Info\u0012\u0012\n\nc3_feature\u0018\u0002 \u0003(\u0002\"b\n\u0016C_NHClassificationInfo\u0012\n\n\u0002id\u0018\u0001 \u0003(\u0005\u0012\u0012\n\nconfidence\u0018\u0002 \u0003(\u0002\u0012\u0014\n\u000cexceedThresh\u0018\u0003 \u0003(\u0005\u0012\u0012\n\nnumClasses\u0018\u0004 \u0002(\u0005\"-\n\u0019C_NHClassificationFeature\u0012\u0010\n\u0008features\u0018\u0001 \u0003(\u0002\"\u00ca\u0001\n\u0018C_NHClassificationBuffer\u0012\u0014\n\u000cm_bufferSize\u0018\u0001 \u0002(\u0004\u00126\n\u0015m_classificationInfos\u0018\u0002 \u0003(\u000b2\u0017.C_NHClassificationInfo\u0012<\n\u0018m_classificationFeatures\u0018\u0003 \u0003(\u000b2\u001a.C_NHClassificationFeature\u0012\u0010\n\u0008m_labels\u0018\u0004 \u0003(\t\u0012\u0010\n\u0008m_thresh\u0018\u0005 \u0003(\u0002\"\u00c5\u0001\n\rC_FacePetInfo\u0012\u0015\n\rface_pet_type\u0018\u0001 \u0002(\u0005\u0012\u0015\n\u0004rect\u0018\u0002 \u0002(\u000b2\u0007.C_Rect\u0012\r\n\u0005score\u0018\u0003 \u0002(\u0002\u0012\u001f\n\u000cpoints_array\u0018\u0004 \u0003(\u000b2\t.C_Float2\u0012\u000b\n\u0003yaw\u0018\u0005 \u0002(\u0002\u0012\r\n\u0005pitch\u0018\u0006 \u0002(\u0002\u0012\u000c\n\u0004roll\u0018\u0007 \u0002(\u0002\u0012\n\n\u0002Id\u0018\u0008 \u0002(\u0005\u0012\u000e\n\u0006action\u0018\t \u0002(\r\u0012\u0010\n\u0008ear_type\u0018\n \u0002(\u0005\"?\n\u0015C_FacePetDetectBuffer\u0012&\n\u000em_facePetInfos\u0018\u0001 \u0003(\u000b2\u000e.C_FacePetInfo\"j\n\u0010C_PetMattingInfo\u0012\u0011\n\tmaskCount\u0018\u0001 \u0002(\u0005\u0012\u0011\n\tmaskWidth\u0018\u0002 \u0002(\u0005\u0012\u0012\n\nmaskHeight\u0018\u0003 \u0002(\u0005\u0012\r\n\u0005mask0\u0018\u0004 \u0003(\r\u0012\r\n\u0005mask1\u0018\u0005 \u0003(\r\"A\n\u0012C_PetMattingBuffer\u0012+\n\u0010m_petMattingInfo\u0018\u0001 \u0002(\u000b2\u0011.C_PetMattingInfo\"\u00fa\u0001\n\u0011C_SaliencySegInfo\u0012\r\n\u0005valid\u0018\u0001 \u0002(\u0008\u0012\r\n\u0005realW\u0018\u0002 \u0002(\u0002\u0012\r\n\u0005realH\u0018\u0003 \u0002(\u0002\u0012\r\n\u0005img_w\u0018\u0004 \u0002(\u0002\u0012\r\n\u0005img_H\u0018\u0005 \u0002(\u0002\u0012\u0013\n\u000bbboxcenterX\u0018\u0006 \u0002(\u0002\u0012\u0013\n\u000bbboxcenterY\u0018\u0007 \u0002(\u0002\u0012\u0011\n\tbboxwidth\u0018\u0008 \u0002(\u0002\u0012\u0012\n\nbboxheight\u0018\t \u0002(\u0002\u0012\u0017\n\u000fbboxrotateAngle\u0018\n \u0002(\u0002\u0012\u0012\n\nmodelIndex\u0018\u000b \u0002(\u0005\u0012\r\n\u0005alpha\u0018\u000c \u0003(\r\u0012\r\n\u0005input\u0018\r \u0003(\r\"\u00a1\u0001\n\u000eC_SkeletonInfo\u0012\n\n\u0002ID\u0018\u0001 \u0002(\u0005\u0012\u0015\n\u0004rect\u0018\u0002 \u0002(\u000b2\u0007.C_Rect\u0012 \n\rkey_points_xy\u0018\u0003 \u0003(\u000b2\t.C_Float2\u0012\u001b\n\u0013key_points_detected\u0018\u0004 \u0003(\r\u0012\u0018\n\u0010key_points_score\u0018\u0005 \u0003(\u0002\u0012\u0013\n\u000borientation\u0018\u0006 \u0002(\u0005\"\u00fe\u0001\n\u0010C_SkeletonBuffer\u0012(\n\u000fm_skeletonInfos\u0018\u0001 \u0003(\u000b2\u000f.C_SkeletonInfo\u0012\u0014\n\u000cm_isExecuted\u0018\u0002 \u0002(\u0008\u0012\u0015\n\rm_sourceWidth\u0018\u0003 \u0002(\u0005\u0012\u0016\n\u000em_sourceHeight\u0018\u0004 \u0002(\u0005\u0012\u0017\n\u000fm_backboneFeats\u0018\u0005 \u0003(\u0002\u0012\u0018\n\u0010m_backbonFeatDim\u0018\u0006 \u0002(\u0005\u0012\u0012\n\nm_heatmaps\u0018\u0007 \u0003(\u0002\u0012\u0014\n\u000cm_heatmapDim\u0018\u0008 \u0002(\u0005\u0012\u001e\n\u0016m_isBackboneFeatsValid\u0018\t \u0002(\u0008\"_\n\u000fC_MattingResult\u0012\r\n\u0005width\u0018\u0001 \u0002(\u0005\u0012\u000e\n\u0006height\u0018\u0002 \u0002(\u0005\u0012\u0010\n\u0008maskData\u0018\u0003 \u0003(\r\u0012\u001b\n\nresultRect\u0018\u0004 \u0002(\u000b2\u0007.C_RectBI\n4com.bytedance.ies.mediaprocessors.extractor.protobufB\u0011ExtractorProtobuf"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 41995
    new-instance v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$1;

    invoke-direct {v1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$1;-><init>()V

    const/4 v2, 0x0

    .line 42003
    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 42004
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 42008
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_PornClsBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 42009
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "IsPorn"

    const-string v3, "Confidence"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_PornClsBuffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 42014
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_SimilarityBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 42015
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Feature"

    const-string v4, "ClusterIds"

    const-string v5, "Score"

    filled-new-array {v5, v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_SimilarityBuffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 42020
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_Rect_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 42021
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "X"

    const-string v4, "Y"

    const-string v5, "Width"

    const-string v6, "Height"

    filled-new-array {v2, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v0, v7}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_Rect_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 42026
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_Float2_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 42027
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_Float2_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 42032
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_IntArray_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 42033
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "I"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_IntArray_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 42038
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_Face106_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 42039
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v16, "Action"

    const-string v17, "TrackingCnt"

    const-string v7, "Rect"

    const-string v8, "Score"

    const-string v9, "PointsArray"

    const-string v10, "VisibilityArray"

    const-string v11, "Yaw"

    const-string v12, "Pitch"

    const-string v13, "Roll"

    const-string v14, "EyeDist"

    const-string v15, "ID"

    filled-new-array/range {v7 .. v17}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_Face106_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 42044
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceVerifyInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 42045
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v11, "MFaceStatus"

    const-string v12, "MModelVersion"

    const-string v7, "Features"

    const-string v8, "MFace106"

    const-string v9, "ID"

    const-string v10, "Rect"

    filled-new-array/range {v7 .. v12}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceVerifyInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 42050
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceVerifyBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 42051
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "MValidFaceNum"

    const-string v4, "MDynamicFaceNum"

    const-string v7, "MFaceVerifyInfos"

    const-string v8, "MDynamicInfos"

    const-string v9, "NeedUpdate"

    filled-new-array {v7, v8, v9, v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceVerifyBuffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 42056
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceAttribute_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 42057
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v14, "RealFaceProb"

    const-string v15, "Quality"

    const-string v7, "Age"

    const-string v8, "BoyProb"

    const-string v9, "Gender"

    const-string v10, "Attractive"

    const-string v11, "HappyScore"

    const-string v12, "ExpType"

    const-string v13, "ExpProbs"

    filled-new-array/range {v7 .. v15}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceAttribute_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 42062
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceAttributeBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 42063
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "MFaceAttributeInfos"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceAttributeBuffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 42068
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceExtra_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 42069
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v16, "LeftIris"

    const-string v17, "RightIris"

    const-string v7, "EyeCount"

    const-string v8, "EyebrowCount"

    const-string v9, "LipsCount3"

    const-string v10, "IrisCount"

    const-string v11, "EyeLeft"

    const-string v12, "EyeRight"

    const-string v13, "EyebrowLeft"

    const-string v14, "EyebrowRight"

    const-string v15, "Lips9"

    filled-new-array/range {v7 .. v17}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceExtra_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 42074
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceMouthMask_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 42075
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "FaceMaskSize"

    const-string v4, "FaceMask"

    const-string v7, "WarpMat"

    const-string v8, "Id"

    filled-new-array {v2, v4, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v0, v9}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceMouthMask_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 42080
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceTeethMask_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 42081
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    filled-new-array {v2, v4, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v0, v9}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceTeethMask_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 42086
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceFaceMask_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 42087
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    filled-new-array {v2, v4, v7, v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceFaceMask_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 42092
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceOcclusion_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 42093
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Prob"

    filled-new-array {v2, v8}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceOcclusion_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 42098
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xf

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 42099
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v15, "MWidth"

    const-string v16, "MHeight"

    const-string v9, "MFaceBaseInfos"

    const-string v10, "MFaceExtraInfos"

    const-string v11, "MFaceMouthMask"

    const-string v12, "MFaceTeethMask"

    const-string v13, "MFaceFaceMask"

    const-string v14, "MFaceOcclusion"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceBuffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 42104
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceClustingBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 42105
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v4, "MClusters"

    const-string v7, "MFaceClustingInfo"

    const-string v9, "MResults"

    filled-new-array {v9, v4, v7}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceClustingBuffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 42110
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x11

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_AEScoreInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 42111
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v14, "MeaninglessScore"

    const-string v15, "PortraitScore"

    const-string v9, "Time"

    const-string v10, "Score"

    const-string v11, "FaceScore"

    const-string v12, "QualityScore"

    const-string v13, "SharepnessScore"

    filled-new-array/range {v9 .. v15}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_AEScoreInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 42116
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_AfterEffectBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 42117
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v4, "MScores"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_AfterEffectBuffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 42122
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x13

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_SceneRecogInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 42123
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v4, "Satisfied"

    const-string v7, "Name"

    filled-new-array {v2, v4, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_SceneRecogInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 42128
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x14

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_SceneRecogBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 42129
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "MSceneRecogInfo"

    const-string v9, "MChoose"

    filled-new-array {v2, v9}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_SceneRecogBuffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 42134
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x15

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_SceneRecogV3Info_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 42135
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Thres"

    filled-new-array {v8, v3, v2, v4, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_SceneRecogV3Info_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 42140
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_SceneRecogV3Buffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 42141
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "MSceneRecogV3Info"

    const-string v4, "C3Feature"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_SceneRecogV3Buffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 42146
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_NHClassificationInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 42147
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "ExceedThresh"

    const-string v4, "NumClasses"

    filled-new-array {v8, v3, v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_NHClassificationInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 42152
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_NHClassificationFeature_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 42153
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Features"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_NHClassificationFeature_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 42158
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_NHClassificationBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 42159
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "MLabels"

    const-string v3, "MThresh"

    const-string v4, "MBufferSize"

    const-string v7, "MClassificationInfos"

    const-string v8, "MClassificationFeatures"

    filled-new-array {v4, v7, v8, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_NHClassificationBuffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 42164
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FacePetInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 42165
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v15, "Action"

    const-string v16, "EarType"

    const-string v7, "FacePetType"

    const-string v8, "Rect"

    const-string v9, "Score"

    const-string v10, "PointsArray"

    const-string v11, "Yaw"

    const-string v12, "Pitch"

    const-string v13, "Roll"

    const-string v14, "Id"

    filled-new-array/range {v7 .. v16}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FacePetInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 42170
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FacePetDetectBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 42171
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "MFacePetInfos"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FacePetDetectBuffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 42176
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_PetMattingInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 42177
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Mask0"

    const-string v3, "Mask1"

    const-string v4, "MaskCount"

    const-string v7, "MaskWidth"

    const-string v8, "MaskHeight"

    filled-new-array {v4, v7, v8, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_PetMattingInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 42182
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x1d

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_PetMattingBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 42183
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "MPetMattingInfo"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_PetMattingBuffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 42188
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_SaliencySegInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 42189
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v18, "Alpha"

    const-string v19, "Input"

    const-string v7, "Valid"

    const-string v8, "RealW"

    const-string v9, "RealH"

    const-string v10, "ImgW"

    const-string v11, "ImgH"

    const-string v12, "BboxcenterX"

    const-string v13, "BboxcenterY"

    const-string v14, "Bboxwidth"

    const-string v15, "Bboxheight"

    const-string v16, "BboxrotateAngle"

    const-string v17, "ModelIndex"

    filled-new-array/range {v7 .. v19}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_SaliencySegInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 42194
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_SkeletonInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 42195
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v11, "KeyPointsScore"

    const-string v12, "Orientation"

    const-string v7, "ID"

    const-string v8, "Rect"

    const-string v9, "KeyPointsXy"

    const-string v10, "KeyPointsDetected"

    filled-new-array/range {v7 .. v12}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_SkeletonInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 42200
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_SkeletonBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 42201
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v14, "MHeatmapDim"

    const-string v15, "MIsBackboneFeatsValid"

    const-string v7, "MSkeletonInfos"

    const-string v8, "MIsExecuted"

    const-string v9, "MSourceWidth"

    const-string v10, "MSourceHeight"

    const-string v11, "MBackboneFeats"

    const-string v12, "MBackbonFeatDim"

    const-string v13, "MHeatmaps"

    filled-new-array/range {v7 .. v15}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_SkeletonBuffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 42206
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_MattingResult_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 42207
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "MaskData"

    const-string v3, "ResultRect"

    filled-new-array {v5, v6, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_MattingResult_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_PornClsBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_PornClsBuffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$10800()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceAttribute_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$10900()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceAttribute_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1100()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_SimilarityBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_SimilarityBuffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$12600()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceAttributeBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$12700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceAttributeBuffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$13600()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceExtra_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$13700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceExtra_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$16300()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceMouthMask_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$16400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceMouthMask_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$17600()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceTeethMask_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$17700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceTeethMask_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$18900()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceFaceMask_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$19000()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceFaceMask_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$20200()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceOcclusion_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$20300()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceOcclusion_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$21300()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$21400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceBuffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2300()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_Rect_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$23600()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceClustingBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$23700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceClustingBuffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_Rect_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$24900()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_AEScoreInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$25000()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_AEScoreInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$26500()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_AfterEffectBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$26600()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_AfterEffectBuffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$27500()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_SceneRecogInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$27600()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_SceneRecogInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$28700()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_SceneRecogBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$28800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_SceneRecogBuffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$29900()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_SceneRecogV3Info_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$30000()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_SceneRecogV3Info_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$31300()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_SceneRecogV3Buffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$31400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_SceneRecogV3Buffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$32400()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_NHClassificationInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$32500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_NHClassificationInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$33700()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_NHClassificationFeature_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$33800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_NHClassificationFeature_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$34600()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_NHClassificationBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$34700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_NHClassificationBuffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3600()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_Float2_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$36200()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FacePetInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$36300()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FacePetInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_Float2_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$38200()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FacePetDetectBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$38300()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FacePetDetectBuffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$39200()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_PetMattingInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$39300()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_PetMattingInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$40600()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_PetMattingBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$40700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_PetMattingBuffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$41600()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_SaliencySegInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$41700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_SaliencySegInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$43800()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_SkeletonInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$43900()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_SkeletonInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$45400()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_SkeletonBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$45500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_SkeletonBuffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4700()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_IntArray_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$47300()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_MattingResult_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$47400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_MattingResult_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_IntArray_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$48602(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .registers 1

    .line 6
    sput-object p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method static synthetic access$5600()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_Face106_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$5700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_Face106_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$7700()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceVerifyInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$7800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceVerifyInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$9200()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceVerifyBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$9300()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceVerifyBuffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .registers 1

    .line 41879
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .registers 1

    .line 14
    invoke-static {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 1

    .line 0
    return-void
.end method
