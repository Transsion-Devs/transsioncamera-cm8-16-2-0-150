.class public final Lcom/imaging/libwatermark/WatermarkParam;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private colorStyle:Lcom/imaging/libwatermark/BackgroundStyle;

.field private lensInfo:Ljava/lang/String;

.field private locationInfo:Ljava/lang/String;

.field private specialItemName:Ljava/lang/String;

.field private timeInfo:Ljava/lang/String;

.field private watermarkState:Lcom/imaging/libwatermark/WatermarkState;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/imaging/libwatermark/WatermarkParam;->specialItemName:Ljava/lang/String;

    .line 16
    sget-object v1, Lcom/imaging/libwatermark/WatermarkState;->ON_ALL:Lcom/imaging/libwatermark/WatermarkState;

    iput-object v1, p0, Lcom/imaging/libwatermark/WatermarkParam;->watermarkState:Lcom/imaging/libwatermark/WatermarkState;

    .line 17
    iput-object v0, p0, Lcom/imaging/libwatermark/WatermarkParam;->timeInfo:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/imaging/libwatermark/WatermarkParam;->lensInfo:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/imaging/libwatermark/WatermarkParam;->locationInfo:Ljava/lang/String;

    .line 20
    sget-object v0, Lcom/imaging/libwatermark/BackgroundStyle;->WHITE:Lcom/imaging/libwatermark/BackgroundStyle;

    iput-object v0, p0, Lcom/imaging/libwatermark/WatermarkParam;->colorStyle:Lcom/imaging/libwatermark/BackgroundStyle;

    return-void
.end method


# virtual methods
.method public final getColorStyle()Lcom/imaging/libwatermark/BackgroundStyle;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/imaging/libwatermark/WatermarkParam;->colorStyle:Lcom/imaging/libwatermark/BackgroundStyle;

    return-object p0
.end method

.method public final getLensInfo()Ljava/lang/String;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/imaging/libwatermark/WatermarkParam;->lensInfo:Ljava/lang/String;

    return-object p0
.end method

.method public final getLocationInfo()Ljava/lang/String;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/imaging/libwatermark/WatermarkParam;->locationInfo:Ljava/lang/String;

    return-object p0
.end method

.method public final getSpecialItemName()Ljava/lang/String;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/imaging/libwatermark/WatermarkParam;->specialItemName:Ljava/lang/String;

    return-object p0
.end method

.method public final getTimeInfo()Ljava/lang/String;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/imaging/libwatermark/WatermarkParam;->timeInfo:Ljava/lang/String;

    return-object p0
.end method

.method public final getWatermarkState()Lcom/imaging/libwatermark/WatermarkState;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/imaging/libwatermark/WatermarkParam;->watermarkState:Lcom/imaging/libwatermark/WatermarkState;

    return-object p0
.end method

.method public final setColorStyle(Lcom/imaging/libwatermark/BackgroundStyle;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/imaging/libwatermark/WatermarkParam;->colorStyle:Lcom/imaging/libwatermark/BackgroundStyle;

    return-void
.end method

.method public final setLensInfo(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/imaging/libwatermark/WatermarkParam;->lensInfo:Ljava/lang/String;

    return-void
.end method

.method public final setLocationInfo(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/imaging/libwatermark/WatermarkParam;->locationInfo:Ljava/lang/String;

    return-void
.end method

.method public final setSpecialItemName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/imaging/libwatermark/WatermarkParam;->specialItemName:Ljava/lang/String;

    return-void
.end method

.method public final setTimeInfo(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/imaging/libwatermark/WatermarkParam;->timeInfo:Ljava/lang/String;

    return-void
.end method

.method public final setWatermarkState(Lcom/imaging/libwatermark/WatermarkState;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/imaging/libwatermark/WatermarkParam;->watermarkState:Lcom/imaging/libwatermark/WatermarkState;

    return-void
.end method
