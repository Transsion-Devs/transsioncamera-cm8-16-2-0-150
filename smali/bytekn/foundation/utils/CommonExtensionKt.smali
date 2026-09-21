.class public abstract Lbytekn/foundation/utils/CommonExtensionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final getStackTraceString(Ljava/lang/Exception;)Ljava/lang/String;
    .registers 2

    const-string v0, "$this$getStackTraceString"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Log.getStackTraceString(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
