.class public abstract Lcom/ss/ugc/effectplatform/monitor/MobExtensionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final mobDecryptError(Lcom/ss/ugc/effectplatform/monitor/IMonitorReport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 15

    const-string v0, "$this$mobDecryptError"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stackTrackString"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    const-string v0, ""

    if-eqz p1, :cond_f

    goto :goto_10

    :cond_f
    move-object p1, v0

    :goto_10
    const-string v1, "content"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    if-eqz p2, :cond_19

    goto :goto_1a

    :cond_19
    move-object p2, v0

    .line 152
    :goto_1a
    const-string p1, "error_msg"

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 153
    const-string p1, "stack_trace"

    invoke-static {p1, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 154
    const-string p1, "effect_platform_type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    if-eqz p5, :cond_33

    goto :goto_34

    :cond_33
    move-object p5, v0

    .line 155
    :goto_34
    const-string p1, "platform_sdk_version"

    invoke-static {p1, p5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 156
    const-string p1, "is_third_party_business"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Lkotlin/Pair;

    move-result-object p1

    .line 150
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 157
    const-string p2, "effectplatform_decrypt_fail"

    const/4 p3, 0x1

    invoke-interface {p0, p2, p3, p1}, Lcom/ss/ugc/effectplatform/monitor/IMonitorReport;->monitorStatusRate(Ljava/lang/String;ILjava/util/Map;)V

    return-void
.end method

.method public static final mobModelDownload(Lcom/ss/ugc/effectplatform/monitor/IMonitorReport;ZLcom/ss/ugc/effectplatform/EffectConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .registers 20

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    const-string v3, "$this$mobModelDownload"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "config"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "modelName"

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "modelType"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "extraMap"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Lcom/ss/ugc/effectplatform/EffectConfig;->getAppId()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-eqz v3, :cond_26

    goto :goto_27

    :cond_26
    move-object v3, v4

    :goto_27
    const-string v5, "app_id"

    invoke-static {v5, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 132
    invoke-virtual {p2}, Lcom/ss/ugc/effectplatform/EffectConfig;->getAccessKey()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_34

    goto :goto_35

    :cond_34
    move-object p2, v4

    :goto_35
    const-string v3, "access_key"

    invoke-static {v3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    .line 133
    const-string p2, "effect_platform_type"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    .line 134
    const-string p2, "resource_name"

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    .line 135
    const-string p2, "resource_type"

    invoke-static {p2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    if-eqz p4, :cond_57

    move-object/from16 p2, p4

    goto :goto_58

    :cond_57
    move-object p2, v4

    .line 136
    :goto_58
    const-string v0, "resource_version"

    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    filled-new-array/range {v6 .. v11}, [Lkotlin/Pair;

    move-result-object p2

    .line 130
    invoke-static {p2}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    .line 138
    invoke-interface {p2, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-nez p1, :cond_74

    if-eqz p7, :cond_6f

    move-object/from16 v4, p7

    .line 140
    :cond_6f
    const-string v0, "error_msg"

    invoke-interface {p2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_74
    const-string v0, "resource_download_success_rate"

    xor-int/2addr p1, v3

    invoke-interface {p0, v0, p1, p2}, Lcom/ss/ugc/effectplatform/monitor/IMonitorReport;->monitorStatusRate(Ljava/lang/String;ILjava/util/Map;)V

    return-void
.end method

.method public static synthetic mobModelDownload$default(Lcom/ss/ugc/effectplatform/monitor/IMonitorReport;ZLcom/ss/ugc/effectplatform/EffectConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 19

    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_f

    .line 129
    const-string v0, ""

    move-object v8, v0

    :goto_7
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    goto :goto_12

    :cond_f
    move-object/from16 v8, p7

    goto :goto_7

    :goto_12
    invoke-static/range {v1 .. v8}, Lcom/ss/ugc/effectplatform/monitor/MobExtensionKt;->mobModelDownload(Lcom/ss/ugc/effectplatform/monitor/IMonitorReport;ZLcom/ss/ugc/effectplatform/EffectConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static final mobModelFind(Lcom/ss/ugc/effectplatform/monitor/IMonitorReport;ZLcom/ss/ugc/effectplatform/EffectConfig;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-string v0, "$this$mobModelFind"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2}, Lcom/ss/ugc/effectplatform/EffectConfig;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    move-object v0, v1

    :goto_19
    const-string v2, "app_id"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 29
    invoke-virtual {p2}, Lcom/ss/ugc/effectplatform/EffectConfig;->getAccessKey()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_26

    goto :goto_27

    :cond_26
    move-object p2, v1

    :goto_27
    const-string v2, "access_key"

    invoke-static {v2, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    .line 30
    const-string v2, "effect_platform_type"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 31
    const-string v4, "model_name"

    invoke-static {v4, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    filled-new-array {v0, p2, v2, p3}, [Lkotlin/Pair;

    move-result-object p2

    .line 27
    invoke-static {p2}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    if-nez p1, :cond_51

    if-eqz p4, :cond_4b

    goto :goto_4c

    :cond_4b
    move-object p4, v1

    .line 34
    :goto_4c
    const-string p3, "error_msg"

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_51
    const-string p3, "find_resource_uri_success_rate"

    xor-int/2addr p1, v3

    invoke-interface {p0, p3, p1, p2}, Lcom/ss/ugc/effectplatform/monitor/IMonitorReport;->monitorStatusRate(Ljava/lang/String;ILjava/util/Map;)V

    return-void
.end method

.method public static synthetic mobModelFind$default(Lcom/ss/ugc/effectplatform/monitor/IMonitorReport;ZLcom/ss/ugc/effectplatform/EffectConfig;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_6

    .line 26
    const-string p4, ""

    :cond_6
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ss/ugc/effectplatform/monitor/MobExtensionKt;->mobModelFind(Lcom/ss/ugc/effectplatform/monitor/IMonitorReport;ZLcom/ss/ugc/effectplatform/EffectConfig;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
