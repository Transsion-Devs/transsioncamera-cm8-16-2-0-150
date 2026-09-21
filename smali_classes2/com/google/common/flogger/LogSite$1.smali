.class Lcom/google/common/flogger/LogSite$1;
.super Lcom/google/common/flogger/LogSite;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/LogSite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Lcom/google/common/flogger/LogSite;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .registers 1

    .line 60
    const-string p0, "<unknown class>"

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLineNumber()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getMethodName()Ljava/lang/String;
    .registers 1

    .line 65
    const-string p0, "<unknown method>"

    return-object p0
.end method
