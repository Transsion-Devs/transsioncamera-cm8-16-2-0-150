.class public Lcom/transsion/hubsdk/aosp/util/TranAospMemInfoReaderManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/util/ITranMemInfoReaderAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCachedSize()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFreeSize()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public readMemInfo()V
    .registers 1

    return-void
.end method
