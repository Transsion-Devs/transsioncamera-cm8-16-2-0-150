.class public final Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Styles"
.end annotation


# instance fields
.field private fill:I

.field private lineCap:Ljava/lang/String;

.field private lineDash:[F

.field private lineJoin:Ljava/lang/String;

.field private miterLimit:I

.field private stroke:I

.field private strokeWidth:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "butt"

    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->lineCap:Ljava/lang/String;

    .line 41
    const-string v0, "miter"

    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->lineJoin:Ljava/lang/String;

    const/4 v0, 0x0

    .line 47
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->lineDash:[F

    return-void
.end method


# virtual methods
.method public final getFill()I
    .registers 1

    .line 29
    iget p0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->fill:I

    return p0
.end method

.method public final getLineCap()Ljava/lang/String;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->lineCap:Ljava/lang/String;

    return-object p0
.end method

.method public final getLineDash()[F
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->lineDash:[F

    return-object p0
.end method

.method public final getLineJoin()Ljava/lang/String;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->lineJoin:Ljava/lang/String;

    return-object p0
.end method

.method public final getMiterLimit()I
    .registers 1

    .line 44
    iget p0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->miterLimit:I

    return p0
.end method

.method public final getStroke()I
    .registers 1

    .line 32
    iget p0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->stroke:I

    return p0
.end method

.method public final getStrokeWidth()F
    .registers 1

    .line 35
    iget p0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->strokeWidth:F

    return p0
.end method

.method public final setFill$com_opensource_svgaplayer(I)V
    .registers 2

    .line 30
    iput p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->fill:I

    return-void
.end method

.method public final setLineCap$com_opensource_svgaplayer(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->lineCap:Ljava/lang/String;

    return-void
.end method

.method public final setLineDash$com_opensource_svgaplayer([F)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->lineDash:[F

    return-void
.end method

.method public final setLineJoin$com_opensource_svgaplayer(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->lineJoin:Ljava/lang/String;

    return-void
.end method

.method public final setMiterLimit$com_opensource_svgaplayer(I)V
    .registers 2

    .line 45
    iput p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->miterLimit:I

    return-void
.end method

.method public final setStroke$com_opensource_svgaplayer(I)V
    .registers 2

    .line 33
    iput p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->stroke:I

    return-void
.end method

.method public final setStrokeWidth$com_opensource_svgaplayer(F)V
    .registers 2

    .line 36
    iput p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->strokeWidth:F

    return-void
.end method
