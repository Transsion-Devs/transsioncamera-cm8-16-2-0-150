.class public abstract Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfoFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static buildQueryInfo(I)Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo;
    .registers 7

    const/4 v0, 0x3

    if-ne v0, p0, :cond_35

    .line 26
    invoke-static {}, Lcom/transsion/camera/utils/CalendarUtil;->getStartOfDay()J

    move-result-wide v0

    .line 27
    invoke-static {}, Lcom/transsion/camera/utils/CalendarUtil;->getEndOfDay()J

    move-result-wide v2

    .line 29
    new-instance v4, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;

    invoke-direct {v4}, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;-><init>()V

    const-string v5, "requestStatus=? AND responseTime>=? AND responseTime<=?"

    .line 30
    invoke-virtual {v4, v5}, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;->selection(Ljava/lang/String;)Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;

    move-result-object v4

    .line 31
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p0, v0, v1}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;->selectionArgs([Ljava/lang/String;)Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;

    move-result-object p0

    const-string v0, "responseTime DESC"

    .line 32
    invoke-virtual {p0, v0}, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;->orderBy(Ljava/lang/String;)Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;

    move-result-object p0

    .line 33
    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;->build()Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo;

    move-result-object p0

    return-object p0

    :cond_35
    const/4 v0, 0x4

    .line 34
    const-string v1, "requestStatus=?"

    if-ne v0, p0, :cond_5a

    .line 35
    new-instance v0, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;

    invoke-direct {v0}, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;-><init>()V

    .line 36
    invoke-virtual {v0, v1}, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;->selection(Ljava/lang/String;)Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;

    move-result-object v0

    .line 37
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;->selectionArgs([Ljava/lang/String;)Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;

    move-result-object p0

    const-string v0, "requestTime DESC"

    .line 38
    invoke-virtual {p0, v0}, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;->orderBy(Ljava/lang/String;)Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;

    move-result-object p0

    .line 39
    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;->build()Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo;

    move-result-object p0

    return-object p0

    .line 41
    :cond_5a
    new-instance v0, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;

    invoke-direct {v0}, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;-><init>()V

    .line 42
    invoke-virtual {v0, v1}, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;->selection(Ljava/lang/String;)Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;

    move-result-object v0

    .line 43
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;->selectionArgs([Ljava/lang/String;)Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;

    move-result-object p0

    const-string v0, "requestTime ASC"

    .line 44
    invoke-virtual {p0, v0}, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;->orderBy(Ljava/lang/String;)Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;

    move-result-object p0

    .line 45
    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo$Builder;->build()Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo;

    move-result-object p0

    return-object p0
.end method
