.class public Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;
.super Lcom/ss/android/vesdk/filterparam/pub/VEInfoStickerFilter;
.source "SourceFile"


# instance fields
.field public alignType:J

.field public background:Z

.field public backgroundAlpha:D

.field public backgroundColor:Ljava/lang/String;

.field public boldWidth:D

.field public charSpacing:D

.field public effectPath:Ljava/lang/String;

.field public fallbackFontPath:Ljava/lang/String;

.field public fallbackFontPathList:Ljava/lang/String;

.field public fontPath:Ljava/lang/String;

.field public fontSize:D

.field public innerPadding:D

.field public italicDegree:J

.field public ktvColor:Ljava/lang/String;

.field public ktvOutlineColor:Ljava/lang/String;

.field public ktvShadowColor:Ljava/lang/String;

.field public lineGap:D

.field public lineMaxWidth:D

.field public outline:Z

.field public outlineAlpha:D

.field public outlineColor:Ljava/lang/String;

.field public outlineWidth:D

.field public shadow:Z

.field public shadowAlpha:D

.field public shadowColor:Ljava/lang/String;

.field public shadowOffsetX:D

.field public shadowOffsetY:D

.field public shadowSmoothing:D

.field public shapeFlipX:Z

.field public shapeFlipY:Z

.field public shapePath:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public textAlpha:D

.field public textColor:Ljava/lang/String;

.field public typeSettingKind:J

.field public underline:Z

.field public underlineOffset:D

.field public underlineWidth:D

.field public useEffectDefaultColor:Z


# direct methods
.method public constructor <init>()V
    .registers 9

    .line 53
    invoke-direct {p0}, Lcom/ss/android/vesdk/filterparam/pub/VEInfoStickerFilter;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->text:Ljava/lang/String;

    const-wide/high16 v1, 0x4030000000000000L    # 16.0

    .line 11
    iput-wide v1, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->fontSize:D

    const-wide/16 v1, 0x1

    .line 12
    iput-wide v1, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->alignType:J

    .line 13
    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->textColor:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->effectPath:Ljava/lang/String;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 15
    iput-wide v1, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->textAlpha:D

    .line 16
    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->backgroundColor:Ljava/lang/String;

    .line 17
    iput-wide v1, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->backgroundAlpha:D

    const/4 v1, 0x0

    .line 18
    iput-boolean v1, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->background:Z

    const-wide/16 v2, 0x0

    .line 19
    iput-wide v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->boldWidth:D

    .line 20
    iput-boolean v1, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->shadow:Z

    .line 21
    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->shadowColor:Ljava/lang/String;

    const-wide v4, 0x3fe999999999999aL    # 0.8

    .line 22
    iput-wide v4, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->shadowAlpha:D

    const-wide v4, 0x3fefff2e48e8a71eL    # 0.9999

    .line 23
    iput-wide v4, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->shadowSmoothing:D

    .line 24
    iput-wide v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->shadowOffsetX:D

    .line 25
    iput-wide v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->shadowOffsetY:D

    .line 26
    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->outlineColor:Ljava/lang/String;

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 27
    iput-wide v4, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->outlineAlpha:D

    .line 28
    iput-boolean v1, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->outline:Z

    .line 29
    iput-wide v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->outlineWidth:D

    .line 30
    iput-wide v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->charSpacing:D

    .line 31
    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->fontPath:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->shapePath:Ljava/lang/String;

    .line 33
    iput-wide v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->innerPadding:D

    const-wide/16 v6, 0x0

    .line 34
    iput-wide v6, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->italicDegree:J

    .line 35
    iput-wide v4, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->lineMaxWidth:D

    .line 36
    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->fallbackFontPath:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->fallbackFontPathList:Ljava/lang/String;

    const-wide v4, 0x3fb999999999999aL    # 0.1

    .line 38
    iput-wide v4, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->lineGap:D

    .line 39
    iput-boolean v1, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->useEffectDefaultColor:Z

    .line 40
    iput-boolean v1, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->shapeFlipX:Z

    .line 41
    iput-boolean v1, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->shapeFlipY:Z

    .line 42
    iput-wide v6, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->typeSettingKind:J

    .line 43
    iput-boolean v1, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->underline:Z

    .line 44
    iput-wide v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->underlineOffset:D

    .line 45
    iput-wide v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->underlineWidth:D

    .line 46
    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->ktvColor:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->ktvOutlineColor:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->ktvShadowColor:Ljava/lang/String;

    .line 54
    sget-object v0, Lcom/ss/android/ttve/common/TEDefine$TEPublicFilter;->TextSticker:Lcom/ss/android/ttve/common/TEDefine$TEPublicFilter;

    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEFilter;->filterType:Lcom/ss/android/ttve/common/TEDefine$TEPublicFilter;

    return-void
.end method
