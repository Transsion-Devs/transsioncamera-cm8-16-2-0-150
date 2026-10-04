.class public Lcom/transsion/hubsdk/aosp/rms/TranAospRmsMemfusionManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/rms/ITranRmsMemfusionManagerAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeCompactionMem(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public getMemoryForMF(Ljava/lang/String;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getSwapFileSizeList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public isMatchCurMemSelection()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isMemFusionEnabled()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isMemSettingEnterEnabled()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isMemoryEnoughToMF(Ljava/lang/String;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isUxCompactionSupport()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public setMemFusionEnable(Z)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public switchMemFusion(Z)V
    .registers 2

    return-void
.end method

.method public switchUXCompaction(Z)V
    .registers 2

    return-void
.end method
