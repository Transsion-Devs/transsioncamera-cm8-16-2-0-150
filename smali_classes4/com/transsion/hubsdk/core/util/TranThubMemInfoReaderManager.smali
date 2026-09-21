.class public Lcom/transsion/hubsdk/core/util/TranThubMemInfoReaderManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/util/ITranMemInfoReaderAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubMemInfoReaderManager"


# instance fields
.field private mMemInfoReader:Lcom/transsion/hubsdk/util/TranMemInfoReader;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/transsion/hubsdk/util/TranMemInfoReader;

    invoke-direct {v0}, Lcom/transsion/hubsdk/util/TranMemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubMemInfoReaderManager;->mMemInfoReader:Lcom/transsion/hubsdk/util/TranMemInfoReader;

    return-void
.end method


# virtual methods
.method public getCachedSize()J
    .registers 4

    .line 38
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/util/TranThubMemInfoReaderManager;->mMemInfoReader:Lcom/transsion/hubsdk/util/TranMemInfoReader;

    if-eqz p0, :cond_20

    .line 39
    invoke-virtual {p0}, Lcom/transsion/hubsdk/util/TranMemInfoReader;->getCachedSize()J

    move-result-wide v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-wide v0

    :catch_9
    move-exception p0

    .line 42
    sget-object v0, Lcom/transsion/hubsdk/core/util/TranThubMemInfoReaderManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCachedSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFreeSize()J
    .registers 4

    .line 26
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/util/TranThubMemInfoReaderManager;->mMemInfoReader:Lcom/transsion/hubsdk/util/TranMemInfoReader;

    if-eqz p0, :cond_20

    .line 27
    invoke-virtual {p0}, Lcom/transsion/hubsdk/util/TranMemInfoReader;->getFreeSize()J

    move-result-wide v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-wide v0

    :catch_9
    move-exception p0

    .line 30
    sget-object v0, Lcom/transsion/hubsdk/core/util/TranThubMemInfoReaderManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFreeSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public readMemInfo()V
    .registers 4

    .line 50
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/util/TranThubMemInfoReaderManager;->mMemInfoReader:Lcom/transsion/hubsdk/util/TranMemInfoReader;

    if-eqz p0, :cond_7

    .line 51
    invoke-virtual {p0}, Lcom/transsion/hubsdk/util/TranMemInfoReader;->readMemInfo()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 54
    sget-object v0, Lcom/transsion/hubsdk/core/util/TranThubMemInfoReaderManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readMemInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
