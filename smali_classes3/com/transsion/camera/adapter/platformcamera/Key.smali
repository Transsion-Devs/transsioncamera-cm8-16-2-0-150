.class abstract Lcom/transsion/camera/adapter/platformcamera/Key;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mStatus:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/transsion/camera/adapter/platformcamera/Key;->mStatus:I

    return-void
.end method


# virtual methods
.method public getStatus()I
    .registers 1

    .line 15
    iget p0, p0, Lcom/transsion/camera/adapter/platformcamera/Key;->mStatus:I

    return p0
.end method

.method public isExist()Z
    .registers 2

    .line 19
    iget p0, p0, Lcom/transsion/camera/adapter/platformcamera/Key;->mStatus:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public setStatus(I)V
    .registers 2

    .line 11
    iput p1, p0, Lcom/transsion/camera/adapter/platformcamera/Key;->mStatus:I

    return-void
.end method
