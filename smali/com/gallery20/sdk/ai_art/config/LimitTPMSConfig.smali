.class public final Lcom/gallery20/sdk/ai_art/config/LimitTPMSConfig;
.super Lcom/gallery20/sdk/ai_art/config/TPMSConfig;
.source "SourceFile"


# instance fields
.field private final limit:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 62
    const-string v0, "os_gallery_ai_art_limit"

    invoke-direct {p0, v0}, Lcom/gallery20/sdk/ai_art/config/TPMSConfig;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/gallery20/sdk/ai_art/config/TPMSConfig;->getJson()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "limit"

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/gallery20/sdk/ai_art/config/LimitTPMSConfig;->limit:I

    return-void
.end method


# virtual methods
.method public final getLimit()I
    .registers 1

    .line 64
    iget p0, p0, Lcom/gallery20/sdk/ai_art/config/LimitTPMSConfig;->limit:I

    return p0
.end method
