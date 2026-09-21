.class public final Lcom/imaging/libwatermark/ai_art/WatermarkExifBeanKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final newWatermarkExifBean(Ljava/lang/String;)Lcom/imaging/libwatermark/ai_art/WatermarkExifBean;
    .registers 3

    const-string v0, "aiArtTemplateName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Lcom/imaging/libwatermark/ai_art/WatermarkExifBean;

    new-instance v1, Lcom/imaging/libwatermark/ai_art/WatermarkExifBean$AIArtBean;

    invoke-direct {v1, p0}, Lcom/imaging/libwatermark/ai_art/WatermarkExifBean$AIArtBean;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/imaging/libwatermark/ai_art/WatermarkExifBean;-><init>(Lcom/imaging/libwatermark/ai_art/WatermarkExifBean$AIArtBean;)V

    return-object v0
.end method
