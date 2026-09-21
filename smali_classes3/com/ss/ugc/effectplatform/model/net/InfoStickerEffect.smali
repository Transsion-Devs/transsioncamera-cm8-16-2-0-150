.class public final Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private loki_effect:Lcom/ss/ugc/effectplatform/model/Effect;

.field private source:Ljava/lang/Integer;

.field private sticker:Lcom/ss/ugc/effectplatform/model/ProviderEffect;


# direct methods
.method public constructor <init>()V
    .registers 61

    move-object/from16 v0, p0

    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v1, Lcom/ss/ugc/effectplatform/model/Effect;

    const v58, 0x1fffff

    const/16 v59, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const-wide/16 v40, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, -0x1

    invoke-direct/range {v1 .. v59}, Lcom/ss/ugc/effectplatform/model/Effect;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/UrlModel;Lcom/ss/ugc/effectplatform/model/UrlModel;Lcom/ss/ugc/effectplatform/model/UrlModel;Lcom/ss/ugc/effectplatform/model/UrlModel;ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->loki_effect:Lcom/ss/ugc/effectplatform/model/Effect;

    .line 18
    new-instance v2, Lcom/ss/ugc/effectplatform/model/ProviderEffect;

    const/16 v11, 0xff

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Lcom/ss/ugc/effectplatform/model/ProviderEffect;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->sticker:Lcom/ss/ugc/effectplatform/model/ProviderEffect;

    return-void
.end method


# virtual methods
.method public final getBindIds()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getBind_ids()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getChallenge()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getChallenge()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getChildEffects()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;"
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getChild_effects()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getChildren()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getChildren()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getClickUrl()Ljava/lang/String;
    .registers 1

    .line 133
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getSticker()Lcom/ss/ugc/effectplatform/model/ProviderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/ProviderEffect;->getClick_url()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getComposerParams()Ljava/lang/String;
    .registers 1

    .line 87
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getComposer_params()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getComposerPath()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getComposerPath()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getDesignerEncryptedId()Ljava/lang/String;
    .registers 1

    .line 75
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getDesigner_encrypted_id()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDesignerId()Ljava/lang/String;
    .registers 1

    .line 73
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getDesigner_id()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDevicePlatform()Ljava/lang/String;
    .registers 1

    .line 77
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getDevice_platform()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getEffectId()Ljava/lang/String;
    .registers 1

    .line 45
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getEffect_id()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getEffectType()Ljava/lang/Integer;
    .registers 1

    .line 69
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getEffect_type()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final getExtra()Ljava/lang/String;
    .registers 1

    .line 83
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getExtra()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getFileUrl()Lcom/ss/ugc/effectplatform/model/UrlModel;
    .registers 1

    .line 47
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getFile_url()Lcom/ss/ugc/effectplatform/model/UrlModel;

    move-result-object p0

    return-object p0
.end method

.method public final getGradeKey()Ljava/lang/String;
    .registers 1

    .line 101
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getGrade_key()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getHint()Ljava/lang/String;
    .registers 1

    .line 43
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getHint()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getHintFile()Lcom/ss/ugc/effectplatform/model/UrlModel;
    .registers 1

    .line 53
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getHint_file()Lcom/ss/ugc/effectplatform/model/UrlModel;

    move-result-object p0

    return-object p0
.end method

.method public final getHintFileFormat()Ljava/lang/Integer;
    .registers 1

    .line 55
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getHint_file_format()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final getHintIcon()Lcom/ss/ugc/effectplatform/model/UrlModel;
    .registers 1

    .line 51
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getHint_icon()Lcom/ss/ugc/effectplatform/model/UrlModel;

    move-result-object p0

    return-object p0
.end method

.method public final getIconUrl()Lcom/ss/ugc/effectplatform/model/UrlModel;
    .registers 1

    .line 49
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getIcon_url()Lcom/ss/ugc/effectplatform/model/UrlModel;

    move-result-object p0

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .registers 4

    .line 24
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->source:Ljava/lang/Integer;

    if-nez v0, :cond_5

    goto :goto_15

    .line 25
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    .line 26
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    :goto_15
    if-nez v0, :cond_18

    goto :goto_28

    .line 28
    :cond_18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_28

    .line 29
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getSticker()Lcom/ss/ugc/effectplatform/model/ProviderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/ProviderEffect;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 32
    :cond_28
    :goto_28
    const-string p0, ""

    return-object p0
.end method

.method public final getIopId()Ljava/lang/String;
    .registers 1

    .line 91
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getIop_id()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLokiEffectSource()Ljava/lang/Integer;
    .registers 1

    .line 71
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getSource()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;
    .registers 61

    move-object/from16 v0, p0

    .line 17
    iget-object v0, v0, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->loki_effect:Lcom/ss/ugc/effectplatform/model/Effect;

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    new-instance v1, Lcom/ss/ugc/effectplatform/model/Effect;

    const v58, 0x1fffff

    const/16 v59, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const-wide/16 v40, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, -0x1

    invoke-direct/range {v1 .. v59}, Lcom/ss/ugc/effectplatform/model/Effect;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/UrlModel;Lcom/ss/ugc/effectplatform/model/UrlModel;Lcom/ss/ugc/effectplatform/model/UrlModel;Lcom/ss/ugc/effectplatform/model/UrlModel;ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final getModelNames()Ljava/lang/String;
    .registers 1

    .line 123
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getModel_names()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getModelNamesSec()Ljava/lang/String;
    .registers 1

    .line 117
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getModel_names_sec()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMusic()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getMusic()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .registers 1

    .line 39
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPanel()Ljava/lang/String;
    .registers 1

    .line 113
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getPanel()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getParent()Ljava/lang/String;
    .registers 1

    .line 67
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getParent()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPath()Ljava/lang/String;
    .registers 1

    .line 135
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getSticker()Lcom/ss/ugc/effectplatform/model/ProviderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/ProviderEffect;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPtime()Ljava/lang/Long;
    .registers 3

    .line 99
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getPtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final getRecId()Ljava/lang/String;
    .registers 1

    .line 115
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getRecId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getRequirements()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getRequirements()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getRequirementsSec()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getRequirements_sec()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getResourceId()Ljava/lang/String;
    .registers 1

    .line 95
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getResource_id()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSchema()Ljava/lang/String;
    .registers 1

    .line 79
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getSchema()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSdkExtra()Ljava/lang/String;
    .registers 1

    .line 85
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getSdk_extra()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSource()Ljava/lang/Integer;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->source:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getSticker()Lcom/ss/ugc/effectplatform/model/ProviderEffect;
    .registers 12

    .line 19
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->sticker:Lcom/ss/ugc/effectplatform/model/ProviderEffect;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    new-instance v0, Lcom/ss/ugc/effectplatform/model/ProviderEffect;

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

    invoke-direct/range {v0 .. v10}, Lcom/ss/ugc/effectplatform/model/ProviderEffect;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final getStickerInfo()Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;
    .registers 1

    .line 131
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getSticker()Lcom/ss/ugc/effectplatform/model/ProviderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/ProviderEffect;->getSticker_info()Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;

    move-result-object p0

    return-object p0
.end method

.method public final getTags()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getTags()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getTagsUpdatedAt()Ljava/lang/String;
    .registers 1

    .line 61
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getTags_updated_at()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getThumbnailSticker()Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;
    .registers 1

    .line 129
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getSticker()Lcom/ss/ugc/effectplatform/model/ProviderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/ProviderEffect;->getThumbnail_sticker()Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;

    move-result-object p0

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 1

    .line 127
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getSticker()Lcom/ss/ugc/effectplatform/model/ProviderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/ProviderEffect;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTypes()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getTypes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getTypesSec()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getTypes_sec()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getUnzipPath()Ljava/lang/String;
    .registers 1

    .line 109
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getUnzipPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getZipPath()Ljava/lang/String;
    .registers 1

    .line 107
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getZipPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isBusi()Ljava/lang/Boolean;
    .registers 1

    .line 89
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->is_busi()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final isDownloaded()Ljava/lang/Boolean;
    .registers 1

    .line 111
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->isDownloaded()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final isIop()Ljava/lang/Boolean;
    .registers 1

    .line 93
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->getLoki_effect()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->is_iop()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final setLoki_effect(Lcom/ss/ugc/effectplatform/model/Effect;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->loki_effect:Lcom/ss/ugc/effectplatform/model/Effect;

    return-void
.end method

.method public final setSource(Ljava/lang/Integer;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->source:Ljava/lang/Integer;

    return-void
.end method

.method public final setSticker(Lcom/ss/ugc/effectplatform/model/ProviderEffect;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;->sticker:Lcom/ss/ugc/effectplatform/model/ProviderEffect;

    return-void
.end method
