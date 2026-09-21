.class public abstract Lcom/ss/ugc/effectplatform/extension/ByteArrayExKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final toByteArrayExt(Ljava/lang/String;)[B
    .registers 2

    const-string v0, "$this$toByteArrayExt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v0, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toString([BIILbytekn/foundation/io/file/ContentEncoding;)Ljava/lang/String;
    .registers 5

    const-string v0, "$this$toString"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentEncoding"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/ss/ugc/effectplatform/extension/ByteArrayExKt$toString$charset$1;

    invoke-direct {v0, p3}, Lcom/ss/ugc/effectplatform/extension/ByteArrayExKt$toString$charset$1;-><init>(Lbytekn/foundation/io/file/ContentEncoding;)V

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/nio/charset/Charset;

    .line 16
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method
