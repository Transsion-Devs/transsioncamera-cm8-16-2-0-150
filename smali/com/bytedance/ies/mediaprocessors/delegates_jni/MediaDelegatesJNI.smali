.class public Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 282
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->swig_module_init()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native GroupTaskList_capacity(JLcom/bytedance/ies/mediaprocessors/delegates_jni/GroupTaskList;)J
.end method

.method public static final native GroupTaskList_clear(JLcom/bytedance/ies/mediaprocessors/delegates_jni/GroupTaskList;)V
.end method

.method public static final native GroupTaskList_doAdd__SWIG_0(JLcom/bytedance/ies/mediaprocessors/delegates_jni/GroupTaskList;JLcom/bytedance/ies/mediaprocessors/delegates_jni/IGroupTaskFunc;)V
.end method

.method public static final native GroupTaskList_doAdd__SWIG_1(JLcom/bytedance/ies/mediaprocessors/delegates_jni/GroupTaskList;IJLcom/bytedance/ies/mediaprocessors/delegates_jni/IGroupTaskFunc;)V
.end method

.method public static final native GroupTaskList_doGet(JLcom/bytedance/ies/mediaprocessors/delegates_jni/GroupTaskList;I)J
.end method

.method public static final native GroupTaskList_doRemove(JLcom/bytedance/ies/mediaprocessors/delegates_jni/GroupTaskList;I)J
.end method

.method public static final native GroupTaskList_doRemoveRange(JLcom/bytedance/ies/mediaprocessors/delegates_jni/GroupTaskList;II)V
.end method

.method public static final native GroupTaskList_doSet(JLcom/bytedance/ies/mediaprocessors/delegates_jni/GroupTaskList;IJLcom/bytedance/ies/mediaprocessors/delegates_jni/IGroupTaskFunc;)J
.end method

.method public static final native GroupTaskList_doSize(JLcom/bytedance/ies/mediaprocessors/delegates_jni/GroupTaskList;)I
.end method

.method public static final native GroupTaskList_isEmpty(JLcom/bytedance/ies/mediaprocessors/delegates_jni/GroupTaskList;)Z
.end method

.method public static final native GroupTaskList_reserve(JLcom/bytedance/ies/mediaprocessors/delegates_jni/GroupTaskList;J)V
.end method

.method public static final native IFileDelegate_change_ownership(Lcom/bytedance/ies/mediaprocessors/delegates_jni/IFileDelegate;JZ)V
.end method

.method public static final native IFileDelegate_compress(JLcom/bytedance/ies/mediaprocessors/delegates_jni/IFileDelegate;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native IFileDelegate_createDirectoryIfNotExist(JLcom/bytedance/ies/mediaprocessors/delegates_jni/IFileDelegate;Ljava/lang/String;)Z
.end method

.method public static final native IFileDelegate_director_connect(Lcom/bytedance/ies/mediaprocessors/delegates_jni/IFileDelegate;JZZ)V
.end method

.method public static final native IFileDelegate_getTosUrl__SWIG_0(JLcom/bytedance/ies/mediaprocessors/delegates_jni/IFileDelegate;Ljava/lang/String;JLcom/bytedance/ies/mediaprocessors/delegates_jni/TosCallBack;)V
.end method

.method public static final native IFileDelegate_getTosUrl__SWIG_1(JLcom/bytedance/ies/mediaprocessors/delegates_jni/IFileDelegate;Ljava/lang/String;)V
.end method

.method public static final native IFileDelegate_isExist(JLcom/bytedance/ies/mediaprocessors/delegates_jni/IFileDelegate;Ljava/lang/String;)Z
.end method

.method public static final native IFileDelegate_readBase64DataByPath(JLcom/bytedance/ies/mediaprocessors/delegates_jni/IFileDelegate;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native IFileDelegate_unZip(JLcom/bytedance/ies/mediaprocessors/delegates_jni/IFileDelegate;Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public static final native IFileDelegate_writeBase64ToFile(JLcom/bytedance/ies/mediaprocessors/delegates_jni/IFileDelegate;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static final native IGroupTaskFunc_change_ownership(Lcom/bytedance/ies/mediaprocessors/delegates_jni/IGroupTaskFunc;JZ)V
.end method

.method public static final native IGroupTaskFunc_director_connect(Lcom/bytedance/ies/mediaprocessors/delegates_jni/IGroupTaskFunc;JZZ)V
.end method

.method public static final native IGroupTaskFunc_execute(JLcom/bytedance/ies/mediaprocessors/delegates_jni/IGroupTaskFunc;JLcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;)V
.end method

.method public static final native INetworkDelegate_cancel(JLcom/bytedance/ies/mediaprocessors/delegates_jni/INetworkDelegate;J)V
.end method

.method public static final native INetworkDelegate_change_ownership(Lcom/bytedance/ies/mediaprocessors/delegates_jni/INetworkDelegate;JZ)V
.end method

.method public static final native INetworkDelegate_director_connect(Lcom/bytedance/ies/mediaprocessors/delegates_jni/INetworkDelegate;JZZ)V
.end method

.method public static final native INetworkDelegate_request__SWIG_0(JLcom/bytedance/ies/mediaprocessors/delegates_jni/INetworkDelegate;JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestCallBack;)V
.end method

.method public static final native INetworkDelegate_request__SWIG_1(JLcom/bytedance/ies/mediaprocessors/delegates_jni/INetworkDelegate;JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;)V
.end method

.method public static final native IThreadDelegate_cancel(JLcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;J)V
.end method

.method public static final native IThreadDelegate_cancelAll(JLcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;)V
.end method

.method public static final native IThreadDelegate_change_ownership(Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;JZ)V
.end method

.method public static final native IThreadDelegate_commit(JLcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;JLcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;)J
.end method

.method public static final native IThreadDelegate_commitGroupTask__SWIG_0(JLcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;JLcom/bytedance/ies/mediaprocessors/delegates_jni/GroupTaskList;JLcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;)J
.end method

.method public static final native IThreadDelegate_commitGroupTask__SWIG_1(JLcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;JLcom/bytedance/ies/mediaprocessors/delegates_jni/GroupTaskList;IJLcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;)J
.end method

.method public static final native IThreadDelegate_director_connect(Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;JZZ)V
.end method

.method public static final native IThreadDelegate_postDelayed(JLcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;JLcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;J)J
.end method

.method public static final native MapStrRequest_Iterator_getKey(JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;)Ljava/lang/String;
.end method

.method public static final native MapStrRequest_Iterator_getNextUnchecked(JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;)J
.end method

.method public static final native MapStrRequest_Iterator_getValue(JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;)I
.end method

.method public static final native MapStrRequest_Iterator_isNot(JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;)Z
.end method

.method public static final native MapStrRequest_Iterator_setValue(JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;I)V
.end method

.method public static final native MapStrRequest_begin(JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest;)J
.end method

.method public static final native MapStrRequest_clear(JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest;)V
.end method

.method public static final native MapStrRequest_containsImpl(JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest;Ljava/lang/String;)Z
.end method

.method public static final native MapStrRequest_end(JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest;)J
.end method

.method public static final native MapStrRequest_find(JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest;Ljava/lang/String;)J
.end method

.method public static final native MapStrRequest_isEmpty(JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest;)Z
.end method

.method public static final native MapStrRequest_putUnchecked(JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest;Ljava/lang/String;I)V
.end method

.method public static final native MapStrRequest_removeUnchecked(JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest;JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;)V
.end method

.method public static final native MapStrRequest_sizeImpl(JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest;)I
.end method

.method public static final native MapStrStr_Iterator_getKey(JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrStr$Iterator;)Ljava/lang/String;
.end method

.method public static final native MapStrStr_Iterator_getNextUnchecked(JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrStr$Iterator;)J
.end method

.method public static final native MapStrStr_Iterator_getValue(JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrStr$Iterator;)Ljava/lang/String;
.end method

.method public static final native MapStrStr_Iterator_isNot(JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrStr$Iterator;JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrStr$Iterator;)Z
.end method

.method public static final native MapStrStr_Iterator_setValue(JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrStr$Iterator;Ljava/lang/String;)V
.end method

.method public static final native MapStrStr_begin(JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrStr;)J
.end method

.method public static final native MapStrStr_clear(JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrStr;)V
.end method

.method public static final native MapStrStr_containsImpl(JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrStr;Ljava/lang/String;)Z
.end method

.method public static final native MapStrStr_end(JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrStr;)J
.end method

.method public static final native MapStrStr_find(JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrStr;Ljava/lang/String;)J
.end method

.method public static final native MapStrStr_isEmpty(JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrStr;)Z
.end method

.method public static final native MapStrStr_putUnchecked(JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrStr;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static final native MapStrStr_removeUnchecked(JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrStr;JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrStr$Iterator;)V
.end method

.method public static final native MapStrStr_sizeImpl(JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrStr;)I
.end method

.method public static final native MapVoidFunc_change_ownership(Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapVoidFunc;JZ)V
.end method

.method public static final native MapVoidFunc_director_connect(Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapVoidFunc;JZZ)V
.end method

.method public static final native MapVoidFunc_getStringMap(JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapVoidFunc;)J
.end method

.method public static final native MediaDelegateContainer_getFileDelegate()J
.end method

.method public static final native MediaDelegateContainer_getInstance()J
.end method

.method public static final native MediaDelegateContainer_getNetworkDelegate()J
.end method

.method public static final native MediaDelegateContainer_getThreadDelegate()J
.end method

.method public static final native MediaDelegateContainer_setFileDelegate(JLcom/bytedance/ies/mediaprocessors/delegates_jni/IFileDelegate;)V
.end method

.method public static final native MediaDelegateContainer_setNetworkDelegate(JLcom/bytedance/ies/mediaprocessors/delegates_jni/INetworkDelegate;)V
.end method

.method public static final native MediaDelegateContainer_setThreadDelegate(JLcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;)V
.end method

.method public static final native RequestCallBack_change_ownership(Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestCallBack;JZ)V
.end method

.method public static final native RequestCallBack_director_connect(Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestCallBack;JZZ)V
.end method

.method public static final native RequestCallBack_onResult(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestCallBack;JLcom/bytedance/ies/mediaprocessors/delegates_jni/ResponseBody;)V
.end method

.method public static final native RequestMultiFormPartList_capacity(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestMultiFormPartList;)J
.end method

.method public static final native RequestMultiFormPartList_clear(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestMultiFormPartList;)V
.end method

.method public static final native RequestMultiFormPartList_doAdd__SWIG_0(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestMultiFormPartList;JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestMultiFormPart;)V
.end method

.method public static final native RequestMultiFormPartList_doAdd__SWIG_1(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestMultiFormPartList;IJLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestMultiFormPart;)V
.end method

.method public static final native RequestMultiFormPartList_doGet(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestMultiFormPartList;I)J
.end method

.method public static final native RequestMultiFormPartList_doRemove(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestMultiFormPartList;I)J
.end method

.method public static final native RequestMultiFormPartList_doRemoveRange(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestMultiFormPartList;II)V
.end method

.method public static final native RequestMultiFormPartList_doSet(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestMultiFormPartList;IJLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestMultiFormPart;)J
.end method

.method public static final native RequestMultiFormPartList_doSize(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestMultiFormPartList;)I
.end method

.method public static final native RequestMultiFormPartList_isEmpty(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestMultiFormPartList;)Z
.end method

.method public static final native RequestMultiFormPartList_reserve(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestMultiFormPartList;J)V
.end method

.method public static final native RequestMultiFormPart_fieldName_get(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestMultiFormPart;)Ljava/lang/String;
.end method

.method public static final native RequestMultiFormPart_fieldName_set(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestMultiFormPart;Ljava/lang/String;)V
.end method

.method public static final native RequestMultiFormPart_filename_get(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestMultiFormPart;)Ljava/lang/String;
.end method

.method public static final native RequestMultiFormPart_filename_set(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestMultiFormPart;Ljava/lang/String;)V
.end method

.method public static final native RequestMultiFormPart_path_get(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestMultiFormPart;)Ljava/lang/String;
.end method

.method public static final native RequestMultiFormPart_path_set(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestMultiFormPart;Ljava/lang/String;)V
.end method

.method public static final native RequestParams_bodySize_get(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;)J
.end method

.method public static final native RequestParams_bodySize_set(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;J)V
.end method

.method public static final native RequestParams_body_get(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;)Ljava/lang/String;
.end method

.method public static final native RequestParams_body_set(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;Ljava/lang/String;)V
.end method

.method public static final native RequestParams_extra_get(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;)Ljava/lang/String;
.end method

.method public static final native RequestParams_extra_set(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;Ljava/lang/String;)V
.end method

.method public static final native RequestParams_headMap_get(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;)J
.end method

.method public static final native RequestParams_headMap_set(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrStr;)V
.end method

.method public static final native RequestParams_httpType_get(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;)I
.end method

.method public static final native RequestParams_httpType_set(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;I)V
.end method

.method public static final native RequestParams_multiForm_get(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;)J
.end method

.method public static final native RequestParams_multiForm_set(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestMultiFormPartList;)V
.end method

.method public static final native RequestParams_paramDataTypeMap_get(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;)J
.end method

.method public static final native RequestParams_paramDataTypeMap_set(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest;)V
.end method

.method public static final native RequestParams_params_get(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;)J
.end method

.method public static final native RequestParams_params_set(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrStr;)V
.end method

.method public static final native RequestParams_requestId_get(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;)J
.end method

.method public static final native RequestParams_requestId_set(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;J)V
.end method

.method public static final native RequestParams_url_get(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;)Ljava/lang/String;
.end method

.method public static final native RequestParams_url_set(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;Ljava/lang/String;)V
.end method

.method public static final native ResponseBody_errorCode_get(JLcom/bytedance/ies/mediaprocessors/delegates_jni/ResponseBody;)I
.end method

.method public static final native ResponseBody_errorCode_set(JLcom/bytedance/ies/mediaprocessors/delegates_jni/ResponseBody;I)V
.end method

.method public static final native ResponseBody_errorMsg_get(JLcom/bytedance/ies/mediaprocessors/delegates_jni/ResponseBody;)Ljava/lang/String;
.end method

.method public static final native ResponseBody_errorMsg_set(JLcom/bytedance/ies/mediaprocessors/delegates_jni/ResponseBody;Ljava/lang/String;)V
.end method

.method public static final native ResponseBody_extra_get(JLcom/bytedance/ies/mediaprocessors/delegates_jni/ResponseBody;)Ljava/lang/String;
.end method

.method public static final native ResponseBody_extra_set(JLcom/bytedance/ies/mediaprocessors/delegates_jni/ResponseBody;Ljava/lang/String;)V
.end method

.method public static final native ResponseBody_requestAction_get(JLcom/bytedance/ies/mediaprocessors/delegates_jni/ResponseBody;)I
.end method

.method public static final native ResponseBody_requestAction_set(JLcom/bytedance/ies/mediaprocessors/delegates_jni/ResponseBody;I)V
.end method

.method public static final native ResponseBody_response_get(JLcom/bytedance/ies/mediaprocessors/delegates_jni/ResponseBody;)Ljava/lang/String;
.end method

.method public static final native ResponseBody_response_set(JLcom/bytedance/ies/mediaprocessors/delegates_jni/ResponseBody;Ljava/lang/String;)V
.end method

.method public static SwigDirector_IFileDelegate_compress(Lcom/bytedance/ies/mediaprocessors/delegates_jni/IFileDelegate;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 265
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IFileDelegate;->compress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static SwigDirector_IFileDelegate_createDirectoryIfNotExist(Lcom/bytedance/ies/mediaprocessors/delegates_jni/IFileDelegate;Ljava/lang/String;)Z
    .registers 2

    .line 277
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IFileDelegate;->createDirectoryIfNotExist(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static SwigDirector_IFileDelegate_getTosUrl__SWIG_0(Lcom/bytedance/ies/mediaprocessors/delegates_jni/IFileDelegate;Ljava/lang/String;J)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_8

    const/4 p2, 0x0

    goto :goto_f

    .line 256
    :cond_8
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/TosCallBack;

    const/4 v1, 0x1

    invoke-direct {v0, p2, p3, v1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/TosCallBack;-><init>(JZ)V

    move-object p2, v0

    :goto_f
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IFileDelegate;->getTosUrl(Ljava/lang/String;Lcom/bytedance/ies/mediaprocessors/delegates_jni/TosCallBack;)V

    return-void
.end method

.method public static SwigDirector_IFileDelegate_getTosUrl__SWIG_1(Lcom/bytedance/ies/mediaprocessors/delegates_jni/IFileDelegate;Ljava/lang/String;)V
    .registers 2

    .line 259
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IFileDelegate;->getTosUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static SwigDirector_IFileDelegate_isExist(Lcom/bytedance/ies/mediaprocessors/delegates_jni/IFileDelegate;Ljava/lang/String;)Z
    .registers 2

    .line 262
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IFileDelegate;->isExist(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static SwigDirector_IFileDelegate_readBase64DataByPath(Lcom/bytedance/ies/mediaprocessors/delegates_jni/IFileDelegate;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 274
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IFileDelegate;->readBase64DataByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static SwigDirector_IFileDelegate_unZip(Lcom/bytedance/ies/mediaprocessors/delegates_jni/IFileDelegate;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4

    .line 268
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IFileDelegate;->unZip(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static SwigDirector_IFileDelegate_writeBase64ToFile(Lcom/bytedance/ies/mediaprocessors/delegates_jni/IFileDelegate;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 271
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IFileDelegate;->writeBase64ToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static SwigDirector_IGroupTaskFunc_execute(Lcom/bytedance/ies/mediaprocessors/delegates_jni/IGroupTaskFunc;J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    goto :goto_f

    .line 232
    :cond_8
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;-><init>(JZ)V

    move-object p1, v0

    :goto_f
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IGroupTaskFunc;->execute(Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;)V

    return-void
.end method

.method public static SwigDirector_INetworkDelegate_cancel(Lcom/bytedance/ies/mediaprocessors/delegates_jni/INetworkDelegate;J)V
    .registers 3

    .line 217
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/INetworkDelegate;->cancel(J)V

    return-void
.end method

.method public static SwigDirector_INetworkDelegate_request__SWIG_0(Lcom/bytedance/ies/mediaprocessors/delegates_jni/INetworkDelegate;JJ)V
    .registers 10

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_a

    move-object v2, v4

    goto :goto_f

    .line 211
    :cond_a
    new-instance v2, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;

    invoke-direct {v2, p1, p2, v3}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;-><init>(JZ)V

    :goto_f
    cmp-long p1, p3, v0

    if-nez p1, :cond_14

    goto :goto_19

    :cond_14
    new-instance v4, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestCallBack;

    invoke-direct {v4, p3, p4, v3}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestCallBack;-><init>(JZ)V

    :goto_19
    invoke-virtual {p0, v2, v4}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/INetworkDelegate;->request(Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestCallBack;)V

    return-void
.end method

.method public static SwigDirector_INetworkDelegate_request__SWIG_1(Lcom/bytedance/ies/mediaprocessors/delegates_jni/INetworkDelegate;J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    goto :goto_f

    .line 214
    :cond_8
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;-><init>(JZ)V

    move-object p1, v0

    :goto_f
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/INetworkDelegate;->request(Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;)V

    return-void
.end method

.method public static SwigDirector_IThreadDelegate_cancel(Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;J)V
    .registers 3

    .line 247
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;->cancel(J)V

    return-void
.end method

.method public static SwigDirector_IThreadDelegate_cancelAll(Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;)V
    .registers 1

    .line 250
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;->cancelAll()V

    return-void
.end method

.method public static SwigDirector_IThreadDelegate_commit(Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;J)J
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    goto :goto_f

    .line 235
    :cond_8
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;-><init>(JZ)V

    move-object p1, v0

    :goto_f
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;->commit(Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static SwigDirector_IThreadDelegate_commitGroupTask__SWIG_0(Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;JJ)J
    .registers 7

    .line 241
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/GroupTaskList;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/GroupTaskList;-><init>(JZ)V

    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-nez p1, :cond_e

    const/4 p1, 0x0

    goto :goto_14

    :cond_e
    new-instance p1, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;

    const/4 p2, 0x1

    invoke-direct {p1, p3, p4, p2}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;-><init>(JZ)V

    :goto_14
    invoke-virtual {p0, v0, p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;->commitGroupTask(Lcom/bytedance/ies/mediaprocessors/delegates_jni/GroupTaskList;Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static SwigDirector_IThreadDelegate_commitGroupTask__SWIG_1(Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;JIJ)J
    .registers 8

    .line 244
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/GroupTaskList;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/GroupTaskList;-><init>(JZ)V

    invoke-static {p3}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/GroupTaskType;->swigToEnum(I)Lcom/bytedance/ies/mediaprocessors/delegates_jni/GroupTaskType;

    move-result-object p1

    const-wide/16 p2, 0x0

    cmp-long p2, p4, p2

    if-nez p2, :cond_12

    const/4 p2, 0x0

    goto :goto_18

    :cond_12
    new-instance p2, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;

    const/4 p3, 0x1

    invoke-direct {p2, p4, p5, p3}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;-><init>(JZ)V

    :goto_18
    invoke-virtual {p0, v0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;->commitGroupTask(Lcom/bytedance/ies/mediaprocessors/delegates_jni/GroupTaskList;Lcom/bytedance/ies/mediaprocessors/delegates_jni/GroupTaskType;Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static SwigDirector_IThreadDelegate_postDelayed(Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;JJ)J
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    goto :goto_f

    .line 238
    :cond_8
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;-><init>(JZ)V

    move-object p1, v0

    :goto_f
    invoke-virtual {p0, p1, p3, p4}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;->postDelayed(Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static SwigDirector_MapVoidFunc_getStringMap(Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapVoidFunc;)J
    .registers 3

    .line 229
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapVoidFunc;->getStringMap()Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrStr;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrStr;->getCPtr(Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrStr;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static SwigDirector_RequestCallBack_onResult(Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestCallBack;J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    goto :goto_f

    .line 208
    :cond_8
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/ResponseBody;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/ResponseBody;-><init>(JZ)V

    move-object p1, v0

    :goto_f
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestCallBack;->onResult(Lcom/bytedance/ies/mediaprocessors/delegates_jni/ResponseBody;)V

    return-void
.end method

.method public static SwigDirector_TosCallBack_onResult(Lcom/bytedance/ies/mediaprocessors/delegates_jni/TosCallBack;Ljava/lang/String;)V
    .registers 2

    .line 253
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/TosCallBack;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public static SwigDirector_VoidFloatFunc_execute(Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidFloatFunc;F)V
    .registers 2

    .line 226
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidFloatFunc;->execute(F)V

    return-void
.end method

.method public static SwigDirector_VoidIntFunc_execute(Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidIntFunc;I)V
    .registers 2

    .line 223
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidIntFunc;->execute(I)V

    return-void
.end method

.method public static SwigDirector_VoidVoidFunc_execute(Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;)V
    .registers 1

    .line 220
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;->execute()V

    return-void
.end method

.method public static final native TosCallBack_change_ownership(Lcom/bytedance/ies/mediaprocessors/delegates_jni/TosCallBack;JZ)V
.end method

.method public static final native TosCallBack_director_connect(Lcom/bytedance/ies/mediaprocessors/delegates_jni/TosCallBack;JZZ)V
.end method

.method public static final native TosCallBack_onResult(JLcom/bytedance/ies/mediaprocessors/delegates_jni/TosCallBack;Ljava/lang/String;)V
.end method

.method public static final native VecString_capacity(JLcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;)J
.end method

.method public static final native VecString_clear(JLcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;)V
.end method

.method public static final native VecString_doAdd__SWIG_0(JLcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;Ljava/lang/String;)V
.end method

.method public static final native VecString_doAdd__SWIG_1(JLcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;ILjava/lang/String;)V
.end method

.method public static final native VecString_doGet(JLcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;I)Ljava/lang/String;
.end method

.method public static final native VecString_doRemove(JLcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;I)Ljava/lang/String;
.end method

.method public static final native VecString_doRemoveRange(JLcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;II)V
.end method

.method public static final native VecString_doSet(JLcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;ILjava/lang/String;)Ljava/lang/String;
.end method

.method public static final native VecString_doSize(JLcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;)I
.end method

.method public static final native VecString_isEmpty(JLcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;)Z
.end method

.method public static final native VecString_reserve(JLcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;J)V
.end method

.method public static final native VoidFloatFunc_change_ownership(Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidFloatFunc;JZ)V
.end method

.method public static final native VoidFloatFunc_director_connect(Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidFloatFunc;JZZ)V
.end method

.method public static final native VoidFloatFunc_execute(JLcom/bytedance/ies/mediaprocessors/delegates_jni/VoidFloatFunc;F)V
.end method

.method public static final native VoidIntFunc_change_ownership(Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidIntFunc;JZ)V
.end method

.method public static final native VoidIntFunc_director_connect(Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidIntFunc;JZZ)V
.end method

.method public static final native VoidIntFunc_execute(JLcom/bytedance/ies/mediaprocessors/delegates_jni/VoidIntFunc;I)V
.end method

.method public static final native VoidVoidFunc_change_ownership(Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;JZ)V
.end method

.method public static final native VoidVoidFunc_director_connect(Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;JZZ)V
.end method

.method public static final native VoidVoidFunc_execute(JLcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;)V
.end method

.method public static final native delete_GroupTaskList(J)V
.end method

.method public static final native delete_IFileDelegate(J)V
.end method

.method public static final native delete_IGroupTaskFunc(J)V
.end method

.method public static final native delete_INetworkDelegate(J)V
.end method

.method public static final native delete_IThreadDelegate(J)V
.end method

.method public static final native delete_MapStrRequest(J)V
.end method

.method public static final native delete_MapStrRequest_Iterator(J)V
.end method

.method public static final native delete_MapStrStr(J)V
.end method

.method public static final native delete_MapStrStr_Iterator(J)V
.end method

.method public static final native delete_MapVoidFunc(J)V
.end method

.method public static final native delete_RequestCallBack(J)V
.end method

.method public static final native delete_RequestMultiFormPart(J)V
.end method

.method public static final native delete_RequestMultiFormPartList(J)V
.end method

.method public static final native delete_RequestParams(J)V
.end method

.method public static final native delete_ResponseBody(J)V
.end method

.method public static final native delete_TosCallBack(J)V
.end method

.method public static final native delete_VecString(J)V
.end method

.method public static final native delete_VoidFloatFunc(J)V
.end method

.method public static final native delete_VoidIntFunc(J)V
.end method

.method public static final native delete_VoidVoidFunc(J)V
.end method

.method public static final native new_GroupTaskList__SWIG_0()J
.end method

.method public static final native new_GroupTaskList__SWIG_1(JLcom/bytedance/ies/mediaprocessors/delegates_jni/GroupTaskList;)J
.end method

.method public static final native new_GroupTaskList__SWIG_2(IJLcom/bytedance/ies/mediaprocessors/delegates_jni/IGroupTaskFunc;)J
.end method

.method public static final native new_IFileDelegate()J
.end method

.method public static final native new_IGroupTaskFunc()J
.end method

.method public static final native new_INetworkDelegate()J
.end method

.method public static final native new_IThreadDelegate()J
.end method

.method public static final native new_MapStrRequest__SWIG_0()J
.end method

.method public static final native new_MapStrRequest__SWIG_1(JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest;)J
.end method

.method public static final native new_MapStrStr__SWIG_0()J
.end method

.method public static final native new_MapStrStr__SWIG_1(JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrStr;)J
.end method

.method public static final native new_MapVoidFunc()J
.end method

.method public static final native new_RequestCallBack()J
.end method

.method public static final native new_RequestMultiFormPart()J
.end method

.method public static final native new_RequestMultiFormPartList__SWIG_0()J
.end method

.method public static final native new_RequestMultiFormPartList__SWIG_1(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestMultiFormPartList;)J
.end method

.method public static final native new_RequestMultiFormPartList__SWIG_2(IJLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestMultiFormPart;)J
.end method

.method public static final native new_RequestParams()J
.end method

.method public static final native new_ResponseBody()J
.end method

.method public static final native new_TosCallBack()J
.end method

.method public static final native new_VecString__SWIG_0()J
.end method

.method public static final native new_VecString__SWIG_1(JLcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;)J
.end method

.method public static final native new_VecString__SWIG_2(ILjava/lang/String;)J
.end method

.method public static final native new_VoidFloatFunc()J
.end method

.method public static final native new_VoidIntFunc()J
.end method

.method public static final native new_VoidVoidFunc()J
.end method

.method private static final native swig_module_init()V
.end method
