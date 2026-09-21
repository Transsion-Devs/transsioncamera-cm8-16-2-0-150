.class public Lcom/bef/effectsdk/text/data/TextLayoutParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/amazing/annotation/EffectKeep;
.end annotation


# instance fields
.field public backColor:I
    .annotation build Lcom/amazing/annotation/EffectKeep;
    .end annotation
.end field

.field public bitmapType:I
    .annotation build Lcom/amazing/annotation/EffectKeep;
    .end annotation
.end field

.field public familyName:Ljava/lang/String;
    .annotation build Lcom/amazing/annotation/EffectKeep;
    .end annotation
.end field

.field public fontPath:Ljava/lang/String;
    .annotation build Lcom/amazing/annotation/EffectKeep;
    .end annotation
.end field

.field public fontSize:F
    .annotation build Lcom/amazing/annotation/EffectKeep;
    .end annotation
.end field

.field public fontStyle:I
    .annotation build Lcom/amazing/annotation/EffectKeep;
    .end annotation
.end field

.field public letterSpacing:F
    .annotation build Lcom/amazing/annotation/EffectKeep;
    .end annotation
.end field

.field public lineBreakMode:I
    .annotation build Lcom/amazing/annotation/EffectKeep;
    .end annotation
.end field

.field public lineSpacingAdd:F
    .annotation build Lcom/amazing/annotation/EffectKeep;
    .end annotation
.end field

.field public lineSpacingMult:F
    .annotation build Lcom/amazing/annotation/EffectKeep;
    .end annotation
.end field

.field public lineWidth:I
    .annotation build Lcom/amazing/annotation/EffectKeep;
    .end annotation
.end field

.field public maxLine:I
    .annotation build Lcom/amazing/annotation/EffectKeep;
    .end annotation
.end field

.field public paintStyle:I
    .annotation build Lcom/amazing/annotation/EffectKeep;
    .end annotation
.end field

.field public shadowColor:I
    .annotation build Lcom/amazing/annotation/EffectKeep;
    .end annotation
.end field

.field public shadowDx:F
    .annotation build Lcom/amazing/annotation/EffectKeep;
    .end annotation
.end field

.field public shadowDy:F
    .annotation build Lcom/amazing/annotation/EffectKeep;
    .end annotation
.end field

.field public shadowRadius:F
    .annotation build Lcom/amazing/annotation/EffectKeep;
    .end annotation
.end field

.field public strokeWidth:F
    .annotation build Lcom/amazing/annotation/EffectKeep;
    .end annotation
.end field

.field public textAlign:I
    .annotation build Lcom/amazing/annotation/EffectKeep;
    .end annotation
.end field

.field public textColor:I
    .annotation build Lcom/amazing/annotation/EffectKeep;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/bef/effectsdk/text/data/TextLayoutParam;->familyName:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/bef/effectsdk/text/data/TextLayoutParam;->fontPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/bef/effectsdk/text/data/TextLayoutParam;->fontStyle:I

    const/high16 v1, 0x41800000    # 16.0f

    .line 17
    iput v1, p0, Lcom/bef/effectsdk/text/data/TextLayoutParam;->fontSize:F

    .line 19
    iput v0, p0, Lcom/bef/effectsdk/text/data/TextLayoutParam;->textColor:I

    .line 21
    iput v0, p0, Lcom/bef/effectsdk/text/data/TextLayoutParam;->backColor:I

    .line 23
    iput v0, p0, Lcom/bef/effectsdk/text/data/TextLayoutParam;->paintStyle:I

    const/4 v1, 0x0

    .line 25
    iput v1, p0, Lcom/bef/effectsdk/text/data/TextLayoutParam;->strokeWidth:F

    .line 28
    iput v1, p0, Lcom/bef/effectsdk/text/data/TextLayoutParam;->shadowRadius:F

    .line 30
    iput v1, p0, Lcom/bef/effectsdk/text/data/TextLayoutParam;->shadowDx:F

    .line 32
    iput v1, p0, Lcom/bef/effectsdk/text/data/TextLayoutParam;->shadowDy:F

    .line 34
    iput v0, p0, Lcom/bef/effectsdk/text/data/TextLayoutParam;->shadowColor:I

    .line 37
    iput v0, p0, Lcom/bef/effectsdk/text/data/TextLayoutParam;->lineWidth:I

    .line 39
    iput v1, p0, Lcom/bef/effectsdk/text/data/TextLayoutParam;->letterSpacing:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 41
    iput v2, p0, Lcom/bef/effectsdk/text/data/TextLayoutParam;->lineSpacingMult:F

    .line 43
    iput v1, p0, Lcom/bef/effectsdk/text/data/TextLayoutParam;->lineSpacingAdd:F

    .line 45
    iput v0, p0, Lcom/bef/effectsdk/text/data/TextLayoutParam;->textAlign:I

    .line 47
    iput v0, p0, Lcom/bef/effectsdk/text/data/TextLayoutParam;->maxLine:I

    .line 49
    iput v0, p0, Lcom/bef/effectsdk/text/data/TextLayoutParam;->lineBreakMode:I

    return-void
.end method
