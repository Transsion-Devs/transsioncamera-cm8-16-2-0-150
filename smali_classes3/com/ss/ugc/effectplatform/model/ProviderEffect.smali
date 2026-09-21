.class public Lcom/ss/ugc/effectplatform/model/ProviderEffect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;
    }
.end annotation


# instance fields
.field private click_url:Ljava/lang/String;

.field private extra:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private sticker:Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;

.field private thumbnail_sticker:Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;

.field private title:Ljava/lang/String;

.field private user_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 12

    .line 0
    const/16 v9, 0xff

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/ss/ugc/effectplatform/model/ProviderEffect;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffect;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffect;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffect;->user_name:Ljava/lang/String;

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffect;->thumbnail_sticker:Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;

    iput-object p5, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffect;->sticker:Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;

    iput-object p6, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffect;->click_url:Ljava/lang/String;

    iput-object p7, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffect;->path:Ljava/lang/String;

    iput-object p8, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffect;->extra:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 12

    and-int/lit8 p10, p9, 0x1

    if-eqz p10, :cond_6

    .line 32
    const-string p1, ""

    :cond_6
    and-int/lit8 p10, p9, 0x2

    const/4 v0, 0x0

    if-eqz p10, :cond_c

    move-object p2, v0

    :cond_c
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_11

    move-object p3, v0

    :cond_11
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_16

    move-object p4, v0

    :cond_16
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_1b

    move-object p5, v0

    :cond_1b
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_20

    move-object p6, v0

    :cond_20
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_25

    move-object p7, v0

    :cond_25
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_33

    move-object p10, v0

    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    goto :goto_3c

    :cond_33
    move-object p10, p8

    move-object p9, p7

    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 47
    :goto_3c
    invoke-direct/range {p2 .. p10}, Lcom/ss/ugc/effectplatform/model/ProviderEffect;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getClick_url()Ljava/lang/String;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffect;->click_url:Ljava/lang/String;

    return-object p0
.end method

.method public getExtra()Ljava/lang/String;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffect;->extra:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffect;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffect;->path:Ljava/lang/String;

    return-object p0
.end method

.method public final getSticker_info()Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffect;->sticker:Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;

    return-object p0
.end method

.method public getThumbnail_sticker()Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffect;->thumbnail_sticker:Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffect;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getUser_name()Ljava/lang/String;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffect;->user_name:Ljava/lang/String;

    return-object p0
.end method

.method public setClick_url(Ljava/lang/String;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffect;->click_url:Ljava/lang/String;

    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffect;->extra:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffect;->id:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffect;->path:Ljava/lang/String;

    return-void
.end method

.method public final setSticker_info(Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffect;->sticker:Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;

    return-void
.end method

.method public setThumbnail_sticker(Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffect;->thumbnail_sticker:Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffect;->title:Ljava/lang/String;

    return-void
.end method

.method public setUser_name(Ljava/lang/String;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffect;->user_name:Ljava/lang/String;

    return-void
.end method
