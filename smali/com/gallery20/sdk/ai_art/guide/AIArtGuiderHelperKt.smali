.class public final Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KEY_HAS_SHOW_AI_ART_GUIDE:Ljava/lang/String; = "has_show_ai_art_guide"

.field private static final TAG:Ljava/lang/String; = "AIArtGuiderHelper"

.field private static final cameraBanners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gallery20/sdk/ai_art/guide/Banner;",
            ">;"
        }
    .end annotation
.end field

.field private static final galleryBanners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gallery20/sdk/ai_art/guide/Banner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 25
    new-instance v0, Lcom/gallery20/sdk/ai_art/guide/Banner;

    sget v1, Lcom/gallery20/sdk/ai_art/R$string;->ai_art_title_style:I

    sget v2, Lcom/gallery20/sdk/ai_art/R$string;->ai_art_guide_style_description_camera:I

    sget v3, Lcom/gallery20/sdk/ai_art/R$string;->ai_art_guide_hint_camera:I

    sget v4, Lcom/gallery20/sdk/ai_art/R$drawable;->img_ai_art_guide_style:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/gallery20/sdk/ai_art/guide/Banner;-><init>(IIII)V

    .line 26
    new-instance v1, Lcom/gallery20/sdk/ai_art/guide/Banner;

    sget v2, Lcom/gallery20/sdk/ai_art/R$string;->ai_art_title_travel:I

    sget v3, Lcom/gallery20/sdk/ai_art/R$string;->ai_art_guide_travel_description_gallery:I

    sget v4, Lcom/gallery20/sdk/ai_art/R$string;->ai_art_guide_hint_gallery:I

    sget v5, Lcom/gallery20/sdk/ai_art/R$drawable;->img_ai_art_guide_travel:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/gallery20/sdk/ai_art/guide/Banner;-><init>(IIII)V

    filled-new-array {v0, v1}, [Lcom/gallery20/sdk/ai_art/guide/Banner;

    move-result-object v0

    .line 24
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 28
    invoke-static {}, Lcom/gallery20/sdk/ai_art/ext/CommonExtKt;->isEE1()Z

    move-result v1

    if-nez v1, :cond_38

    .line 29
    new-instance v1, Lcom/gallery20/sdk/ai_art/guide/Banner;

    sget v2, Lcom/gallery20/sdk/ai_art/R$string;->ai_art_title_part:I

    sget v3, Lcom/gallery20/sdk/ai_art/R$string;->ai_art_guide_part_description_camera:I

    sget v4, Lcom/gallery20/sdk/ai_art/R$string;->ai_art_guide_hint_camera:I

    sget v5, Lcom/gallery20/sdk/ai_art/R$drawable;->img_ai_art_guide_part:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/gallery20/sdk/ai_art/guide/Banner;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_38
    sput-object v0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelperKt;->galleryBanners:Ljava/util/List;

    .line 37
    new-instance v0, Lcom/gallery20/sdk/ai_art/guide/Banner;

    sget v1, Lcom/gallery20/sdk/ai_art/R$string;->ai_art_title_style:I

    sget v2, Lcom/gallery20/sdk/ai_art/R$string;->ai_art_guide_style_description_camera:I

    sget v3, Lcom/gallery20/sdk/ai_art/R$string;->ai_art_guide_hint_camera:I

    sget v4, Lcom/gallery20/sdk/ai_art/R$drawable;->img_ai_art_guide_style:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/gallery20/sdk/ai_art/guide/Banner;-><init>(IIII)V

    filled-new-array {v0}, [Lcom/gallery20/sdk/ai_art/guide/Banner;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 38
    invoke-static {}, Lcom/gallery20/sdk/ai_art/ext/CommonExtKt;->isEE1()Z

    move-result v1

    if-nez v1, :cond_65

    .line 39
    new-instance v1, Lcom/gallery20/sdk/ai_art/guide/Banner;

    sget v2, Lcom/gallery20/sdk/ai_art/R$string;->ai_art_title_part:I

    sget v3, Lcom/gallery20/sdk/ai_art/R$string;->ai_art_guide_part_description_camera:I

    sget v4, Lcom/gallery20/sdk/ai_art/R$string;->ai_art_guide_hint_camera:I

    sget v5, Lcom/gallery20/sdk/ai_art/R$drawable;->img_ai_art_guide_part:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/gallery20/sdk/ai_art/guide/Banner;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_65
    sput-object v0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelperKt;->cameraBanners:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getCameraBanners$p()Ljava/util/List;
    .registers 1

    .line 1
    sget-object v0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelperKt;->cameraBanners:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getGalleryBanners$p()Ljava/util/List;
    .registers 1

    .line 1
    sget-object v0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelperKt;->galleryBanners:Ljava/util/List;

    return-object v0
.end method
