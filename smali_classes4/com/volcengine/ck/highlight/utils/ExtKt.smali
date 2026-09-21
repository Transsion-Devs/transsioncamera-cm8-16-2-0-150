.class public final Lcom/volcengine/ck/highlight/utils/ExtKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final isImage(Lcom/volcengine/ck/highlight/data/RecognizeMedia;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_d

    return v0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public static final isVideo(Lcom/volcengine/ck/highlight/data/RecognizeMedia;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->getType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static final toHLResult(Lcom/volcengine/ck/highlight/data/RecognizeResult;II)Lcom/volcengine/ck/highlight/data/HLResult;
    .registers 9

    const-string p2, "<this>"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/volcengine/ck/highlight/data/HLResult;

    .line 18
    invoke-virtual {p0}, Lcom/volcengine/ck/highlight/data/RecognizeResult;->getId()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {p0}, Lcom/volcengine/ck/highlight/data/RecognizeResult;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-virtual {p0}, Lcom/volcengine/ck/highlight/data/RecognizeResult;->getC3()Ljava/util/List;

    move-result-object v4

    .line 22
    invoke-virtual {p0}, Lcom/volcengine/ck/highlight/data/RecognizeResult;->getScore()Lcom/volcengine/ck/highlight/data/HLScore;

    move-result-object v5

    move v3, p1

    .line 17
    invoke-direct/range {v0 .. v5}, Lcom/volcengine/ck/highlight/data/HLResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/volcengine/ck/highlight/data/HLScore;)V

    return-object v0
.end method
