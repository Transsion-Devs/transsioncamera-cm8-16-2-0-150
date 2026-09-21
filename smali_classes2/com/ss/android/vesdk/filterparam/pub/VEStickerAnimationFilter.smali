.class public Lcom/ss/android/vesdk/filterparam/pub/VEStickerAnimationFilter;
.super Lcom/ss/android/vesdk/filterparam/pub/VEFilter;
.source "SourceFile"


# instance fields
.field public animIn:Ljava/lang/String;

.field public animInDuration:J

.field public animLoop:Z

.field public animOut:Ljava/lang/String;

.field public animOutDuration:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 19
    invoke-direct {p0}, Lcom/ss/android/vesdk/filterparam/pub/VEFilter;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEStickerAnimationFilter;->animIn:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEStickerAnimationFilter;->animOut:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEStickerAnimationFilter;->animInDuration:J

    .line 13
    iput-wide v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEStickerAnimationFilter;->animOutDuration:J

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEStickerAnimationFilter;->animLoop:Z

    .line 20
    sget-object v0, Lcom/ss/android/ttve/common/TEDefine$TEPublicFilter;->StickerAnimation:Lcom/ss/android/ttve/common/TEDefine$TEPublicFilter;

    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEFilter;->filterType:Lcom/ss/android/ttve/common/TEDefine$TEPublicFilter;

    return-void
.end method
