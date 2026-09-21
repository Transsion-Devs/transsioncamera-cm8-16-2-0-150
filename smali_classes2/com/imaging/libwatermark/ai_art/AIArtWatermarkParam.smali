.class public final Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final itemName:Ljava/lang/String;

.field private final proWatermarkOn:Z

.field private final realDeviceName:Ljava/lang/String;

.field private final showDeviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "itemName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "showDeviceName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "realDeviceName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->itemName:Ljava/lang/String;

    .line 5
    iput-boolean p2, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->proWatermarkOn:Z

    .line 6
    iput-object p3, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->showDeviceName:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->realDeviceName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_6

    .line 7
    const-string p4, ""

    .line 3
    :cond_6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->itemName:Ljava/lang/String;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-boolean p2, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->proWatermarkOn:Z

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-object p3, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->showDeviceName:Ljava/lang/String;

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->realDeviceName:Ljava/lang/String;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->copy(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->itemName:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Z
    .registers 1

    iget-boolean p0, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->proWatermarkOn:Z

    return p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->showDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->realDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;
    .registers 5

    const-string p0, "itemName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "showDeviceName"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "realDeviceName"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    iget-object v1, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->itemName:Ljava/lang/String;

    iget-object v3, p1, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->itemName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-boolean v1, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->proWatermarkOn:Z

    iget-boolean v3, p1, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->proWatermarkOn:Z

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->showDeviceName:Ljava/lang/String;

    iget-object v3, p1, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->showDeviceName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object p0, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->realDeviceName:Ljava/lang/String;

    iget-object p1, p1, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->realDeviceName:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_34

    return v2

    :cond_34
    return v0
.end method

.method public final getItemName()Ljava/lang/String;
    .registers 1

    .line 4
    iget-object p0, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->itemName:Ljava/lang/String;

    return-object p0
.end method

.method public final getProWatermarkOn()Z
    .registers 1

    .line 5
    iget-boolean p0, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->proWatermarkOn:Z

    return p0
.end method

.method public final getRealDeviceName()Ljava/lang/String;
    .registers 1

    .line 7
    iget-object p0, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->realDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public final getShowDeviceName()Ljava/lang/String;
    .registers 1

    .line 6
    iget-object p0, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->showDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->itemName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->proWatermarkOn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->showDeviceName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->realDeviceName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AIArtWatermarkParam(itemName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->itemName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", proWatermarkOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->proWatermarkOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showDeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->showDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", realDeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->realDeviceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
