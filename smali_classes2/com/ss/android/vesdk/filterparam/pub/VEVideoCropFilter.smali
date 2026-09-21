.class public Lcom/ss/android/vesdk/filterparam/pub/VEVideoCropFilter;
.super Lcom/ss/android/vesdk/filterparam/pub/VEFilter;
.source "SourceFile"


# instance fields
.field public bottomLeftX:D

.field public bottomLeftY:D

.field public bottomRightX:D

.field public bottomRightY:D

.field public topLeftX:D

.field public topLeftY:D

.field public topRightX:D

.field public topRightY:D


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 24
    invoke-direct {p0}, Lcom/ss/android/vesdk/filterparam/pub/VEFilter;-><init>()V

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEVideoCropFilter;->bottomLeftX:D

    .line 13
    iput-wide v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEVideoCropFilter;->bottomLeftY:D

    .line 14
    iput-wide v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEVideoCropFilter;->bottomRightX:D

    .line 15
    iput-wide v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEVideoCropFilter;->bottomRightY:D

    .line 16
    iput-wide v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEVideoCropFilter;->topLeftX:D

    .line 17
    iput-wide v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEVideoCropFilter;->topLeftY:D

    .line 18
    iput-wide v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEVideoCropFilter;->topRightX:D

    .line 19
    iput-wide v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEVideoCropFilter;->topRightY:D

    .line 25
    sget-object v0, Lcom/ss/android/ttve/common/TEDefine$TEPublicFilter;->VideoCrop:Lcom/ss/android/ttve/common/TEDefine$TEPublicFilter;

    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEFilter;->filterType:Lcom/ss/android/ttve/common/TEDefine$TEPublicFilter;

    return-void
.end method
