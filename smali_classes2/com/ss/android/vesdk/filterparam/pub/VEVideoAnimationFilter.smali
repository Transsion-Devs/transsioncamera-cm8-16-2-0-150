.class public Lcom/ss/android/vesdk/filterparam/pub/VEVideoAnimationFilter;
.super Lcom/ss/android/vesdk/filterparam/pub/VEFilter;
.source "SourceFile"


# instance fields
.field public endTime:J

.field public res:Ljava/lang/String;

.field public startTime:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 17
    invoke-direct {p0}, Lcom/ss/android/vesdk/filterparam/pub/VEFilter;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEVideoAnimationFilter;->res:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEVideoAnimationFilter;->startTime:J

    .line 12
    iput-wide v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEVideoAnimationFilter;->endTime:J

    .line 18
    sget-object v0, Lcom/ss/android/ttve/common/TEDefine$TEPublicFilter;->VideoAnimation:Lcom/ss/android/ttve/common/TEDefine$TEPublicFilter;

    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEFilter;->filterType:Lcom/ss/android/ttve/common/TEDefine$TEPublicFilter;

    return-void
.end method
