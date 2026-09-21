.class public Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 424
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->swig_module_init()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native AlgorithmTypeC300_get()Ljava/lang/String;
.end method

.method public static final native AlgorithmTypeClip128_get()Ljava/lang/String;
.end method

.method public static final native AlgorithmTypeRelation_get()Ljava/lang/String;
.end method

.method public static final native AppConfig_accessKey_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;)Ljava/lang/String;
.end method

.method public static final native AppConfig_accessKey_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;Ljava/lang/String;)V
.end method

.method public static final native AppConfig_appID_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;)Ljava/lang/String;
.end method

.method public static final native AppConfig_appID_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;Ljava/lang/String;)V
.end method

.method public static final native AppConfig_appVersion_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;)Ljava/lang/String;
.end method

.method public static final native AppConfig_appVersion_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;Ljava/lang/String;)V
.end method

.method public static final native AppConfig_bachApplicationName_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;)Ljava/lang/String;
.end method

.method public static final native AppConfig_bachApplicationName_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;Ljava/lang/String;)V
.end method

.method public static final native AppConfig_cacheDir_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;)Ljava/lang/String;
.end method

.method public static final native AppConfig_cacheDir_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;Ljava/lang/String;)V
.end method

.method public static final native AppConfig_davinciHeaderFeild_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;)J
.end method

.method public static final native AppConfig_davinciHeaderFeild_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapVoidFunc;)V
.end method

.method public static final native AppConfig_deviceId_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;)Ljava/lang/String;
.end method

.method public static final native AppConfig_deviceId_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;Ljava/lang/String;)V
.end method

.method public static final native AppConfig_deviceType_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;)Ljava/lang/String;
.end method

.method public static final native AppConfig_deviceType_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;Ljava/lang/String;)V
.end method

.method public static final native AppConfig_host_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;)Ljava/lang/String;
.end method

.method public static final native AppConfig_host_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;Ljava/lang/String;)V
.end method

.method public static final native AppConfig_networkDelegate_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;)J
.end method

.method public static final native AppConfig_networkDelegate_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;JLcom/bytedance/ies/mediaprocessors/delegates_jni/INetworkDelegate;)V
.end method

.method public static final native AppConfig_platformSdkVersion_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;)Ljava/lang/String;
.end method

.method public static final native AppConfig_platformSdkVersion_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;Ljava/lang/String;)V
.end method

.method public static final native AppConfig_platform_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;)Ljava/lang/String;
.end method

.method public static final native AppConfig_platform_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;Ljava/lang/String;)V
.end method

.method public static final native AppConfig_sdkVersion_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;)Ljava/lang/String;
.end method

.method public static final native AppConfig_sdkVersion_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;Ljava/lang/String;)V
.end method

.method public static final native AppConfig_status_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;)Ljava/lang/String;
.end method

.method public static final native AppConfig_status_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;Ljava/lang/String;)V
.end method

.method public static final native AppConfig_threadDelegate_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;)J
.end method

.method public static final native AppConfig_threadDelegate_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;JLcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;)V
.end method

.method public static final native BachAlgorithmInput_change_ownership(Lcom/bytedance/ies/mediaprocessors/extractor_jni/BachAlgorithmInput;JZ)V
.end method

.method public static final native BachAlgorithmInput_director_connect(Lcom/bytedance/ies/mediaprocessors/extractor_jni/BachAlgorithmInput;JZZ)V
.end method

.method public static final native BachAlgorithmInput_type(JLcom/bytedance/ies/mediaprocessors/extractor_jni/BachAlgorithmInput;)I
.end method

.method public static final native BachFeatureData_featureData_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/BachFeatureData;)Ljava/lang/String;
.end method

.method public static final native BachFeatureData_featureData_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/BachFeatureData;Ljava/lang/String;)V
.end method

.method public static final native BachFeatureData_featureLen_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/BachFeatureData;)I
.end method

.method public static final native BachFeatureData_featureLen_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/BachFeatureData;I)V
.end method

.method public static final native ByteArrayCallBack_change_ownership(Lcom/bytedance/ies/mediaprocessors/extractor_jni/ByteArrayCallBack;JZ)V
.end method

.method public static final native ByteArrayCallBack_director_connect(Lcom/bytedance/ies/mediaprocessors/extractor_jni/ByteArrayCallBack;JZZ)V
.end method

.method public static final native ByteArrayCallBack_onResult(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ByteArrayCallBack;[B)V
.end method

.method public static final native CacheAdapter_change_ownership(Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;JZ)V
.end method

.method public static final native CacheAdapter_clear(JLcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)V
.end method

.method public static final native CacheAdapter_clearAll(JLcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;)V
.end method

.method public static final native CacheAdapter_clearTypes__SWIG_0(JLcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;)V
.end method

.method public static final native CacheAdapter_clearTypes__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)V
.end method

.method public static final native CacheAdapter_director_connect(Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;JZZ)V
.end method

.method public static final native CacheAdapter_query__SWIG_0(JLcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;)J
.end method

.method public static final native CacheAdapter_query__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public static final native CacheAdapter_save__SWIG_0(JLcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;JLcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;)V
.end method

.method public static final native CacheAdapter_save__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;)V
.end method

.method public static final native Config_appConfig_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Config;)J
.end method

.method public static final native Config_appConfig_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Config;JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;)V
.end method

.method public static final native Config_clone(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Config;)J
.end method

.method public static final native Config_cursorMaxSize_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Config;)I
.end method

.method public static final native Config_cursorMaxSize_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Config;I)V
.end method

.method public static final native Config_dbPath_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Config;)Ljava/lang/String;
.end method

.method public static final native Config_dbPath_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Config;Ljava/lang/String;)V
.end method

.method public static final native Config_graph_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Config;)Ljava/lang/String;
.end method

.method public static final native Config_graph_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Config;Ljava/lang/String;)V
.end method

.method public static final native Config_modelsDownloadCallback_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Config;)J
.end method

.method public static final native Config_modelsDownloadCallback_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Config;J)V
.end method

.method public static final native Config_modelsName_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Config;)Ljava/lang/String;
.end method

.method public static final native Config_modelsName_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Config;Ljava/lang/String;)V
.end method

.method public static final native CoverUtil_getAlgorithmConf(I)Ljava/lang/String;
.end method

.method public static final native CoverUtil_getDefaultModels()Ljava/lang/String;
.end method

.method public static final native CoverUtil_getMemoryAddress([B)Ljava/lang/String;
.end method

.method public static final native CoverUtil_releaseObject([B)V
.end method

.method public static final native ErrorPair_first_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;)I
.end method

.method public static final native ErrorPair_first_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;I)V
.end method

.method public static final native ErrorPair_second_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;)Ljava/lang/String;
.end method

.method public static final native ErrorPair_second_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;Ljava/lang/String;)V
.end method

.method public static final native Extractor_clearAll(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;)V
.end method

.method public static final native Extractor_clearAssets(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)V
.end method

.method public static final native Extractor_clearTypes__SWIG_0(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)V
.end method

.method public static final native Extractor_clearTypes__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;)V
.end method

.method public static final native Extractor_extractFeatures__SWIG_0(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;ZJLcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;)J
.end method

.method public static final native Extractor_extractFeatures__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;Z)J
.end method

.method public static final native Extractor_extractFeatures__SWIG_2(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;ZJLcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;)J
.end method

.method public static final native Extractor_extractFeatures__SWIG_3(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;Z)J
.end method

.method public static final native Extractor_init(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;)I
.end method

.method public static final native Extractor_makeInstance(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Config;JLcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;JLcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;Ljava/lang/String;Ljava/lang/String;Z)J
.end method

.method public static final native Extractor_queryFeatures__SWIG_0(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;Z)J
.end method

.method public static final native Extractor_queryFeatures__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;)J
.end method

.method public static final native FeatureResultList_capacity(JLcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;)J
.end method

.method public static final native FeatureResultList_clear(JLcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;)V
.end method

.method public static final native FeatureResultList_doAdd__SWIG_0(JLcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;)V
.end method

.method public static final native FeatureResultList_doAdd__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;IJLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;)V
.end method

.method public static final native FeatureResultList_doGet(JLcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;I)J
.end method

.method public static final native FeatureResultList_doRemove(JLcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;I)J
.end method

.method public static final native FeatureResultList_doRemoveRange(JLcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;II)V
.end method

.method public static final native FeatureResultList_doSet(JLcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;IJLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;)J
.end method

.method public static final native FeatureResultList_doSize(JLcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;)I
.end method

.method public static final native FeatureResultList_isEmpty(JLcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;)Z
.end method

.method public static final native FeatureResultList_reserve(JLcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;J)V
.end method

.method public static final native IResult_change_ownership(Lcom/bytedance/ies/mediaprocessors/extractor_jni/IResult;JZ)V
.end method

.method public static final native IResult_director_connect(Lcom/bytedance/ies/mediaprocessors/extractor_jni/IResult;JZZ)V
.end method

.method public static final native ImageBuffer_format_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;)I
.end method

.method public static final native ImageBuffer_format_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;I)V
.end method

.method public static final native ImageBuffer_height_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;)I
.end method

.method public static final native ImageBuffer_height_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;I)V
.end method

.method public static final native ImageBuffer_length_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;)J
.end method

.method public static final native ImageBuffer_length_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;J)V
.end method

.method public static final native ImageBuffer_recycle(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;)V
.end method

.method public static final native ImageBuffer_rotateMode_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;)I
.end method

.method public static final native ImageBuffer_rotateMode_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;I)V
.end method

.method public static final native ImageBuffer_setData(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;[B)V
.end method

.method public static final native ImageBuffer_width_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;)I
.end method

.method public static final native ImageBuffer_width_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;I)V
.end method

.method public static final native Input_algorithmConf_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;)Ljava/lang/String;
.end method

.method public static final native Input_algorithmConf_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;Ljava/lang/String;)V
.end method

.method public static final native Input_algorithmKey__SWIG_0(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;I)Ljava/lang/String;
.end method

.method public static final native Input_algorithmKey__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;)Ljava/lang/String;
.end method

.method public static final native Input_floatParams_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;)J
.end method

.method public static final native Input_floatParams_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringFloatMap;)V
.end method

.method public static final native Input_intParams_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;)J
.end method

.method public static final native Input_intParams_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;)V
.end method

.method public static final native Input_resList_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;)J
.end method

.method public static final native Input_resList_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;JLcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;)V
.end method

.method public static final native Input_stringParams_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;)J
.end method

.method public static final native Input_stringParams_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringStringMap;)V
.end method

.method public static final native Input_type_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;)I
.end method

.method public static final native Input_type_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;I)V
.end method

.method public static final native MemoryCache_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native MemoryCache_clear(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MemoryCache;JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)V
.end method

.method public static final native MemoryCache_clearAll(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MemoryCache;)V
.end method

.method public static final native MemoryCache_clearTypes__SWIG_0(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MemoryCache;JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;)V
.end method

.method public static final native MemoryCache_clearTypes__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MemoryCache;JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)V
.end method

.method public static final native MemoryCache_query__SWIG_0(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MemoryCache;JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;)J
.end method

.method public static final native MemoryCache_query__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MemoryCache;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public static final native MemoryCache_save__SWIG_0(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MemoryCache;JLcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;)V
.end method

.method public static final native MemoryCache_save__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MemoryCache;JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;)V
.end method

.method public static final native MultiAlgorithmInput_algorithmConf_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;)Ljava/lang/String;
.end method

.method public static final native MultiAlgorithmInput_algorithmConf_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;Ljava/lang/String;)V
.end method

.method public static final native MultiAlgorithmInput_algorithmKey__SWIG_0(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native MultiAlgorithmInput_algorithmKey__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;I)Ljava/lang/String;
.end method

.method public static final native MultiAlgorithmInput_confMd5_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;)Ljava/lang/String;
.end method

.method public static final native MultiAlgorithmInput_confMd5_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;Ljava/lang/String;)V
.end method

.method public static final native MultiAlgorithmInput_resList_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;)J
.end method

.method public static final native MultiAlgorithmInput_resList_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;JLcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;)V
.end method

.method public static final native MultiAlgorithmInput_stringTypes_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;)J
.end method

.method public static final native MultiAlgorithmInput_stringTypes_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)V
.end method

.method public static final native MultiAlgorithmInput_types_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;)J
.end method

.method public static final native MultiAlgorithmInput_types_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;)V
.end method

.method public static final native MultiResult_ResultItem_data_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;)J
.end method

.method public static final native MultiResult_ResultItem_data_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;J)V
.end method

.method public static final native MultiResult_ResultItem_memcpyStructResult(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;[B)V
.end method

.method public static final native MultiResult_ResultItem_size_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;)J
.end method

.method public static final native MultiResult_ResultItem_size_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;J)V
.end method

.method public static final native MultiResult_ResultItem_stringType_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;)Ljava/lang/String;
.end method

.method public static final native MultiResult_ResultItem_stringType_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;Ljava/lang/String;)V
.end method

.method public static final native MultiResult_ResultItem_type_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;)I
.end method

.method public static final native MultiResult_ResultItem_type_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;I)V
.end method

.method public static final native MultiResult_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native MultiResult_assetId_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;)Ljava/lang/String;
.end method

.method public static final native MultiResult_assetId_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;Ljava/lang/String;)V
.end method

.method public static final native MultiResult_clear(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;)V
.end method

.method public static final native MultiResult_emplace__SWIG_0(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;IJJ)V
.end method

.method public static final native MultiResult_emplace__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;Ljava/lang/String;JJ)V
.end method

.method public static final native MultiResult_getResultItem__SWIG_0(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;Ljava/lang/String;)J
.end method

.method public static final native MultiResult_getResultItem__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;I)J
.end method

.method public static final native MultiResult_resultCount(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;)J
.end method

.method public static final native MultiResult_stringTypes_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;)J
.end method

.method public static final native MultiResult_stringTypes_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)V
.end method

.method public static final native MultiResult_types_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;)J
.end method

.method public static final native MultiResult_types_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;)V
.end method

.method public static final native NativeStringUtils_getJavaDataFromByte(JJJLcom/bytedance/ies/mediaprocessors/extractor_jni/ByteArrayCallBack;)V
.end method

.method public static final native ResourceList_capacity(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;)J
.end method

.method public static final native ResourceList_clear(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;)V
.end method

.method public static final native ResourceList_doAdd__SWIG_0(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;JLcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;)V
.end method

.method public static final native ResourceList_doAdd__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;IJLcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;)V
.end method

.method public static final native ResourceList_doGet(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;I)J
.end method

.method public static final native ResourceList_doRemove(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;I)J
.end method

.method public static final native ResourceList_doRemoveRange(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;II)V
.end method

.method public static final native ResourceList_doSet(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;IJLcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;)J
.end method

.method public static final native ResourceList_doSize(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;)I
.end method

.method public static final native ResourceList_isEmpty(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;)Z
.end method

.method public static final native ResourceList_reserve(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;J)V
.end method

.method public static final native Resource_assetId_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;)Ljava/lang/String;
.end method

.method public static final native Resource_assetId_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;Ljava/lang/String;)V
.end method

.method public static final native Resource_assetPath_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;)Ljava/lang/String;
.end method

.method public static final native Resource_assetPath_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;Ljava/lang/String;)V
.end method

.method public static final native Resource_buffer_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;)J
.end method

.method public static final native Resource_buffer_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;JLcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;)V
.end method

.method public static final native Resource_isInvalidResource(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;)Z
.end method

.method public static final native Result_SWIGSmartPtrUpcast(J)J
.end method

.method public static final native Result_algorithmKey_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;)Ljava/lang/String;
.end method

.method public static final native Result_algorithmKey_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;Ljava/lang/String;)V
.end method

.method public static final native Result_algorithmStringType_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;)Ljava/lang/String;
.end method

.method public static final native Result_algorithmStringType_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;Ljava/lang/String;)V
.end method

.method public static final native Result_algorithmType_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;)I
.end method

.method public static final native Result_algorithmType_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;I)V
.end method

.method public static final native Result_assetId_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;)Ljava/lang/String;
.end method

.method public static final native Result_assetId_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;Ljava/lang/String;)V
.end method

.method public static final native Result_freeResult(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;)V
.end method

.method public static final native Result_freeStringTypeResult(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;)Z
.end method

.method public static final native Result_freeStructResult(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;)V
.end method

.method public static final native Result_memcpyStructResult(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;[B)V
.end method

.method public static final native Result_resetData(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;)V
.end method

.method public static final native Result_resultLength_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;)J
.end method

.method public static final native Result_resultLength_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;J)V
.end method

.method public static final native Result_result_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;)J
.end method

.method public static final native Result_result_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;J)V
.end method

.method public static final native Result_setResultNative(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;[B)V
.end method

.method public static final native StringFloatMap_Iterator_getKey(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringFloatMap$Iterator;)Ljava/lang/String;
.end method

.method public static final native StringFloatMap_Iterator_getNextUnchecked(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringFloatMap$Iterator;)J
.end method

.method public static final native StringFloatMap_Iterator_getValue(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringFloatMap$Iterator;)F
.end method

.method public static final native StringFloatMap_Iterator_isNot(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringFloatMap$Iterator;JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringFloatMap$Iterator;)Z
.end method

.method public static final native StringFloatMap_Iterator_setValue(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringFloatMap$Iterator;F)V
.end method

.method public static final native StringFloatMap_begin(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringFloatMap;)J
.end method

.method public static final native StringFloatMap_clear(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringFloatMap;)V
.end method

.method public static final native StringFloatMap_containsImpl(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringFloatMap;Ljava/lang/String;)Z
.end method

.method public static final native StringFloatMap_end(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringFloatMap;)J
.end method

.method public static final native StringFloatMap_find(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringFloatMap;Ljava/lang/String;)J
.end method

.method public static final native StringFloatMap_isEmpty(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringFloatMap;)Z
.end method

.method public static final native StringFloatMap_putUnchecked(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringFloatMap;Ljava/lang/String;F)V
.end method

.method public static final native StringFloatMap_removeUnchecked(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringFloatMap;JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringFloatMap$Iterator;)V
.end method

.method public static final native StringFloatMap_sizeImpl(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringFloatMap;)I
.end method

.method public static final native StringLongMap_Iterator_getKey(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;)Ljava/lang/String;
.end method

.method public static final native StringLongMap_Iterator_getNextUnchecked(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;)J
.end method

.method public static final native StringLongMap_Iterator_getValue(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;)J
.end method

.method public static final native StringLongMap_Iterator_isNot(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;)Z
.end method

.method public static final native StringLongMap_Iterator_setValue(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;J)V
.end method

.method public static final native StringLongMap_begin(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;)J
.end method

.method public static final native StringLongMap_clear(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;)V
.end method

.method public static final native StringLongMap_containsImpl(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;Ljava/lang/String;)Z
.end method

.method public static final native StringLongMap_end(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;)J
.end method

.method public static final native StringLongMap_find(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;Ljava/lang/String;)J
.end method

.method public static final native StringLongMap_isEmpty(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;)Z
.end method

.method public static final native StringLongMap_putUnchecked(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;Ljava/lang/String;J)V
.end method

.method public static final native StringLongMap_removeUnchecked(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;)V
.end method

.method public static final native StringLongMap_sizeImpl(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;)I
.end method

.method public static final native StringStringMap_Iterator_getKey(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringStringMap$Iterator;)Ljava/lang/String;
.end method

.method public static final native StringStringMap_Iterator_getNextUnchecked(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringStringMap$Iterator;)J
.end method

.method public static final native StringStringMap_Iterator_getValue(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringStringMap$Iterator;)Ljava/lang/String;
.end method

.method public static final native StringStringMap_Iterator_isNot(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringStringMap$Iterator;JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringStringMap$Iterator;)Z
.end method

.method public static final native StringStringMap_Iterator_setValue(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringStringMap$Iterator;Ljava/lang/String;)V
.end method

.method public static final native StringStringMap_begin(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringStringMap;)J
.end method

.method public static final native StringStringMap_clear(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringStringMap;)V
.end method

.method public static final native StringStringMap_containsImpl(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringStringMap;Ljava/lang/String;)Z
.end method

.method public static final native StringStringMap_end(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringStringMap;)J
.end method

.method public static final native StringStringMap_find(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringStringMap;Ljava/lang/String;)J
.end method

.method public static final native StringStringMap_isEmpty(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringStringMap;)Z
.end method

.method public static final native StringStringMap_putUnchecked(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringStringMap;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static final native StringStringMap_removeUnchecked(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringStringMap;JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringStringMap$Iterator;)V
.end method

.method public static final native StringStringMap_sizeImpl(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringStringMap;)I
.end method

.method public static final native StructResultCopyCallBack_change_ownership(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StructResultCopyCallBack;JZ)V
.end method

.method public static final native StructResultCopyCallBack_director_connect(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StructResultCopyCallBack;JZZ)V
.end method

.method public static final native StructResultCopyCallBack_onResult(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StructResultCopyCallBack;[B)V
.end method

.method public static SwigDirector_ByteArrayCallBack_onResult(Lcom/bytedance/ies/mediaprocessors/extractor_jni/ByteArrayCallBack;[B)V
    .registers 2

    .line 419
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ByteArrayCallBack;->onResult([B)V

    return-void
.end method

.method public static SwigDirector_CacheAdapter_clear(Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;J)V
    .registers 5

    .line 407
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;-><init>(JZ)V

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;->clear(Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)V

    return-void
.end method

.method public static SwigDirector_CacheAdapter_clearAll(Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;)V
    .registers 1

    .line 416
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;->clearAll()V

    return-void
.end method

.method public static SwigDirector_CacheAdapter_clearTypes__SWIG_0(Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;J)V
    .registers 5

    .line 410
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;-><init>(JZ)V

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;->clearTypes(Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;)V

    return-void
.end method

.method public static SwigDirector_CacheAdapter_clearTypes__SWIG_1(Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;J)V
    .registers 5

    .line 413
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;-><init>(JZ)V

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;->clearTypes(Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)V

    return-void
.end method

.method public static SwigDirector_CacheAdapter_query__SWIG_0(Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;J)J
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    goto :goto_f

    .line 395
    :cond_8
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;-><init>(JZ)V

    move-object p1, v0

    :goto_f
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;->query(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static SwigDirector_CacheAdapter_query__SWIG_1(Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;Ljava/lang/String;Ljava/lang/String;)J
    .registers 3

    .line 398
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;->query(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static SwigDirector_CacheAdapter_save__SWIG_0(Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;J)V
    .registers 5

    .line 401
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;-><init>(JZ)V

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;->save(Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;)V

    return-void
.end method

.method public static SwigDirector_CacheAdapter_save__SWIG_1(Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    goto :goto_f

    .line 404
    :cond_8
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;-><init>(JZ)V

    move-object p1, v0

    :goto_f
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;->save(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;)V

    return-void
.end method

.method public static SwigDirector_StructResultCopyCallBack_onResult(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StructResultCopyCallBack;[B)V
    .registers 2

    .line 392
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StructResultCopyCallBack;->onResult([B)V

    return-void
.end method

.method public static final native VecAlgorithmType_capacity(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;)J
.end method

.method public static final native VecAlgorithmType_clear(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;)V
.end method

.method public static final native VecAlgorithmType_doAdd__SWIG_0(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;I)V
.end method

.method public static final native VecAlgorithmType_doAdd__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;II)V
.end method

.method public static final native VecAlgorithmType_doGet(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;I)I
.end method

.method public static final native VecAlgorithmType_doRemove(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;I)I
.end method

.method public static final native VecAlgorithmType_doRemoveRange(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;II)V
.end method

.method public static final native VecAlgorithmType_doSet(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;II)I
.end method

.method public static final native VecAlgorithmType_doSize(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;)I
.end method

.method public static final native VecAlgorithmType_isEmpty(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;)Z
.end method

.method public static final native VecAlgorithmType_reserve(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;J)V
.end method

.method public static final native VecMultiResult_capacity(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecMultiResult;)J
.end method

.method public static final native VecMultiResult_clear(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecMultiResult;)V
.end method

.method public static final native VecMultiResult_doAdd__SWIG_0(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecMultiResult;JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;)V
.end method

.method public static final native VecMultiResult_doAdd__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecMultiResult;IJLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;)V
.end method

.method public static final native VecMultiResult_doGet(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecMultiResult;I)J
.end method

.method public static final native VecMultiResult_doRemove(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecMultiResult;I)J
.end method

.method public static final native VecMultiResult_doRemoveRange(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecMultiResult;II)V
.end method

.method public static final native VecMultiResult_doSet(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecMultiResult;IJLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;)J
.end method

.method public static final native VecMultiResult_doSize(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecMultiResult;)I
.end method

.method public static final native VecMultiResult_isEmpty(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecMultiResult;)Z
.end method

.method public static final native VecMultiResult_reserve(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecMultiResult;J)V
.end method

.method public static final native VecString_capacity(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)J
.end method

.method public static final native VecString_clear(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)V
.end method

.method public static final native VecString_doAdd__SWIG_0(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;Ljava/lang/String;)V
.end method

.method public static final native VecString_doAdd__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;ILjava/lang/String;)V
.end method

.method public static final native VecString_doGet(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;I)Ljava/lang/String;
.end method

.method public static final native VecString_doRemove(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;I)Ljava/lang/String;
.end method

.method public static final native VecString_doRemoveRange(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;II)V
.end method

.method public static final native VecString_doSet(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;ILjava/lang/String;)Ljava/lang/String;
.end method

.method public static final native VecString_doSize(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)I
.end method

.method public static final native VecString_isEmpty(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)Z
.end method

.method public static final native VecString_reserve(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;J)V
.end method

.method public static final native delete_AppConfig(J)V
.end method

.method public static final native delete_BachAlgorithmInput(J)V
.end method

.method public static final native delete_BachFeatureData(J)V
.end method

.method public static final native delete_ByteArrayCallBack(J)V
.end method

.method public static final native delete_CacheAdapter(J)V
.end method

.method public static final native delete_Config(J)V
.end method

.method public static final native delete_CoverUtil(J)V
.end method

.method public static final native delete_ErrorPair(J)V
.end method

.method public static final native delete_Extractor(J)V
.end method

.method public static final native delete_FeatureResultList(J)V
.end method

.method public static final native delete_IResult(J)V
.end method

.method public static final native delete_ImageBuffer(J)V
.end method

.method public static final native delete_Input(J)V
.end method

.method public static final native delete_MemoryCache(J)V
.end method

.method public static final native delete_MultiAlgorithmInput(J)V
.end method

.method public static final native delete_MultiResult(J)V
.end method

.method public static final native delete_MultiResult_ResultItem(J)V
.end method

.method public static final native delete_NativeStringUtils(J)V
.end method

.method public static final native delete_Resource(J)V
.end method

.method public static final native delete_ResourceList(J)V
.end method

.method public static final native delete_Result(J)V
.end method

.method public static final native delete_StringFloatMap(J)V
.end method

.method public static final native delete_StringFloatMap_Iterator(J)V
.end method

.method public static final native delete_StringLongMap(J)V
.end method

.method public static final native delete_StringLongMap_Iterator(J)V
.end method

.method public static final native delete_StringStringMap(J)V
.end method

.method public static final native delete_StringStringMap_Iterator(J)V
.end method

.method public static final native delete_StructResultCopyCallBack(J)V
.end method

.method public static final native delete_VecAlgorithmType(J)V
.end method

.method public static final native delete_VecMultiResult(J)V
.end method

.method public static final native delete_VecString(J)V
.end method

.method public static final native join__SWIG_0(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native join__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)Ljava/lang/String;
.end method

.method public static final native new_AppConfig()J
.end method

.method public static final native new_BachAlgorithmInput(I)J
.end method

.method public static final native new_BachFeatureData()J
.end method

.method public static final native new_ByteArrayCallBack()J
.end method

.method public static final native new_CacheAdapter()J
.end method

.method public static final native new_Config()J
.end method

.method public static final native new_CoverUtil()J
.end method

.method public static final native new_ErrorPair__SWIG_0()J
.end method

.method public static final native new_ErrorPair__SWIG_1(ILjava/lang/String;)J
.end method

.method public static final native new_ErrorPair__SWIG_2(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;)J
.end method

.method public static final native new_Extractor(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Config;JLcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;JLcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;Ljava/lang/String;Ljava/lang/String;Z)J
.end method

.method public static final native new_FeatureResultList__SWIG_0()J
.end method

.method public static final native new_FeatureResultList__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;)J
.end method

.method public static final native new_FeatureResultList__SWIG_2(IJLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;)J
.end method

.method public static final native new_IResult()J
.end method

.method public static final native new_ImageBuffer__SWIG_0()J
.end method

.method public static final native new_ImageBuffer__SWIG_1(IILjava/lang/String;Ljava/math/BigInteger;)J
.end method

.method public static final native new_Input__SWIG_0()J
.end method

.method public static final native new_Input__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;Ljava/lang/String;JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;I)J
.end method

.method public static final native new_Input__SWIG_2(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;Ljava/lang/String;JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringFloatMap;JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringStringMap;I)J
.end method

.method public static final native new_MemoryCache(I)J
.end method

.method public static final native new_MultiAlgorithmInput(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;Ljava/lang/String;JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)J
.end method

.method public static final native new_MultiResult()J
.end method

.method public static final native new_MultiResult_ResultItem__SWIG_0()J
.end method

.method public static final native new_MultiResult_ResultItem__SWIG_1(IJJ)J
.end method

.method public static final native new_MultiResult_ResultItem__SWIG_2(Ljava/lang/String;JJ)J
.end method

.method public static final native new_NativeStringUtils()J
.end method

.method public static final native new_ResourceList__SWIG_0()J
.end method

.method public static final native new_ResourceList__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;)J
.end method

.method public static final native new_ResourceList__SWIG_2(IJLcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;)J
.end method

.method public static final native new_Resource__SWIG_0()J
.end method

.method public static final native new_Resource__SWIG_1(Ljava/lang/String;)J
.end method

.method public static final native new_Resource__SWIG_2(Ljava/lang/String;Ljava/lang/String;JLcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;)J
.end method

.method public static final native new_Result__SWIG_0()J
.end method

.method public static final native new_Result__SWIG_1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)J
.end method

.method public static final native new_Result__SWIG_2(Ljava/lang/String;Ljava/lang/String;I)J
.end method

.method public static final native new_Result__SWIG_3(Ljava/lang/String;Ljava/lang/String;IJI)J
.end method

.method public static final native new_StringFloatMap__SWIG_0()J
.end method

.method public static final native new_StringFloatMap__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringFloatMap;)J
.end method

.method public static final native new_StringLongMap__SWIG_0()J
.end method

.method public static final native new_StringLongMap__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;)J
.end method

.method public static final native new_StringStringMap__SWIG_0()J
.end method

.method public static final native new_StringStringMap__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringStringMap;)J
.end method

.method public static final native new_StructResultCopyCallBack()J
.end method

.method public static final native new_VecAlgorithmType__SWIG_0()J
.end method

.method public static final native new_VecAlgorithmType__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;)J
.end method

.method public static final native new_VecAlgorithmType__SWIG_2(II)J
.end method

.method public static final native new_VecMultiResult__SWIG_0()J
.end method

.method public static final native new_VecMultiResult__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecMultiResult;)J
.end method

.method public static final native new_VecMultiResult__SWIG_2(IJLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;)J
.end method

.method public static final native new_VecString__SWIG_0()J
.end method

.method public static final native new_VecString__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)J
.end method

.method public static final native new_VecString__SWIG_2(ILjava/lang/String;)J
.end method

.method public static final native onResult([B)V
.end method

.method public static final native split__SWIG_0(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public static final native split__SWIG_1(Ljava/lang/String;)J
.end method

.method public static final native strContains(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static final native swig_module_init()V
.end method
