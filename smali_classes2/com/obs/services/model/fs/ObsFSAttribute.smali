.class public Lcom/obs/services/model/fs/ObsFSAttribute;
.super Lcom/obs/services/model/ObjectMetadata;
.source "SourceFile"


# instance fields
.field private mode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Lcom/obs/services/model/ObjectMetadata;-><init>()V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/obs/services/model/fs/ObsFSAttribute;->mode:I

    return-void
.end method


# virtual methods
.method public getMode()I
    .registers 1

    .line 32
    iget p0, p0, Lcom/obs/services/model/fs/ObsFSAttribute;->mode:I

    return p0
.end method

.method public setMode(I)V
    .registers 2

    .line 42
    iput p1, p0, Lcom/obs/services/model/fs/ObsFSAttribute;->mode:I

    return-void
.end method
