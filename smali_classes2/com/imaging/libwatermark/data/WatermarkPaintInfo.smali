.class public final Lcom/imaging/libwatermark/data/WatermarkPaintInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaging/libwatermark/data/WatermarkPaintInfo$Companion;
    }
.end annotation


# static fields
.field public static final COLOR_STYLE_SPECIAL_ONE:I = 0x1

.field public static final COLOR_STYLE_SPECIAL_TWO:I = 0x2

.field public static final COLOR_STYLE_WHITE_BG:I

.field public static final Companion:Lcom/imaging/libwatermark/data/WatermarkPaintInfo$Companion;


# instance fields
.field private colorStyle:I

.field private lensInfo:Ljava/lang/String;

.field private locationInfo:Ljava/lang/String;

.field private realDeviceName:Ljava/lang/String;

.field private showDeviceName:Ljava/lang/String;

.field private specialItemName:Ljava/lang/String;

.field private state:I

.field private timeInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->Companion:Lcom/imaging/libwatermark/data/WatermarkPaintInfo$Companion;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 9

    const-string v0, "showDeviceName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lensInfo"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locationInfo"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "realDeviceName"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->state:I

    .line 6
    iput-object p2, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->showDeviceName:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->timeInfo:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->lensInfo:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->locationInfo:Ljava/lang/String;

    .line 10
    iput p6, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->colorStyle:I

    .line 11
    iput-object p7, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->realDeviceName:Ljava/lang/String;

    .line 13
    const-string p1, ""

    iput-object p1, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->specialItemName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 11

    and-int/lit8 p9, p8, 0x2

    .line 4
    const-string v0, ""

    if-eqz p9, :cond_7

    move-object p2, v0

    :cond_7
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_c

    move-object p3, v0

    :cond_c
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_11

    move-object p4, v0

    :cond_11
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_16

    move-object p5, v0

    :cond_16
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_1b

    const/4 p6, 0x0

    :cond_1b
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_20

    move-object p7, v0

    :cond_20
    invoke-direct/range {p0 .. p7}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/imaging/libwatermark/data/WatermarkPaintInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Lcom/imaging/libwatermark/data/WatermarkPaintInfo;
    .registers 10

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_6

    iget p1, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->state:I

    :cond_6
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_c

    iget-object p2, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->showDeviceName:Ljava/lang/String;

    :cond_c
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_12

    iget-object p3, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->timeInfo:Ljava/lang/String;

    :cond_12
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_18

    iget-object p4, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->lensInfo:Ljava/lang/String;

    :cond_18
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_1e

    iget-object p5, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->locationInfo:Ljava/lang/String;

    :cond_1e
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_24

    iget p6, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->colorStyle:I

    :cond_24
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_2a

    iget-object p7, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->realDeviceName:Ljava/lang/String;

    :cond_2a
    move p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p9}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/imaging/libwatermark/data/WatermarkPaintInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->state:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->showDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->timeInfo:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->lensInfo:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->locationInfo:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()I
    .registers 1

    iget p0, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->colorStyle:I

    return p0
.end method

.method public final component7()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->realDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/imaging/libwatermark/data/WatermarkPaintInfo;
    .registers 16

    const-string p0, "showDeviceName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "timeInfo"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "lensInfo"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "locationInfo"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "realDeviceName"

    invoke-static {p7, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;

    iget v1, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->state:I

    iget v3, p1, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->state:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->showDeviceName:Ljava/lang/String;

    iget-object v3, p1, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->showDeviceName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->timeInfo:Ljava/lang/String;

    iget-object v3, p1, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->timeInfo:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->lensInfo:Ljava/lang/String;

    iget-object v3, p1, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->lensInfo:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget-object v1, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->locationInfo:Ljava/lang/String;

    iget-object v3, p1, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->locationInfo:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v2

    :cond_3f
    iget v1, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->colorStyle:I

    iget v3, p1, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->colorStyle:I

    if-eq v1, v3, :cond_46

    return v2

    :cond_46
    iget-object p0, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->realDeviceName:Ljava/lang/String;

    iget-object p1, p1, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->realDeviceName:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_51

    return v2

    :cond_51
    return v0
.end method

.method public final getColorStyle()I
    .registers 1

    .line 10
    iget p0, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->colorStyle:I

    return p0
.end method

.method public final getLensInfo()Ljava/lang/String;
    .registers 1

    .line 8
    iget-object p0, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->lensInfo:Ljava/lang/String;

    return-object p0
.end method

.method public final getLocationInfo()Ljava/lang/String;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->locationInfo:Ljava/lang/String;

    return-object p0
.end method

.method public final getRealDeviceName()Ljava/lang/String;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->realDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public final getShowDeviceName()Ljava/lang/String;
    .registers 1

    .line 6
    iget-object p0, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->showDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public final getSpecialItemName()Ljava/lang/String;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->specialItemName:Ljava/lang/String;

    return-object p0
.end method

.method public final getState()I
    .registers 1

    .line 5
    iget p0, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->state:I

    return p0
.end method

.method public final getTimeInfo()Ljava/lang/String;
    .registers 1

    .line 7
    iget-object p0, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->timeInfo:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->state:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->showDeviceName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->timeInfo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->lensInfo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->locationInfo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->colorStyle:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->realDeviceName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setColorStyle(I)V
    .registers 2

    .line 10
    iput p1, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->colorStyle:I

    return-void
.end method

.method public final setLensInfo(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->lensInfo:Ljava/lang/String;

    return-void
.end method

.method public final setLocationInfo(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object p1, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->locationInfo:Ljava/lang/String;

    return-void
.end method

.method public final setRealDeviceName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->realDeviceName:Ljava/lang/String;

    return-void
.end method

.method public final setShowDeviceName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->showDeviceName:Ljava/lang/String;

    return-void
.end method

.method public final setSpecialItemName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->specialItemName:Ljava/lang/String;

    return-void
.end method

.method public final setState(I)V
    .registers 2

    .line 5
    iput p1, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->state:I

    return-void
.end method

.method public final setTimeInfo(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->timeInfo:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",showDeviceName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->showDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",timeInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->timeInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",lensInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->lensInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",locationInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->locationInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",realDeviceName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->realDeviceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
