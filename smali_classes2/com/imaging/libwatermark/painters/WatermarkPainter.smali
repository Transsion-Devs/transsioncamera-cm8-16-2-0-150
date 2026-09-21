.class public final Lcom/imaging/libwatermark/painters/WatermarkPainter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/imaging/libwatermark/interfaces/IWatermarkPainter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaging/libwatermark/painters/WatermarkPainter$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/imaging/libwatermark/painters/WatermarkPainter$Companion;

.field private static final TAG:Ljava/lang/String; = "WatermarkPainter"


# instance fields
.field private mPainter:Lcom/imaging/libwatermark/interfaces/IWatermarkPainter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/imaging/libwatermark/painters/WatermarkPainter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/imaging/libwatermark/painters/WatermarkPainter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/imaging/libwatermark/painters/WatermarkPainter;->Companion:Lcom/imaging/libwatermark/painters/WatermarkPainter$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "realDeviceName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "NOTE"

    invoke-static {p2, v0}, Lcom/imaging/libwatermark/painters/WatermarkPainterKt;->matchDeviceName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_65

    .line 20
    const-string v0, "Infinix GT"

    invoke-static {p2, v0}, Lcom/imaging/libwatermark/painters/WatermarkPainterKt;->matchDeviceName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_65

    .line 22
    :cond_1e
    const-string v0, "CAMON"

    invoke-static {p2, v0}, Lcom/imaging/libwatermark/painters/WatermarkPainterKt;->matchDeviceName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 23
    new-instance v0, Lcom/imaging/libwatermark/painters/WatermarkPainterCamon;

    invoke-direct {v0, p1}, Lcom/imaging/libwatermark/painters/WatermarkPainterCamon;-><init>(Landroid/content/Context;)V

    goto :goto_6a

    .line 24
    :cond_2c
    const-string v0, "POVA"

    invoke-static {p2, v0}, Lcom/imaging/libwatermark/painters/WatermarkPainterKt;->matchDeviceName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 25
    new-instance v0, Lcom/imaging/libwatermark/painters/WatermarkPainterPova;

    invoke-direct {v0, p1}, Lcom/imaging/libwatermark/painters/WatermarkPainterPova;-><init>(Landroid/content/Context;)V

    goto :goto_6a

    .line 26
    :cond_3a
    const-string v0, "SPARK"

    invoke-static {p2, v0}, Lcom/imaging/libwatermark/painters/WatermarkPainterKt;->matchDeviceName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 27
    const-string v0, "TECNO POP"

    invoke-static {p2, v0}, Lcom/imaging/libwatermark/painters/WatermarkPainterKt;->matchDeviceName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    goto :goto_5f

    .line 30
    :cond_4b
    const-string v0, "ZERO"

    invoke-static {p2, v0}, Lcom/imaging/libwatermark/painters/WatermarkPainterKt;->matchDeviceName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 31
    new-instance v0, Lcom/imaging/libwatermark/painters/WatermarkPainterZero;

    invoke-direct {v0, p1}, Lcom/imaging/libwatermark/painters/WatermarkPainterZero;-><init>(Landroid/content/Context;)V

    goto :goto_6a

    .line 33
    :cond_59
    new-instance v0, Lcom/imaging/libwatermark/painters/WatermarkPainterCamon;

    invoke-direct {v0, p1}, Lcom/imaging/libwatermark/painters/WatermarkPainterCamon;-><init>(Landroid/content/Context;)V

    goto :goto_6a

    .line 29
    :cond_5f
    :goto_5f
    new-instance v0, Lcom/imaging/libwatermark/painters/WatermarkPainterSpark;

    invoke-direct {v0, p1}, Lcom/imaging/libwatermark/painters/WatermarkPainterSpark;-><init>(Landroid/content/Context;)V

    goto :goto_6a

    .line 21
    :cond_65
    :goto_65
    new-instance v0, Lcom/imaging/libwatermark/painters/WatermarkPainterNote;

    invoke-direct {v0, p1}, Lcom/imaging/libwatermark/painters/WatermarkPainterNote;-><init>(Landroid/content/Context;)V

    .line 19
    :goto_6a
    iput-object v0, p0, Lcom/imaging/libwatermark/painters/WatermarkPainter;->mPainter:Lcom/imaging/libwatermark/interfaces/IWatermarkPainter;

    .line 35
    sget-object p1, Lcom/imaging/libwatermark/utils/LogUtils;->INSTANCE:Lcom/imaging/libwatermark/utils/LogUtils;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init(),deviceName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", mPainter: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/imaging/libwatermark/painters/WatermarkPainter;->mPainter:Lcom/imaging/libwatermark/interfaces/IWatermarkPainter;

    if-eqz p0, :cond_8d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    goto :goto_8e

    :cond_8d
    const/4 p0, 0x0

    :goto_8e
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 35
    const-string p2, "WatermarkPainter"

    invoke-virtual {p1, p2, p0}, Lcom/imaging/libwatermark/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public drawWatermark(Lcom/imaging/libwatermark/data/WatermarkPaintInfo;IIZILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 10

    const-string v0, "watermarkPaintInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/imaging/libwatermark/utils/LogUtils;->INSTANCE:Lcom/imaging/libwatermark/utils/LogUtils;

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawWatermark(), watermarkInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isLandscape: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", contentHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",originBitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    const-string v2, "WatermarkPainter"

    invoke-virtual {v0, v2, v1}, Lcom/imaging/libwatermark/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object p0, p0, Lcom/imaging/libwatermark/painters/WatermarkPainter;->mPainter:Lcom/imaging/libwatermark/interfaces/IWatermarkPainter;

    if-eqz p0, :cond_4e

    invoke-interface/range {p0 .. p6}, Lcom/imaging/libwatermark/interfaces/IWatermarkPainter;->drawWatermark(Lcom/imaging/libwatermark/data/WatermarkPaintInfo;IIZILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_4e
    const/4 p0, 0x0

    return-object p0
.end method
