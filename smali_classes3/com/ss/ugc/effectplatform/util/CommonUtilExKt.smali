.class public abstract Lcom/ss/ugc/effectplatform/util/CommonUtilExKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final convertToEncoding([BLbytekn/foundation/io/file/ContentEncoding;)Ljava/lang/String;
    .registers 3

    const-string v0, "$this$convertToEncoding"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentEncoding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/ss/ugc/effectplatform/util/CommonUtilExKt$convertToEncoding$charset$1;

    invoke-direct {v0, p1}, Lcom/ss/ugc/effectplatform/util/CommonUtilExKt$convertToEncoding$charset$1;-><init>(Lbytekn/foundation/io/file/ContentEncoding;)V

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/charset/Charset;

    .line 12
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
