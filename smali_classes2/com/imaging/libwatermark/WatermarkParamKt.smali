.class public final Lcom/imaging/libwatermark/WatermarkParamKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final toSeries(Ljava/lang/String;)Lcom/imaging/libwatermark/Series;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    const-string v0, "NOTE"

    invoke-static {p0, v0}, Lcom/imaging/libwatermark/painters/WatermarkPainterKt;->matchDeviceName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object p0, Lcom/imaging/libwatermark/Series;->NOTE:Lcom/imaging/libwatermark/Series;

    return-object p0

    .line 51
    :cond_10
    const-string v0, "CAMON"

    invoke-static {p0, v0}, Lcom/imaging/libwatermark/painters/WatermarkPainterKt;->matchDeviceName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object p0, Lcom/imaging/libwatermark/Series;->CAMON:Lcom/imaging/libwatermark/Series;

    return-object p0

    .line 52
    :cond_1b
    const-string v0, "POVA"

    invoke-static {p0, v0}, Lcom/imaging/libwatermark/painters/WatermarkPainterKt;->matchDeviceName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object p0, Lcom/imaging/libwatermark/Series;->POVA:Lcom/imaging/libwatermark/Series;

    return-object p0

    .line 53
    :cond_26
    const-string v0, "SPARK"

    invoke-static {p0, v0}, Lcom/imaging/libwatermark/painters/WatermarkPainterKt;->matchDeviceName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    sget-object p0, Lcom/imaging/libwatermark/Series;->SPARK:Lcom/imaging/libwatermark/Series;

    return-object p0

    .line 54
    :cond_31
    const-string v0, "ZERO"

    invoke-static {p0, v0}, Lcom/imaging/libwatermark/painters/WatermarkPainterKt;->matchDeviceName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    sget-object p0, Lcom/imaging/libwatermark/Series;->ZERO:Lcom/imaging/libwatermark/Series;

    return-object p0

    .line 55
    :cond_3c
    const-string v0, "HOT"

    invoke-static {p0, v0}, Lcom/imaging/libwatermark/painters/WatermarkPainterKt;->matchDeviceName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    sget-object p0, Lcom/imaging/libwatermark/Series;->HOT:Lcom/imaging/libwatermark/Series;

    return-object p0

    .line 56
    :cond_47
    const-string v0, "TECNO POP"

    invoke-static {p0, v0}, Lcom/imaging/libwatermark/painters/WatermarkPainterKt;->matchDeviceName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    sget-object p0, Lcom/imaging/libwatermark/Series;->POP:Lcom/imaging/libwatermark/Series;

    return-object p0

    .line 57
    :cond_52
    const-string v0, "Infinix GT"

    invoke-static {p0, v0}, Lcom/imaging/libwatermark/painters/WatermarkPainterKt;->matchDeviceName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    sget-object p0, Lcom/imaging/libwatermark/Series;->GT:Lcom/imaging/libwatermark/Series;

    return-object p0

    .line 58
    :cond_5d
    const-string v0, "XXX"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_68

    sget-object p0, Lcom/imaging/libwatermark/Series;->FANS:Lcom/imaging/libwatermark/Series;

    return-object p0

    :cond_68
    const/4 p0, 0x0

    return-object p0
.end method
