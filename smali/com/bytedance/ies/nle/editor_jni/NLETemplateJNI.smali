.class public Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 181
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->swig_module_init()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native NLEBaseTemplateZipProgressHandler_change_ownership(Lcom/bytedance/ies/nle/editor_jni/NLEBaseTemplateZipProgressHandler;JZ)V
.end method

.method public static final native NLEBaseTemplateZipProgressHandler_director_connect(Lcom/bytedance/ies/nle/editor_jni/NLEBaseTemplateZipProgressHandler;JZZ)V
.end method

.method public static final native NLEBaseTemplateZipProgressHandler_invoke(JLcom/bytedance/ies/nle/editor_jni/NLEBaseTemplateZipProgressHandler;F)V
.end method

.method public static final native NLEBaseTemplateZipProgressHandler_invokeSwigExplicitNLEBaseTemplateZipProgressHandler(JLcom/bytedance/ies/nle/editor_jni/NLEBaseTemplateZipProgressHandler;F)V
.end method

.method public static final native NLEContextProcessorFunc_change_ownership(Lcom/bytedance/ies/nle/editor_jni/NLEContextProcessorFunc;JZ)V
.end method

.method public static final native NLEContextProcessorFunc_decrypt(JLcom/bytedance/ies/nle/editor_jni/NLEContextProcessorFunc;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native NLEContextProcessorFunc_director_connect(Lcom/bytedance/ies/nle/editor_jni/NLEContextProcessorFunc;JZZ)V
.end method

.method public static final native NLEContextProcessorFunc_encrypt(JLcom/bytedance/ies/nle/editor_jni/NLEContextProcessorFunc;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native NLEContextProcessor_decrypt(JLcom/bytedance/ies/nle/editor_jni/NLEContextProcessor;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native NLEContextProcessor_encrypt(JLcom/bytedance/ies/nle/editor_jni/NLEContextProcessor;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native NLEContextProcessor_processor()J
.end method

.method public static final native NLEContextProcessor_setDelegate(JLcom/bytedance/ies/nle/editor_jni/NLEContextProcessor;JLcom/bytedance/ies/nle/editor_jni/NLEContextProcessorFunc;)V
.end method

.method public static final native NLEMappingNode_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLEMappingNode_clone(JLcom/bytedance/ies/nle/editor_jni/NLEMappingNode;)J
.end method

.method public static final native NLEMappingNode_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLEMappingNode_getKeyClassName(JLcom/bytedance/ies/nle/editor_jni/NLEMappingNode;)Ljava/lang/String;
.end method

.method public static final native NLEMappingNode_getKeyUUID(JLcom/bytedance/ies/nle/editor_jni/NLEMappingNode;)Ljava/lang/String;
.end method

.method public static final native NLEMappingNode_getReproductionID(JLcom/bytedance/ies/nle/editor_jni/NLEMappingNode;)Ljava/lang/String;
.end method

.method public static final native NLEMappingNode_hasKeyClassName(JLcom/bytedance/ies/nle/editor_jni/NLEMappingNode;)Z
.end method

.method public static final native NLEMappingNode_hasKeyUUID(JLcom/bytedance/ies/nle/editor_jni/NLEMappingNode;)Z
.end method

.method public static final native NLEMappingNode_hasReproductionID(JLcom/bytedance/ies/nle/editor_jni/NLEMappingNode;)Z
.end method

.method public static final native NLEMappingNode_setKeyClassName(JLcom/bytedance/ies/nle/editor_jni/NLEMappingNode;Ljava/lang/String;)V
.end method

.method public static final native NLEMappingNode_setKeyUUID(JLcom/bytedance/ies/nle/editor_jni/NLEMappingNode;Ljava/lang/String;)V
.end method

.method public static final native NLEMappingNode_setReproductionID(JLcom/bytedance/ies/nle/editor_jni/NLEMappingNode;Ljava/lang/String;)V
.end method

.method public static final native NLETemplateEditor_SWIGUpcast(J)J
.end method

.method public static final native NLETemplateModel_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native NLETemplateModel_clone(JLcom/bytedance/ies/nle/editor_jni/NLETemplateModel;)J
.end method

.method public static final native NLETemplateModel_convertNLEMappingNode(JLcom/bytedance/ies/nle/editor_jni/NLETemplateModel;JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLETemplateModel_createFromDraft(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)J
.end method

.method public static final native NLETemplateModel_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native NLETemplateModel_featureListInTemplateModel(Ljava/lang/String;)J
.end method

.method public static final native NLETemplateModel_getAllMutableItems(JLcom/bytedance/ies/nle/editor_jni/NLETemplateModel;)J
.end method

.method public static final native NLETemplateModel_getAllMutableTextClipsFromSlot(JLcom/bytedance/ies/nle/editor_jni/NLETemplateModel;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J
.end method

.method public static final native NLETemplateModel_getFeatureIndex(Ljava/lang/String;)I
.end method

.method public static final native NLETemplateModel_getMutableAssetItems(JLcom/bytedance/ies/nle/editor_jni/NLETemplateModel;)J
.end method

.method public static final native NLETemplateModel_getMutableTextItems(JLcom/bytedance/ies/nle/editor_jni/NLETemplateModel;)J
.end method

.method public static final native NLETemplateModel_getSupportFeatureBits()J
.end method

.method public static final native NLETemplateModel_getTemplateCanvasSize(JLcom/bytedance/ies/nle/editor_jni/NLETemplateModel;)J
.end method

.method public static final native NLETemplateModel_getTemplateInfo(JLcom/bytedance/ies/nle/editor_jni/NLETemplateModel;)J
.end method

.method public static final native NLETemplateModel_restore(Ljava/lang/String;)J
.end method

.method public static final native NLETemplateModel_restoreFromPath(Ljava/lang/String;)J
.end method

.method public static final native NLETemplateModel_setTemplateInfo(JLcom/bytedance/ies/nle/editor_jni/NLETemplateModel;JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;)V
.end method

.method public static final native NLETemplateModel_store(JLcom/bytedance/ies/nle/editor_jni/NLETemplateModel;)Ljava/lang/String;
.end method

.method public static final native NLETemplateModel_storeToZip(JLcom/bytedance/ies/nle/editor_jni/NLETemplateModel;Ljava/lang/String;Ljava/lang/String;JLcom/bytedance/ies/nle/editor_jni/NLEBaseTemplateZipProgressHandler;)Ljava/lang/String;
.end method

.method public static final native NLETemplateModel_updateResourcePath(JLcom/bytedance/ies/nle/editor_jni/NLETemplateModel;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static final native NLE_TEMPLATE_JSON_FILENAME_get()Ljava/lang/String;
.end method

.method public static final native SetString_Iterator_derefUnchecked(JLcom/bytedance/ies/nle/editor_jni/SetString$Iterator;)Ljava/lang/String;
.end method

.method public static final native SetString_Iterator_incrementUnchecked(JLcom/bytedance/ies/nle/editor_jni/SetString$Iterator;)V
.end method

.method public static final native SetString_Iterator_isNot(JLcom/bytedance/ies/nle/editor_jni/SetString$Iterator;JLcom/bytedance/ies/nle/editor_jni/SetString$Iterator;)Z
.end method

.method public static final native SetString_add(JLcom/bytedance/ies/nle/editor_jni/SetString;Ljava/lang/String;)Z
.end method

.method public static final native SetString_begin(JLcom/bytedance/ies/nle/editor_jni/SetString;)J
.end method

.method public static final native SetString_clear(JLcom/bytedance/ies/nle/editor_jni/SetString;)V
.end method

.method public static final native SetString_containsImpl(JLcom/bytedance/ies/nle/editor_jni/SetString;Ljava/lang/String;)Z
.end method

.method public static final native SetString_end(JLcom/bytedance/ies/nle/editor_jni/SetString;)J
.end method

.method public static final native SetString_hasNextImpl(JLcom/bytedance/ies/nle/editor_jni/SetString;JLcom/bytedance/ies/nle/editor_jni/SetString$Iterator;)Z
.end method

.method public static final native SetString_isEmpty(JLcom/bytedance/ies/nle/editor_jni/SetString;)Z
.end method

.method public static final native SetString_removeImpl(JLcom/bytedance/ies/nle/editor_jni/SetString;Ljava/lang/String;)Z
.end method

.method public static final native SetString_sizeImpl(JLcom/bytedance/ies/nle/editor_jni/SetString;)I
.end method

.method public static SwigDirector_NLEBaseTemplateZipProgressHandler_invoke(Lcom/bytedance/ies/nle/editor_jni/NLEBaseTemplateZipProgressHandler;F)V
    .registers 2

    .line 170
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEBaseTemplateZipProgressHandler;->invoke(F)V

    return-void
.end method

.method public static SwigDirector_NLEContextProcessorFunc_decrypt(Lcom/bytedance/ies/nle/editor_jni/NLEContextProcessorFunc;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 176
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEContextProcessorFunc;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static SwigDirector_NLEContextProcessorFunc_encrypt(Lcom/bytedance/ies/nle/editor_jni/NLEContextProcessorFunc;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 173
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEContextProcessorFunc;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final native TemplateConfig_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native TemplateConfig_clone(JLcom/bytedance/ies/nle/editor_jni/TemplateConfig;)J
.end method

.method public static final native TemplateConfig_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native TemplateConfig_getCanvasRatio(JLcom/bytedance/ies/nle/editor_jni/TemplateConfig;)Ljava/lang/String;
.end method

.method public static final native TemplateConfig_hasCanvasRatio(JLcom/bytedance/ies/nle/editor_jni/TemplateConfig;)Z
.end method

.method public static final native TemplateConfig_setCanvasRatio(JLcom/bytedance/ies/nle/editor_jni/TemplateConfig;Ljava/lang/String;)V
.end method

.method public static final native TemplateInfo_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native TemplateInfo_addMutableItems(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;JLcom/bytedance/ies/nle/editor_jni/NLEMappingNode;)V
.end method

.method public static final native TemplateInfo_clearMutableItems(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;)V
.end method

.method public static final native TemplateInfo_clone(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;)J
.end method

.method public static final native TemplateInfo_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native TemplateInfo_getConfig(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;)J
.end method

.method public static final native TemplateInfo_getCoverModel(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;)J
.end method

.method public static final native TemplateInfo_getCoverRes(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;)J
.end method

.method public static final native TemplateInfo_getDesc(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;)Ljava/lang/String;
.end method

.method public static final native TemplateInfo_getMutableItemss(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;)J
.end method

.method public static final native TemplateInfo_getTag(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;)Ljava/lang/String;
.end method

.method public static final native TemplateInfo_getTemplateId(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;)Ljava/lang/String;
.end method

.method public static final native TemplateInfo_getTitle(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;)Ljava/lang/String;
.end method

.method public static final native TemplateInfo_hasDesc(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;)Z
.end method

.method public static final native TemplateInfo_hasTag(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;)Z
.end method

.method public static final native TemplateInfo_hasTemplateId(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;)Z
.end method

.method public static final native TemplateInfo_hasTitle(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;)Z
.end method

.method public static final native TemplateInfo_removeMutableItems(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;JLcom/bytedance/ies/nle/editor_jni/NLEMappingNode;)Z
.end method

.method public static final native TemplateInfo_restore(Ljava/lang/String;)J
.end method

.method public static final native TemplateInfo_setConfig(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;JLcom/bytedance/ies/nle/editor_jni/TemplateConfig;)V
.end method

.method public static final native TemplateInfo_setCoverModel(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;JLcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;)V
.end method

.method public static final native TemplateInfo_setCoverRes(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
.end method

.method public static final native TemplateInfo_setDesc(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;Ljava/lang/String;)V
.end method

.method public static final native TemplateInfo_setTag(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;Ljava/lang/String;)V
.end method

.method public static final native TemplateInfo_setTemplateId(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;Ljava/lang/String;)V
.end method

.method public static final native TemplateInfo_setTitle(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;Ljava/lang/String;)V
.end method

.method public static final native TemplateInfo_store(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;)Ljava/lang/String;
.end method

.method public static final native VecNLEMappingNode_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLEMappingNode;)J
.end method

.method public static final native VecNLEMappingNode_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLEMappingNode;)V
.end method

.method public static final native VecNLEMappingNode_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLEMappingNode;JLcom/bytedance/ies/nle/editor_jni/NLEMappingNode;)V
.end method

.method public static final native VecNLEMappingNode_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEMappingNode;IJLcom/bytedance/ies/nle/editor_jni/NLEMappingNode;)V
.end method

.method public static final native VecNLEMappingNode_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLEMappingNode;I)J
.end method

.method public static final native VecNLEMappingNode_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLEMappingNode;I)J
.end method

.method public static final native VecNLEMappingNode_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLEMappingNode;II)V
.end method

.method public static final native VecNLEMappingNode_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLEMappingNode;IJLcom/bytedance/ies/nle/editor_jni/NLEMappingNode;)J
.end method

.method public static final native VecNLEMappingNode_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLEMappingNode;)I
.end method

.method public static final native VecNLEMappingNode_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLEMappingNode;)Z
.end method

.method public static final native VecNLEMappingNode_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLEMappingNode;J)V
.end method

.method public static final native VecNLENode_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLENode;)J
.end method

.method public static final native VecNLENode_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLENode;)V
.end method

.method public static final native VecNLENode_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLENode;JLcom/bytedance/ies/nle/editor_jni/NLENode;)V
.end method

.method public static final native VecNLENode_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLENode;IJLcom/bytedance/ies/nle/editor_jni/NLENode;)V
.end method

.method public static final native VecNLENode_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLENode;I)J
.end method

.method public static final native VecNLENode_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLENode;I)J
.end method

.method public static final native VecNLENode_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLENode;II)V
.end method

.method public static final native VecNLENode_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLENode;IJLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native VecNLENode_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLENode;)I
.end method

.method public static final native VecNLENode_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLENode;)Z
.end method

.method public static final native VecNLENode_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLENode;J)V
.end method

.method public static final native VecUInt32_capacity(JLcom/bytedance/ies/nle/editor_jni/VecUInt32;)J
.end method

.method public static final native VecUInt32_clear(JLcom/bytedance/ies/nle/editor_jni/VecUInt32;)V
.end method

.method public static final native VecUInt32_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecUInt32;J)V
.end method

.method public static final native VecUInt32_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecUInt32;IJ)V
.end method

.method public static final native VecUInt32_doGet(JLcom/bytedance/ies/nle/editor_jni/VecUInt32;I)J
.end method

.method public static final native VecUInt32_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecUInt32;I)J
.end method

.method public static final native VecUInt32_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecUInt32;II)V
.end method

.method public static final native VecUInt32_doSet(JLcom/bytedance/ies/nle/editor_jni/VecUInt32;IJ)J
.end method

.method public static final native VecUInt32_doSize(JLcom/bytedance/ies/nle/editor_jni/VecUInt32;)I
.end method

.method public static final native VecUInt32_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecUInt32;)Z
.end method

.method public static final native VecUInt32_reserve(JLcom/bytedance/ies/nle/editor_jni/VecUInt32;J)V
.end method

.method public static final native delete_NLEBaseTemplateZipProgressHandler(J)V
.end method

.method public static final native delete_NLEContextProcessor(J)V
.end method

.method public static final native delete_NLEContextProcessorFunc(J)V
.end method

.method public static final native delete_NLEMappingNode(J)V
.end method

.method public static final native delete_NLETemplateEditor(J)V
.end method

.method public static final native delete_NLETemplateModel(J)V
.end method

.method public static final native delete_SetString(J)V
.end method

.method public static final native delete_SetString_Iterator(J)V
.end method

.method public static final native delete_TemplateConfig(J)V
.end method

.method public static final native delete_TemplateInfo(J)V
.end method

.method public static final native delete_VecNLEMappingNode(J)V
.end method

.method public static final native delete_VecNLENode(J)V
.end method

.method public static final native delete_VecUInt32(J)V
.end method

.method public static final native new_NLEBaseTemplateZipProgressHandler()J
.end method

.method public static final native new_NLEContextProcessor()J
.end method

.method public static final native new_NLEContextProcessorFunc()J
.end method

.method public static final native new_NLEMappingNode()J
.end method

.method public static final native new_NLETemplateEditor()J
.end method

.method public static final native new_NLETemplateModel()J
.end method

.method public static final native new_SetString__SWIG_0()J
.end method

.method public static final native new_SetString__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/SetString;)J
.end method

.method public static final native new_TemplateConfig()J
.end method

.method public static final native new_TemplateInfo()J
.end method

.method public static final native new_VecNLEMappingNode__SWIG_0()J
.end method

.method public static final native new_VecNLEMappingNode__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLEMappingNode;)J
.end method

.method public static final native new_VecNLEMappingNode__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLEMappingNode;)J
.end method

.method public static final native new_VecNLENode__SWIG_0()J
.end method

.method public static final native new_VecNLENode__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLENode;)J
.end method

.method public static final native new_VecNLENode__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLENode;)J
.end method

.method public static final native new_VecUInt32__SWIG_0()J
.end method

.method public static final native new_VecUInt32__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecUInt32;)J
.end method

.method public static final native new_VecUInt32__SWIG_2(IJ)J
.end method

.method private static final native swig_module_init()V
.end method
