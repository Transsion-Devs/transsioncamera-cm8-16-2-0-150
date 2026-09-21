.class public final Lcom/gallery20/sdk/ai_art/config/EnableTPMSConfig;
.super Lcom/gallery20/sdk/ai_art/config/TPMSConfig;
.source "SourceFile"


# instance fields
.field private final enable:Z

.field private final partialAIEnable:Z

.field private final styleAIEnable:Z

.field private final travelAIEnable:Z


# direct methods
.method public constructor <init>()V
    .registers 7

    .line 41
    const-string v0, "os_gallery_ai_art_switch_config"

    invoke-direct {p0, v0}, Lcom/gallery20/sdk/ai_art/config/TPMSConfig;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/gallery20/sdk/ai_art/config/TPMSConfig;->getJson()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "style_ai_enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gallery20/sdk/ai_art/config/EnableTPMSConfig;->styleAIEnable:Z

    .line 44
    invoke-virtual {p0}, Lcom/gallery20/sdk/ai_art/config/TPMSConfig;->getJson()Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "travel_ai_enable"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/gallery20/sdk/ai_art/config/EnableTPMSConfig;->travelAIEnable:Z

    .line 46
    invoke-static {}, Lcom/gallery20/sdk/ai_art/ext/CommonExtKt;->isEE1()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_27

    move v3, v4

    goto :goto_31

    .line 47
    :cond_27
    invoke-virtual {p0}, Lcom/gallery20/sdk/ai_art/config/TPMSConfig;->getJson()Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "partial_ai_enable"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 45
    :goto_31
    iput-boolean v3, p0, Lcom/gallery20/sdk/ai_art/config/EnableTPMSConfig;->partialAIEnable:Z

    if-nez v0, :cond_3a

    if-nez v1, :cond_3a

    if-nez v3, :cond_3a

    goto :goto_44

    .line 51
    :cond_3a
    invoke-virtual {p0}, Lcom/gallery20/sdk/ai_art/config/TPMSConfig;->getJson()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "enable"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 49
    :goto_44
    iput-boolean v4, p0, Lcom/gallery20/sdk/ai_art/config/EnableTPMSConfig;->enable:Z

    return-void
.end method


# virtual methods
.method public final getEnable()Z
    .registers 1

    .line 49
    iget-boolean p0, p0, Lcom/gallery20/sdk/ai_art/config/EnableTPMSConfig;->enable:Z

    return p0
.end method

.method public final getPartialAIEnable()Z
    .registers 1

    .line 45
    iget-boolean p0, p0, Lcom/gallery20/sdk/ai_art/config/EnableTPMSConfig;->partialAIEnable:Z

    return p0
.end method

.method public final getStyleAIEnable()Z
    .registers 1

    .line 43
    iget-boolean p0, p0, Lcom/gallery20/sdk/ai_art/config/EnableTPMSConfig;->styleAIEnable:Z

    return p0
.end method

.method public final getTravelAIEnable()Z
    .registers 1

    .line 44
    iget-boolean p0, p0, Lcom/gallery20/sdk/ai_art/config/EnableTPMSConfig;->travelAIEnable:Z

    return p0
.end method
