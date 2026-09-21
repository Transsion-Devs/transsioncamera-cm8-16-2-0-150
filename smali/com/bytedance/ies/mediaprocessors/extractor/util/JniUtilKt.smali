.class public final Lcom/bytedance/ies/mediaprocessors/extractor/util/JniUtilKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic getProtobufResult(Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;)Lcom/google/protobuf/GeneratedMessageV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageV3;",
            ">(",
            "Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;",
            ")TT;"
        }
    .end annotation

    const-string v0, "$this$getProtobufResult"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;->getSize()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 48
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;->memcpyStructResult([B)V

    const/4 p0, 0x4

    .line 49
    const-string v1, "T"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 50
    const-class p0, [B

    filled-new-array {p0}, [Ljava/lang/Class;

    move-result-object p0

    const-class v2, Lcom/google/protobuf/GeneratedMessageV3;

    const-string v3, "parseFrom"

    invoke-virtual {v2, v3, p0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 51
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    check-cast p0, Lcom/google/protobuf/GeneratedMessageV3;

    return-object p0
.end method

.method public static final synthetic getProtobufResult(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;)Lcom/google/protobuf/GeneratedMessageV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageV3;",
            ">(",
            "Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;",
            ")TT;"
        }
    .end annotation

    const-string v0, "$this$getProtobufResult"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->getResultLength()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 21
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->memcpyStructResult([B)V

    const/4 p0, 0x4

    .line 22
    const-string v1, "T"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 23
    const-class p0, [B

    filled-new-array {p0}, [Ljava/lang/Class;

    move-result-object p0

    const-class v2, Lcom/google/protobuf/GeneratedMessageV3;

    const-string v3, "parseFrom"

    invoke-virtual {v2, v3, p0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 24
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    check-cast p0, Lcom/google/protobuf/GeneratedMessageV3;

    return-object p0
.end method

.method public static final synthetic getProtobufResult(Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageV3;",
            ">(",
            "Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    const-string v0, "T"

    const-string v1, "$this$getProtobufResult"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "success"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "failure"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    :try_start_11
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;->getSize()J

    move-result-wide v1

    long-to-int v1, v1

    new-array v1, v1, [B

    .line 48
    invoke-virtual {p0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;->memcpyStructResult([B)V

    const/4 p0, 0x4

    .line 49
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p0, Lcom/google/protobuf/GeneratedMessageV3;

    .line 50
    const-string v2, "parseFrom"

    const-class v3, [B

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 51
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    check-cast p0, Lcom/google/protobuf/GeneratedMessageV3;

    .line 32
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_3e} :catch_3f

    return-void

    :catch_3f
    move-exception p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_47

    goto :goto_49

    :cond_47
    const-string p0, ""

    :goto_49
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic getProtobufResult(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageV3;",
            ">(",
            "Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    const-string v0, "T"

    const-string v1, "$this$getProtobufResult"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "success"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "failure"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    :try_start_11
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->getResultLength()J

    move-result-wide v1

    long-to-int v1, v1

    new-array v1, v1, [B

    .line 21
    invoke-virtual {p0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->memcpyStructResult([B)V

    const/4 p0, 0x4

    .line 22
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p0, Lcom/google/protobuf/GeneratedMessageV3;

    .line 23
    const-string v2, "parseFrom"

    const-class v3, [B

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 24
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    check-cast p0, Lcom/google/protobuf/GeneratedMessageV3;

    .line 13
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_3e} :catch_3f

    return-void

    :catch_3f
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_47

    goto :goto_49

    :cond_47
    const-string p0, ""

    :goto_49
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic getProtobufResultSync(Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;)Lcom/google/protobuf/GeneratedMessageV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageV3;",
            ">(",
            "Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;",
            ")TT;"
        }
    .end annotation

    const-string v0, "T"

    const-string v1, "$this$getProtobufResultSync"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    :try_start_7
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;->getSize()J

    move-result-wide v1

    long-to-int v1, v1

    new-array v1, v1, [B

    .line 48
    invoke-virtual {p0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;->memcpyStructResult([B)V

    const/4 p0, 0x4

    .line 49
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p0, Lcom/google/protobuf/GeneratedMessageV3;

    .line 50
    const-string v2, "parseFrom"

    const-class v3, [B

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 51
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    check-cast p0, Lcom/google/protobuf/GeneratedMessageV3;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_31} :catch_32

    return-object p0

    :catch_32
    const/4 p0, 0x0

    return-object p0
.end method
